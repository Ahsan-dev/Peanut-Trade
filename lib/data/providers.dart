import 'package:get/get.dart';
import 'package:peanut_trade/data/local_storage/repository/repository_factory.dart';
import 'package:peanut_trade/data/models/user_account.dart';

class UserProvider {
  UserAccount? provideUser() {
    print("Length of users: ${RepoFactory.userAccount.readAll().length}");
    List<UserAccount> users = RepoFactory.userAccount.readAll();
    return users.isNotEmpty? users[0]:null;
  }
}