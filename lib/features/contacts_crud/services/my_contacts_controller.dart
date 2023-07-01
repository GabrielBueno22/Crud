import 'package:crud_app/features/contacts_crud/save_contact.dart';
import 'package:crud_app/features/contacts_crud/visualize_contacts.dart';
import 'package:crud_app/infra/sqlite.dart';
import 'package:crud_app/models/contact_data.dart';

import '../delete_contact.dart';

class ContactsServices
    implements DeleteContact, SaveContact, VisualizeContacts {
  final LocalDb localDb;

  ContactsServices(this.localDb);
  @override
  Future<void> deleteContact(int contactId) {
    // TODO: implement deleteContact
    throw UnimplementedError();
  }

  @override
  Future<List<ContactData>> getAllContactsData() {
    // TODO: implement getAllContactsData
    throw UnimplementedError();
  }

  @override
  Future<void> saveContactInfo(ContactData contact) {
    // TODO: implement saveContactInfo
    throw UnimplementedError();
  }
}
