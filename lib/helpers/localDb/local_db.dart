abstract class LocalDb {
  Future create();
  Future<int> save(Map<String, dynamic> saveObject, String tableName);
  Future<bool> delete(int id, String tableName);
  Future<Map> get(int id, String tableName);
  Future<List> getAll(String tableName);
}
