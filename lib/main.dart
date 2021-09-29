import 'package:admin/constants.dart';
import 'package:admin/providers/MenuProvider.dart';
import 'package:admin/router.dart';
import 'package:admin/screens/home/main/home_main_screen.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:admin/screens/home/screens/konsultasi/providers/konsultasi_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuProvider()),
          ChangeNotifierProvider(create: (context) => HomeProvider()),
          ChangeNotifierProvider(create: (context) => KonsultasiProvider()),
        ],
        // child: MainScreen(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Admin Panel',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white),
            canvasColor: secondaryColor,
          ),
          initialRoute: HomeMainScreen.route,
          onGenerateRoute: RouteConfiguration.onGenerateRoute,
        ));
  }
}
