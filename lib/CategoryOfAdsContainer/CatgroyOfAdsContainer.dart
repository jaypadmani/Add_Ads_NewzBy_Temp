import 'package:flutter/material.dart';
import 'package:add_ad/constant.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';

class CatgoryOfAdsContainer extends StatelessWidget {
  final List<String> itemList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 25,
          width: 90,
          decoration: DatePickerContainer,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: TextButton(
              onPressed: () {
                showPopupWindow(
                  context,
                  gravity: KumiPopupGravity.center,
                  bgColor: Colors.black.withOpacity(0.3),
                  childFun: (pop) {
                    return Container(
                      key: GlobalKey(),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height * 0.8 / 2,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: itemList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(itemList[index]),
                            onTap: () {
                              // Handle item tap
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text(
                    'Food',
                    style: LeftSideContainerTextStyle,
                  ),
                  const Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
