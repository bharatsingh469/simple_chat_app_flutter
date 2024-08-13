import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
   final auth = FirebaseAuth.instance;
    RxBool isLoading = false.obs;


// fn for login
    Future<void> login(String email, String password) async {
       isLoading.value = true;
       try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed("/homePage");
      print("login go chuka h");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      } 
    }  catch (e) {
      print(e);
    }
      isLoading.value = false;

  }

  // crete user
   Future<void> createUser(String email, String password,  ) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // await initUser(email, name);
       print("Account Created 🔥🔥");
      // Get.offAllNamed("/homePage");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
  }


}