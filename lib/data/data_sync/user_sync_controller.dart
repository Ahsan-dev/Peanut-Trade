
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:peanut_trade/core/constants.dart';
import 'package:peanut_trade/data/models/responses/login_response.dart';
import 'package:peanut_trade/data/models/user_account.dart';
import 'package:peanut_trade/data/network/api_url.dart';
import 'package:peanut_trade/data/network/dio_client.dart';
import '../local_storage/repository/repository_factory.dart';
import '../network/failure.dart';

typedef FailureOrLoggedIn = Either<Failure, LoginResponse>;
typedef FailureOrUserAccount = Either<Failure, UserAccount>;
typedef FailureOrString = Either<Failure, String>;

class UserSyncController {


  //User Login
  Future<FailureOrLoggedIn> login(int login, String password) {
    Future<FailureOrJSON> result =
        DioClient(
            url: ApiUrls.getLoginUrl,
            data: {
              "login":login,
              "password":password
            }
        ).post();
    return result.then((value) => _parseDataOnLogin(value, login));

  }

  FailureOrLoggedIn _parseDataOnLogin(FailureOrJSON failureOrJSON, int login) {
    return failureOrJSON.fold(
        (failure) {
          if (kDebugMode) {
            print("Failure occured is: ${failure.message}");
          }
          return Left(failure);
        },
        (json) {
          LoginResponse response = LoginResponse.fromJson(json);
          print("Your token is: ${response.token}");
          saveTokenIntoHive(response.token!, login);
          return Right(response);
        }
    );
  }

  Future<void> saveTokenIntoHive(String token, int login) async{
    var box = Hive.box(Constants.TOKEN_BOX_KEY);
    box.put(Constants.TOKEN_KEY, token);
    box.put(Constants.LOGIN_KEY, login);
  }


  //Get User Account
  Future<FailureOrUserAccount> getUserAccount() async{

    var login = Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.LOGIN_KEY);
    var token = Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.TOKEN_KEY);

    print("While fetching user: login: ${login}, token: ${token}");
    Future<FailureOrJSON> result =
        DioClient(
            url: ApiUrls.getUserAccountUrl,
            data: {
              "login": login,
              "token": token
            }
        ).post();

    return result.then((value) => _perseOnGettingUser(value, login));
  }

  FailureOrUserAccount _perseOnGettingUser(FailureOrJSON failureOrJSON, login) {
    return failureOrJSON.fold(
        (failure) {
          print("Failure is: ${failure.message}");
          return Left(failure);
        },
        (json) {
          UserAccount user = UserAccount.fromJson(json);
          _storeUser(user, login);
          print("User name: ${user.name}");
          return Right(user);
        }
    );
  }


  void _storeUser(UserAccount user, login) async{
    RepoFactory.userAccount.deleteAll();
    RepoFactory.userAccount.createWithStringKey("$login", user);
  }


  //Get Phone with Last four digits
  Future<FailureOrString> getLastFourDigitPhone() async{
    var login = Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.LOGIN_KEY);
    var token = Hive.box(Constants.TOKEN_BOX_KEY).get(Constants.TOKEN_KEY);
    Future<FailureOrJSON> result = DioClient(
      url: ApiUrls.getLastFourDigitPhoneUrl,
      data: {
        "login": login,
        "token": token
      }
    ).post();
    return result.then((value) => _parseOnGettingPhone(value));
  }

  FailureOrString _parseOnGettingPhone(FailureOrJSON failureOrJSON) {
    return failureOrJSON.fold(
        (failure) {
          if (kDebugMode) {
            print("Failure on getting last four digits: $failure");
          }
          return Left(failure);
        },
        (json) {
          if (kDebugMode) {
            print("Phone JSON: ${json.toString()}");
          }
          _storePhone(json["data"]);
          return Right(json["data"]);
        });
  }

  void _storePhone(String phone) {
    var box = Hive.box(Constants.TOKEN_BOX_KEY);
    box.put(Constants.PHONE_KEY, phone);
  }

}