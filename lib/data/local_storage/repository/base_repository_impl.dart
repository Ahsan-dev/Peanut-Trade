import 'package:hive/hive.dart';

import 'repository.dart';

class BaseRepositoryImpl<DataModel> implements Repository<DataModel> {
  final String tableName;

  BaseRepositoryImpl({required this.tableName});

  Box<DataModel> getDataTable() {
    return Hive.box<DataModel>(tableName);
  }

  @override
  void create(int key, DataModel entity) {
    getDataTable().put(key, entity);
  }

  @override
  void createWithStringKey(String key, DataModel entity) {
    getDataTable().put(key, entity);
  }

  @override
  void deleteAll() {
    getDataTable().deleteAll(getDataTable().keys);
  }

  @override
  void deleteByKey(String key) {
    getDataTable().delete(key);
  }

  @override
  void deleteById(int id) {
    getDataTable().delete(id);
  }

  @override
  DataModel? readById(int id) {
    return getDataTable().get(id);
  }

  @override
  DataModel? readByKey(String key) {
    return getDataTable().get(key);
  }

  @override
  List<DataModel> readAll({bool Function(DataModel element)? condition}) {
    if (condition == null) {
      return getDataTable().values.toList();
    } else {
      return getDataTable().values.where(condition).toList();
    }
  }

  @override
  List<DataModel> readAllFilteredData(
      bool Function(DataModel element)? condition) {
    if (condition != null) {
      return getDataTable().values.toList();
    } else {
      return getDataTable().values.where(condition!).toList();
    }
  }
}
