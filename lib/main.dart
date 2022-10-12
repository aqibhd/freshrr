import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshrr/view/home.dart';
import 'package:freshrr/view/jobs.dart';
import 'package:freshrr/view/profile.dart';
import 'package:freshrr/view/signup/signup.dart';
import 'package:freshrr/view/splash.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(const Freshrr());
}

class Freshrr extends StatelessWidget {
  const Freshrr({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freshrr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  bool loginStatus = false;
  final List<String> screenNames = ["Home", "Jobs", "Profile"];
  final List<Widget> screens = const [Home(), Jobs(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        title: Row(children: [
          Container(
            height: 36,
            width: 36,
            decoration: const BoxDecoration(
                color: Color(0xff1363DF),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            screenNames[currentIndex],
            style: const TextStyle(color: Colors.black),
          )
        ]),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.chat,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffF5F5F5),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 2 && !loginStatus) {
            Navigator.push(context,
                CupertinoPageRoute(builder: ((context) => const SignUp())));
          } else {
            currentIndex = value;
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.cases), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff1363DF),
        currentIndex: currentIndex,
      ),
    );
  }
}
