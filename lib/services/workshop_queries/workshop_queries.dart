import 'package:bikersworld/model/workshop_model.dart';
import 'package:bikersworld/screen/workshop/add_services.dart';
import 'package:bikersworld/services/toast_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class RegisterWorkshopQueries {

   static String resultMessage;
   static final String WORKSHOP_COLLECTION = "workshop";
   static String imageResult;
   static String deleteImageResult;

   final _firebaseUser = FirebaseAuth.instance.currentUser;
   final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;

   Future registerWorkshop(WorkshopDashboardModel data) async{
      await _firestoreInstance.collection(WORKSHOP_COLLECTION).doc(_firebaseUser.uid).set(
         data.toMap(),SetOptions(merge: true))
          .then((_) {
            resultMessage = "Workshop Successfully Registered";
      }).catchError((error){
        resultMessage = error.toString();
      });
   }

   Future uploadWorkshopImage(String imageURL) async{
     await _firestoreInstance.collection(WORKSHOP_COLLECTION).doc(_firebaseUser.uid).set({
       'image' : imageURL,
     },SetOptions(merge: true))
     .then((_) {
       imageResult = 'Image Uploaded';
     })
     .catchError((onError){
       imageResult = onError.toString();
     });
   }
   Future deleteImage(String imageURL) async{

     final _storage = FirebaseStorage.instance;
     await _storage.refFromURL(imageURL).delete()
         .then((_) => deleteImageResult = "Image deleted successfully")
         .catchError((onError) => deleteImageResult = onError.toString());
   }
   Future fetchWorkshopData() async {
     await _firestoreInstance.collection(WORKSHOP_COLLECTION).doc(
         _firebaseUser.uid)
         .snapshots().listen((DocumentSnapshot snapshot) {
           return print(snapshot.data());
     });
   }
}