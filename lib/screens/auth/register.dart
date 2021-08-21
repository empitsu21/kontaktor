import 'package:flutter/material.dart';
import 'package:flutter_lens_app/service/authentication/auth_services.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {

  final Function toggleScreen;

  const Register({Key key, this.toggleScreen}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Register> {

  TextEditingController _emailController;
  TextEditingController _passwordController;
  final _formkey = GlobalKey<FormState>();


  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final loginProvider = Provider.of<AuthServices>(context);

    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('lib/images/kont.png'),
            ),
            TextFormField(
              controller: _emailController,
              validator: (val) => val.isNotEmpty ? null : "Введите адрес электронной почты",
              decoration: InputDecoration(
                hintText: "Почта",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black45,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.mail, color: Colors.grey,),
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller: _passwordController,
              validator: (val) => val.length < 6 ? "Введите 6 или более символов" : null ,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Пароль",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black45,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.vpn_key, color: Colors.grey,),
              ),
            ),
            SizedBox(height: 30,),
            MaterialButton(
              onPressed: () async {
                if (_formkey.currentState.validate()) {
                  print("Email: ${_emailController.text}");
                  print("Email: ${_passwordController.text}");
                  await loginProvider.register(
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                  );
                }
              },
              height: 60,
              minWidth: loginProvider.isLoading ? null : double.infinity,
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: loginProvider.isLoading ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                ),
              ) : Text(
                "РЕГИСТРАЦИЯ",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Уже есть аккаунт?"),
                SizedBox(width: 10,),
                TextButton(
                  onPressed: () => widget.toggleScreen(),
                  child: Text(
                    "Вход",
                    style: TextStyle(
                      color: Colors.redAccent[100],
                    ),
                  ),
                ),
              ],
            ),
            if (loginProvider.errorMessage != null)
              Container(
                color: Colors.amber,
                child: ListTile(
                  title: Text(loginProvider.errorMessage),
                  leading: Icon(Icons.error),
                  trailing: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => loginProvider.setMessage(null),
                  ),
                ),
              ),
            SizedBox(height: 178,),
          ],
        ),
      ),
    );
  }
}
