import 'package:admin/constants.dart';
import 'package:admin/screens/home/main/components/logo.dart';
import 'package:admin/screens/home/screens/auth/register_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  static const String route = '/login';

  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Header
              _header(),
              SizedBox(height: kHomeDefaultPadding),
              //Login Form
              _loginform()
            ],
          ),
        ),
      ),
    );
  }

  _header() {
    return Container(
      child: Column(
        children: [
          Text(
            'Let\'s get started now!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('Login pada Prime Dental Studio')
        ],
      ),
    );
  }

  _loginform() {
    return Container(
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(1)),
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Logo(),
          SizedBox(height: kHomeDefaultPadding),
          Container(
            margin: EdgeInsets.only(bottom: kHomeDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: const OutlineInputBorder(),
                  hintStyle: TextStyle(color: kHomeBodyTextColor),
                  hintText: 'Username',
                  prefixIcon: Icon(
                    Icons.person_pin_circle_rounded,
                    color: kHomeBodyTextColor,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: kHomeDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: const OutlineInputBorder(),
                  hintStyle: TextStyle(color: kHomeBodyTextColor),
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.password,
                    color: kHomeBodyTextColor,
                  )),
            ),
          ),
          SizedBox(height: kHomeDefaultPadding),
          _submitLogin(),
          SizedBox(height: kHomeDefaultPadding / 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Lupa kata sandi?',
                  style: TextStyle(color: Colors.grey, fontSize: 11)),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, RegisterScreen.route),
                child: Row(
                  children: [
                    Text('Belum punya akun?',
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                    SizedBox(width: 5),
                    Text('Daftar Sekarang.',
                        style: TextStyle(
                            color: cMain,
                            fontWeight: FontWeight.bold,
                            fontSize: 11))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _submitLogin() {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: cMain,
            padding: EdgeInsets.symmetric(
                horizontal: kHomeDefaultPadding * 1.5,
                vertical: kHomeDefaultPadding),
          ),
          child: Text("Login"),
        ));
  }
}
