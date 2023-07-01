import 'package:crud_app/models/contact_data.dart';

abstract class VisualizeContacts {
  Future<List<ContactData>> getAllContactsData();
}
