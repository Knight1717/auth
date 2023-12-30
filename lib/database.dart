import 'package:cloud_firestore/cloud_firestore.dart';

class Database{

  Future addUser(Map<String, dynamic> userInfo) async{
    return await FirebaseFirestore.instance
        .collection("registration")
        .doc()
        .set(userInfo);
  }
}