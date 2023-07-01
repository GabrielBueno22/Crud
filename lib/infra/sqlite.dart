abstract class LocalDb {
  Future<bool> save(Map saveObject, String tableName);
  Future<bool> delete(int id, String tableName);
  Future<bool> get(int id, String tableName);
  Future<bool> getAll(String tableName);
}
