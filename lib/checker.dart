import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lens_app/screens/wrapper.dart';
import 'package:flutter_lens_app/service/authentication/auth_services.dart';
import 'package:flutter_lens_app/states/loading.dart';
import 'package:flutter_lens_app/widgets/error_widget.dart';
import 'package:provider/provider.dart';

class Checker extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _init = Firebase.initializeApp();
    return FutureBuilder(
      future: _init,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrWidget();
        } else if (snapshot.hasData){
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<AuthServices>.value(value: AuthServices()),
              StreamProvider<User>.value(
                value: AuthServices().user,
                initialData: null,
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: Colors.redAccent[100],
                primarySwatch: Colors.amberAccent[600],
              ),
              home: Scaffold(
                body: Wrapper(),
              ),
            ),
          );
        } else {
          return Loading();
        }
      },
    );
  }
}
