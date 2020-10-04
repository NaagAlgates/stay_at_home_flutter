import 'package:flutter/material.dart';

import 'OtherActivities.dart';

class OtherActivitiesItem extends StatelessWidget {
  final int index;
  OtherActivitiesItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          otherActivitiesItem[index].imageUrl,
          width: 170,
          height: 140,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(otherActivitiesItem[index].title,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Sniglet',fontWeight: FontWeight.normal)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.38,
                  child: Text(otherActivitiesItem[index].description,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Sniglet',fontWeight: FontWeight.normal)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
