import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lens_app/screens/auth/authentication.dart';
import 'package:flutter_lens_app/screens/home/home.dart';
import 'package:provider/provider.dart';

import 'auth/login.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user != null) {
      return HomeScreen();
    } else {
      return Authentication();
    }
  }
}
