import 'package:crud_app/helpers/localDb/local_db.dart';
import 'package:crud_app/infra/object_box_models/object_box_entity_table_nams.dart';
import 'package:crud_app/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

class ObjectBoxCLient implements LocalDb {
  /// The Store of this app.
  late final Store store;

  ObjectBoxCLient._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  /// Create an instance of ObjectBox to use throughout the app.

  @override
  Future<bool> delete(int id, String tableName) async {
    final box = objectBoxEntityTableNames[tableName]!(store);
    final isRemoved = await box.removeAsync(id);
    return isRemoved;
  }

  @override
  Future<Map> get(int id, String tableName) async {
    final box = objectBoxEntityTableNames[tableName]!(store);
    final gotValue = await box.getAsync(id);
    return objectBoxEntityTableNamesToJson[tableName]!(gotValue);
  }

  @override
  Future<List> getAll(String tableName) async {
    final box = objectBoxEntityTableNames[tableName]!(store);
    final isRemoved = await box.getAllAsync();
    return isRemoved;
  }

  @override
  Future<int> save(Map<String, dynamic> saveObject, String tableName) async {
    final box = objectBoxEntityTableNames[tableName]!(store);
    final saveId = await box
        .putAsync(objectBoxEntityTableNamesFromJson[tableName]!(saveObject));
    return saveId;
  }

  @override
  Future create() {
    throw NonUniqueResultException('message');
  }
}
