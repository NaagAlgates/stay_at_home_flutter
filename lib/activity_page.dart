import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  PageController _controller = PageController(
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFFFBF0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Regular Activity",
                  style: TextStyle(
                      color: const Color(0xffF7931E),
                      fontSize: 40,
                      fontFamily: 'Sniglet'),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                              color: Color(0xffFEF6E3),
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
