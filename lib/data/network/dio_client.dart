import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:peanut_trade/data/network/logging_interceptor.dart';
import 'failure.dart';

typedef JSON = Map<String, dynamic>;
typedef FailureOrJSON = Either<Failure, JSON>;

class DioClient {
  final String url;
  dynamic data;
  final dio = Dio();

  DioClient({required this.url, this.data}){
    dio
      .httpClientAdapter;

    dio.interceptors.add(LoggingInterceptor());
  }

  JSON convertPayloadToJson(dynamic data) {
    if (data is List<dynamic>) {
      return {'data': data};
    } else if (data is int) {
      return {'data': data};
    }else if (data is String){
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
      if (response.statusCode == 200) {
        JSON convertedJson =
        convertPayloadToJson(response.data);
        //convertedJson['message'] = response.data['result']['message'];
        return Right(convertedJson);
      }else if(response.statusCode == 403){

      }
      else if (response.data['error'] != null) {
        return Left(
            NoInternet(message: response.data['error']['data']['message']));
      }
      return Left(NoInternet(message: 'Server Error'));
    } on DioException catch (err) {
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