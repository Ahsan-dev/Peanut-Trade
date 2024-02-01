import 'package:peanut_trade/data/local_storage/repository/repository.dart';
import 'package:peanut_trade/data/models/user_account.dart';

import '../../table_constants.dart';
import 'base_repository_impl.dart';

class RepoFactory {
  static Repository<UserAccount> get userAccount =>
      BaseRepositoryImpl<UserAccount>(tableName: TableConstants.userTableName);
}