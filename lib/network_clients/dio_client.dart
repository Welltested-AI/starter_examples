import 'package:dio/dio.dart';
import 'package:welltested_annotation/welltested_annotation.dart';

@Welltested()
class DioClient {
  final Dio dioClient;

  DioClient(this.dioClient);

  Future<String?> testEndpoint() async {
    const String testEndpointUrl =
        'https://example.com/testEndpoint'; // Specify the test endpoint URL
    final Uri uri =
        Uri.parse(testEndpointUrl); // Parse the URL into a Uri object
    final Response<String> response = await dioClient
        .get(uri.toString()); // Make a GET request using the Dio client
    final String? responseBody =
        response.data; // Get the response body as a string
    return responseBody; // Return the response body as a string
  }
}
