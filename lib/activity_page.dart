import 'package:flutter/material.dart';
import 'package:stay_at_home/slide_item.dart';

import 'OtherActivities.dart';
import 'activity_model.dart';
import 'custom_scroll_physics.dart';
import 'other_activities_slide_item.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  PageController _controller = PageController(
    viewportFraction: 1 / 2,
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFBF0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Regular Activity",
                    style: TextStyle(
                        color: const Color(0xffF7931E),
                        fontSize: 40,
                        fontFamily: 'Sniglet'),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: TextFormField(
                    style: TextStyle(
                        color: Color(0xff9A5504),
                        fontSize: 20.0,
                        fontFamily: 'Sniglet'),
                    autocorrect: false,
                    autofocus: false,
                    maxLines: 1,
                    maxLength: 15,
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Color(0xff9A5504),
                            fontSize: 20.0,
                            fontFamily: 'Sniglet'),
                        counterText: "",
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        fillColor: Color(0xffFEF5DC),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                              color: Color(0xffFEF6E3),
                            ))),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: slideImages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 10, right: 10),
                          child: SlideItem(index),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Other Activities",
                    style: TextStyle(
                        color: const Color(0xffF7931E),
                        fontSize: 30,
                        fontFamily: 'Sniglet'),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.4,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: otherActivitiesItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 10, right: 10),
                          child: OtherActivitiesItem(index),
                        );
                      }),
                )
                /*SizedBox(
                  height: MediaQuery.of(context).size.height*0.27,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: slideImages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return OtherActivitiesItem(index);
                      }),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
