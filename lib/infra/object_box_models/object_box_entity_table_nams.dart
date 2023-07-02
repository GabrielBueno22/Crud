import 'package:crud_app/infra/object_box_models/user_data.dart';

import 'package:objectbox/objectbox.dart';

Map<String, Box Function(Store s)> objectBoxEntityTableNames = {
  'CONTACT_DATA': (s) => s.box<ContactDataObjectBox>()
};

Map<String, dynamic Function(Map<String, dynamic> map)>
    objectBoxEntityTableNamesFromJson = {
  'CONTACT_DATA': (map) => ContactDataObjectBox.fromMap(map)
};

Map<String, Map Function(dynamic s)> objectBoxEntityTableNamesToJson = {
  'CONTACT_DATA': (s) {
    var value = s as ContactDataObjectBox;
    return value.toMap();
  }
};
