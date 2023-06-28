import 'package:flutter/material.dart';

TextStyle ContainerTextStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

Decoration AddAdsContainer = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white,
);

Decoration AddAdsContainerChild = BoxDecoration(
  border: Border.all(),
  borderRadius: BorderRadius.circular(20),
);

Decoration DatePickerContainer = BoxDecoration(
  color: Colors.black,
  borderRadius: BorderRadius.circular(10),
);

TextStyle LeftSideContainerTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
);

EdgeInsets PaddingInsideContainer = const EdgeInsets.symmetric(horizontal: 10);

EdgeInsets PaddingOutsideContainer = const EdgeInsets.only(bottom: 10);
