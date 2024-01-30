import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'failure.dart';

typedef JSON = Map<String, dynamic>;
typedef FailureOrJSON = Either<Failure, JSON>;

class DioClient {
  final String url;
  dynamic data;

  DioClient({required this.url, this.data});

  final dio = Dio();

  JSON convertPayloadToJson(dynamic data) {
    if (data is List<dynamic>) {
      return {'data': data};
    } else if (data is int) {
      return {'data': data};
    }
    return data;
  }

  Future<FailureOrJSON> post() async {
    dynamic response;
    try {
      response = await dio.post(
        url,
        data: data,
      );
      if (response.statusCode == 200 && response.data['result'] != null) {
        if (response.data['result']['success']) {
          JSON convertedJson =
          convertPayloadToJson(response.data['result']['data']);
          convertedJson['message'] = response.data['result']['message'];
          return Right(convertedJson);
        } else {
          return Left(NoInternet(message: response.data['result']['message']));
        }
      } else if (response.data['error'] != null) {
        return Left(
            NoInternet(message: response.data['error']['data']['message']));
      }
      return Left(NoInternet(message: 'Server Error'));
    } on DioError catch (err) {
      if (err.response?.statusCode != null) {
        return Left(NoInternet(message: err.message ?? "Unknown error"));
      }
      return Left(NoInternet(message: "Please Check Internet Connection"));
    } on Exception catch (err) {
      return Left(NoInternet(message: '$err'));
    } on Error catch (err) {
      return Left(NoInternet(message: '$err'));
    }
  }
}