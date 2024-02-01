abstract class Repository<DataModel> {
  void create(int key, DataModel entity);

  void createWithStringKey(String key, DataModel entity);

  void deleteAll();

  void deleteByKey(String key);
  void deleteById(int id);

  DataModel? readById(int id);
  DataModel? readByKey(String key);

  List<DataModel> readAll({bool Function(DataModel element)? condition});

  List<DataModel> readAllFilteredData(bool Function(DataModel element) test);
}
