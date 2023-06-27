abstract class LocalDbClient {
  Future<Map?> getItem({required String tableName, required int itemId});

  Future<List<Map>> getItens(
      {required String tableName,
      String conditions,
      List<String> conditionsArgs});

  Future<bool> store({required String tableName, Map storeItem});
}
