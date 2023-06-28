import 'package:add_ad/Active_End%20Ads%20Date/ActiveAndEndDateAds.dart';
import 'package:add_ad/CategoryOfAdsContainer/CatgroyOfAdsContainer.dart';
import 'package:add_ad/LocationContainer/LocationContainer.dart';
import 'package:add_ad/TotalAdsContainer/TotalAdsContainer.dart';
import 'package:flutter/material.dart';
import 'package:add_ad/constant.dart';
import 'package:add_ad/AddAdsLeftsideContainer/AddAdsLeftSideContainer.dart';

class AdsContainer extends StatefulWidget {
  String name;
  AdsContainer({super.key, required this.name});

  @override
  State<AdsContainer> createState() => _AdsContainerState();
}

class _AdsContainerState extends State<AdsContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 60, 60),
        child: Container(
          decoration: AddAdsContainer,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: AddAdsContainerChild,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddAdsLeftSideContainer(LeftSideName: 'Category'),
                            CatgoryOfAdsContainer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: PaddingOutsideContainer,
                    child: Container(
                      decoration: AddAdsContainerChild,
                      child: Padding(
                        padding: PaddingInsideContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddAdsLeftSideContainer(LeftSideName: 'Active Ad'),
                            ActiveAndEndDateAds(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: PaddingOutsideContainer,
                    child: Container(
                      decoration: AddAdsContainerChild,
                      child: Padding(
                        padding: PaddingInsideContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddAdsLeftSideContainer(LeftSideName: 'End Date'),
                            ActiveAndEndDateAds(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: PaddingOutsideContainer,
                    child: Container(
                      decoration: AddAdsContainerChild,
                      child: Padding(
                        padding: PaddingInsideContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddAdsLeftSideContainer(LeftSideName: 'Total'),
                            TotalAdsContainer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: PaddingOutsideContainer,
                    child: Container(
                      decoration: AddAdsContainerChild,
                      child: Padding(
                        padding: PaddingInsideContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddAdsLeftSideContainer(LeftSideName: 'Location'),
                            LocationContainer(),
                          ],
                        ),
                      ),
                    ),
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
