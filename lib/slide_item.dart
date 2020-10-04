import 'package:flutter/material.dart';

import 'activity_model.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      slideImages[index].imageUrl,
      fit: BoxFit.fill,
    );
  }
}
