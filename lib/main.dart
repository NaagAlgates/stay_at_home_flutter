import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stay_at_home/activity_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffFEF6E3),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFFFBF0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "STAY HOME",
                  style: TextStyle(
                      color: const Color(0xffF7931E),
                      fontSize: 60,
                      fontFamily: 'AmaticSC',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/images/group_34.png'),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 20,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Image.asset(
                            'assets/images/ellipse_1.png',
                            color: Color(0xffE7CEA7),
                          )),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Image.asset(
                            'assets/images/ellipse_1.png',
                            color: Color(0xffE7CEA7),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "A quarantine is a restriction on the movement of people and goods which is intended to prevent the spread of disease or pests.",
                    style: TextStyle(color: Color(0xffF7931E), fontSize: 20,fontFamily: 'Sniglet'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),
                    color: Color(0xff006837),
                    minWidth: 340,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Get Started",
                        style: TextStyle(color:Colors.white, fontSize: 23,fontFamily: 'Sniglet'),
                        textAlign: TextAlign.center,),
                    ),
                      onPressed: (){
                        Get.to(ActivityScreen());
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
