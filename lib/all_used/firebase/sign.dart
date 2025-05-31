import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void signIn(String email, String password, BuildContext context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Signed in as ${userCredential.user?.email}")),
    );
    // Navigasi ke halaman berikutnya jika login berhasil
    Navigator.pushReplacementNamed(context, '/home'); // Contoh navigasi
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error: $e")),
    );
  }
}