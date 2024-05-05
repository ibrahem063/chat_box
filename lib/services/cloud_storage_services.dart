import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
const String USER_COLLECTION='Users';


class CloudStorageService{
  final FirebaseStorage _storage=FirebaseStorage.instance;
  CloudStorageService(){}

}