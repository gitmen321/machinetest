import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
  baseUrl: 'https://ajcjewel.com:4000/api',
  headers: {
    'Authorization': 'your_auth_token_here',
  },
));

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await dio.post(
      '/global-gallery/list',
      data: {
        "statusArray": [1],
        "screenType": [],
        "responseFormat": [],
        "globalGalleryIds": [],
        "categoryIds": [],
        "docTypes": [],
        "types": [],
        "limit": 10,
        "skip": 0,
        "searchingText": "",
      },
    );
    return response.data;
  } catch (e) {
    print('Error: $e');
    return null;
  }
}
