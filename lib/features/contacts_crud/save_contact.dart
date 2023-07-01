import 'package:crud_app/models/contact_data.dart';

abstract class SaveContact {
  Future<void> saveContactInfo(ContactData contact);
}
