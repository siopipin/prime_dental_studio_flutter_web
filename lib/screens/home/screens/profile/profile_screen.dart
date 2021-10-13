import 'package:admin/constants.dart';
import 'package:admin/screens/home/main/components/footer.dart';
import 'package:admin/screens/home/screens/profile/widgets/profile_header.dart';
import 'package:admin/screens/home/screens/profile/widgets/profile_info.dart';
import 'package:admin/screens/home/screens/profile/widgets/profile_mini.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(),
          Container(
            padding: EdgeInsets.all(kHomeDefaultPadding),
            constraints: BoxConstraints(maxWidth: kHomeMaxWidth),
            child: SafeArea(child: profilePage()),
          ),

          //Footer
          FooterHome()
        ],
      ),
    ));
  }

  profilePage() {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //profile mini
        ProfileMini(),
        SizedBox(
          width: 30,
        ),

        //info profile
        ProfileInfo()
      ],
    ));
  }
}
