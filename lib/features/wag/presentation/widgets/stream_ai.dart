import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dummy/api/storage_key.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/di/injection.dart';
import 'package:dummy/service/app_http_service.dart';
import 'package:dummy/service/local_storage_service.dart';
import '../../../../api/api.dart' as api;

class SSEEvent {
  final String? event;
  final String? data;

  SSEEvent({this.event, this.data});
}

Stream<SSEEvent> listenSSEWithDio() async* {
  LogUtility.warning("listenSSEWithDio");

  final response = await getIt<AppHttp>().stream(path: api.aiStream);

  yield* response.fold(
    (error) async* {
      LogUtility.error(error.message);
      yield SSEEvent(event: "error", data: error.toString());
    },
    (lineStream) async* {
      // Here we receive Stream<String> lineStream
      yield* _parseSSE(lineStream);
    },
  );
}

// Stream<SSEEvent> listenSSEWithDio() async{
//   LogUtility.warning("listenSSEWithDio");
//   final stream = await  getIt<AppHttp>().stream(path: api.aiStream);
//   return response.fold(
//     (error) async* {
//       LogUtility.error(error);
//       yield SSEEvent(event: "error", data: error.toString());
//     },
//     (lineStream) async* {
//       // Here we receive Stream<String> lineStream
//       yield* _parseSSE(lineStream);
//     },
//   );
// final dio = Dio();
// final token = getIt<LocalStorage>().read(StorageKey.token);
// final response = await dio.get<ResponseBody>(
//   api.aiStream,
//   options: Options(
//     responseType: ResponseType.stream,
//     headers: {
//       "Authorization": "Bearer $token",
//       'Accept': 'text/event-stream',
//       'Cache-Control': 'no-cache',
//       'Connection': 'keep-alive',
//     },
//   ),
// );

// String? currentEvent;

// final stream = response.data!.stream
//     .map((bytes) => bytes.toList()) // <-- FIX ADDED
//     .transform(utf8.decoder)
//     .transform(const LineSplitter());
// LogUtility.warning('STREAM' + stream.toString());
// await for (final line in stream) {
//   LogUtility.warning('LINE' + line);
//   if (line.startsWith("event:")) {
//     currentEvent = line.substring(6).trim();
//   } else if (line.startsWith("data:")) {
//     yield SSEEvent(event: currentEvent, data: line.substring(5).trim());
//   }
// }
// }
Stream<SSEEvent> _parseSSE(Stream<String> stream) async* {
  String? currentEvent;

  await for (final line in stream) {
    LogUtility.warning('LINE' + line);
    if (line.startsWith("event:")) {
      currentEvent = line.substring(6).trim();
    } else if (line.startsWith("data:")) {
      yield SSEEvent(event: currentEvent, data: line.substring(5).trim());
    }
  }
}
