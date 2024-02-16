import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_complete_guide/common/models/user_model.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contactsRepositoryProvider = Provider((ref) {
  return ContactsRepository(firestore: FirebaseFirestore.instance);
});

class ContactsRepository {
  final FirebaseFirestore firestore;

  ContactsRepository({required this.firestore});

  Future<List<List>> getAllContacts() async {
    List<UserModel> firebaseContacts = [];

    List<UserModel> phoneContacts = [];

    try {
      if (await FlutterContacts.requestPermission()) {
        final userConllection = await firestore.collection('users').get();
        final allContactsInThePhone = await FlutterContacts.getContacts(
          withProperties: true,
        );

        bool isContactFound = false;

        for (var contact in allContactsInThePhone) {
          for (var firebaseContactData in userConllection.docs) {
            var firebaseContact = UserModel.fromMap(firebaseContactData.data());
            if (contact.phones[0].number.replaceAll(' ', '') ==
                firebaseContact.phoneNumber) {
              firebaseContacts.add(firebaseContact);
              isContactFound = true;
              break;
            }
          }
          if (!isContactFound) {
            phoneContacts.add(
              UserModel(
                  username: contact.displayName,
                  uid: '',
                  profileImageUrl: '',
                  active: false,
                  phoneNumber: contact.phones[0].number.replaceAll(' ', ''),
                  groupId: []),
            );
          }
          isContactFound = false;
        }
      }
    } catch (e) {
      log(e.toString() as num);
    }

    return [firebaseContacts, phoneContacts];
  }
}
