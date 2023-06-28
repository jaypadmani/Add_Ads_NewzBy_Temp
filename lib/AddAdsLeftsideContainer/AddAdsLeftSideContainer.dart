import 'package:flutter/material.dart';
import 'package:add_ad/constant.dart';

class AddAdsLeftSideContainer extends StatelessWidget {
  String LeftSideName;
  AddAdsLeftSideContainer({required this.LeftSideName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            LeftSideName,
            style: ContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
