import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class ProfileMini extends StatefulWidget {
  ProfileMini({Key key}) : super(key: key);

  @override
  _ProfileMiniState createState() => _ProfileMiniState();
}

class _ProfileMiniState extends State<ProfileMini> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.all(kHomeDefaultPadding),
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: secondaryColor.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(1, 3))
              ]),
          child: Column(
            children: [
              //Foto Profile
              Row(
                children: [
                  //foto
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        'https://i0.wp.com/newdoorfiji.com/wp-content/uploads/2018/03/profile-img-1.jpg?ssl=1'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Citra eka Setriani Halawa'),
                      Text(
                        'citra@gmail.com',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              SizedBox(height: 15),
              //Poin
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.point_of_sale,
                        color: cMain,
                      ),
                      SizedBox(width: 10),
                      Text('Prime Dental Points',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TokoPoints'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [Text('Rp.44.000'), Text('(4400 Points)')],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
