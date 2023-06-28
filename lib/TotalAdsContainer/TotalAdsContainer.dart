import 'package:flutter/material.dart';
import 'package:add_ad/constant.dart';

class TotalAdsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 25,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '7',
                style: LeftSideContainerTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
