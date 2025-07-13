import 'dart:io';
import 'dart:ui' as ui;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ShareService {
  static Future<void> shareWidgetAsImage(
    BuildContext context,
    Widget widget, {
    String? fileName,
    String? text,
  }) async {
    final boundaryKey = GlobalKey();

    final overlay = OverlayEntry(
      builder:
          (context) => Material(
            color: Colors.transparent,
            child: Center(
              child: RepaintBoundary(key: boundaryKey, child: widget),
            ),
          ),
    );

    Overlay.of(context).insert(overlay);

    await Future.delayed(Duration(milliseconds: 300));

    final boundary =
        boundaryKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();

    overlay.remove();

    final tempDir = await getTemporaryDirectory();
    final file =
        await File('${tempDir.path}/${fileName ?? "doomi"}.png').create();
    await file.writeAsBytes(pngBytes);

    await Share.shareXFiles([XFile(file.path)], text: '$text');
  }

  static Future<void> shareByUrl(
    String url, {
    String? fileName,
    String? text,
  }) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        throw Exception('Failed to download file');
      }

      final tempDir = await getTemporaryDirectory();

      final name = fileName ?? url.split('/').last;
      final file = File('${tempDir.path}/$name');

      await file.writeAsBytes(response.bodyBytes);

      await Share.shareXFiles([XFile(file.path)], text: '$text');
    } catch (e) {
      print('Error in shareByUrl: $e');
      rethrow;
    }
  }
}
