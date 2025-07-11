import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ShareService {
  static Future<void> shareWidgetAsImage(
    BuildContext context,
    Widget widget,
  ) async {
    final boundaryKey = GlobalKey();

    // Build an off-screen widget with RepaintBoundary
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

    // Wait for the widget to be rendered
    await Future.delayed(Duration(milliseconds: 300));

    // Capture as image
    final boundary =
        boundaryKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();

    overlay.remove(); // Clean up the overlay

    // Save to file
    final tempDir = await getTemporaryDirectory();
    final file = await File('${tempDir.path}/shared_widget.png').create();
    await file.writeAsBytes(pngBytes);

    // Share
    await Share.shareXFiles([
      XFile(file.path),
    ], text: 'Shared from my Flutter app');
  }
}
