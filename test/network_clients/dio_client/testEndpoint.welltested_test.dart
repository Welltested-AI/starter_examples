import 'testEndpoint.welltested_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:starter_examples/network_clients/dio_client.dart';

@GenerateMocks([Dio])
void main() {
  group('DioClient', () {
    final dioMock = MockDio();
    final dioClient = DioClient(dioMock);

    test('returns a string when the API call is successful', () async {
      // Arrange
      final response = Response<String>(
        data: 'Test response',
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );
      when(dioMock.get(any)).thenAnswer((_) async => response);

      // Act
      final result = await dioClient.testEndpoint();

      // Assert
      expect(result, 'Test response');
    });

    test('throws an exception when the API call fails', () async {
      // Arrange
      when(dioMock.get(any)).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
      ));

      // Act & Assert
      expect(() => dioClient.testEndpoint(), throwsA(isA<DioException>()));
    });
  });
}
