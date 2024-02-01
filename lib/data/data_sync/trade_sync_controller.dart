import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:peanut_trade/data/network/api_url.dart';
import 'package:peanut_trade/data/network/dio_client.dart';

import '../../core/constants.dart';
import '../models/open_trade.dart';
import '../network/failure.dart';

typedef FailureOrTrades = Either<Failure, List<OpenTrade>>;

class TradeSyncController {
  Future<FailureOrTrades> getAllTrades() async {

    var login = Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.LOGIN_KEY);
    var token = Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.TOKEN_KEY);

    print("While fetching user: login: ${login}, token: ${token}");
    
    Future<FailureOrJSON> result = 
            DioClient(
                url: ApiUrls.getOpenTradesListUrl,
                data: {
                  "login": login,
                  "token": token
                }
            ).post();
    return result.then((value) => _perseOnTrades(value));
  }
  
  FailureOrTrades _perseOnTrades(FailureOrJSON failureOrJSON) {
    return failureOrJSON.fold(
      (fail) {
        return Left(fail);
      }, 
      (json){
        print("JSOn: ${json.toString()}");
        List<OpenTrade> openTrades = _listOfTrades(json["data"]);
        return Right(openTrades);
      });
  }

  List<OpenTrade> _listOfTrades(tradeJson) {

    return List<OpenTrade>.from(tradeJson.map((x) => OpenTrade.fromJson(x)));
  }
}