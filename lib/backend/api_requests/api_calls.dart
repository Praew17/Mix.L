import 'api_manager.dart';

Future<dynamic> googleClassromCall({
  String id = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'google classrom',
    apiUrl: 'https://classroom.googleapis.com/v1/courses/{id}',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'id': id,
    },
    returnResponse: true,
  );
}
