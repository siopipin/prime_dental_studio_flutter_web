import 'package:admin/constants.dart';
import 'package:admin/screens/home/main/components/logo.dart';
import 'package:admin/screens/home/screens/auth/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatefulWidget {
  static const String route = '/register';

  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              _registerform()
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
            'Let\'s Register Now!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('Daftar pada Prime Dental Studio')
        ],
      ),
    );
  }

  _registerform() {
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
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
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
                  hintText: 'HP',
                  prefixIcon: Icon(
                    Icons.phone_android_outlined,
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
                  hintText: 'Re-Password',
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
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, LoginScreen.route),
                child: Row(
                  children: [
                    Text('Sudah punya akun?',
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                    SizedBox(width: 5),
                    Text('Login Sekarang.',
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
          child: Text("Daftar"),
        ));
  }
}
