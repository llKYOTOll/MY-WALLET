import 'package:flutter/material.dart';
import 'package:my_wallet/model/userData.dart';
import 'package:my_wallet/page/addTransaction.dart';
import 'package:my_wallet/page/dashboard.dart';
import 'package:my_wallet/page/homepage.dart';
import 'package:my_wallet/page/splashscreen.dart';
import 'package:my_wallet/provider/appData.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => AppData()),
        ChangeNotifierProvider(create: (context)=>UserData())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xffEB5151),
            background: const Color(0xff2E2E37),
            onBackground: const Color(0xff27282D),
          ),
        ),
        initialRoute: SplashScreen.routeName,
        routes: {
          HomePage.routeName: (context) => HomePage(),
          SplashScreen.routeName: (context) => SplashScreen(),
          Dashboard.routeName: (context) => Dashboard(),
          AddTransaction.routeName: (context) => AddTransaction(),
        },
      ),
    );
  }
}
