import 'package:flutter/material.dart';
import 'HomePageAdsContainer/ads_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddAd(),
    );
  }
}

class AddAd extends StatefulWidget {
  const AddAd({Key? key}) : super(key: key);

  @override
  State<AddAd> createState() => _AddAdState();
}

class _AddAdState extends State<AddAd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            width: 45,
            height: 45,
            child: PopupMenuButton(
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'option1',
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Regular Ads',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'option1',
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Banner Ads',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'option1',
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Full Ads',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'option1',
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Half Ads',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              onSelected: (value) {
                // Handle menu item selection
              },
              offset: const Offset(-10, -210),
              // Adjust the offset to position the menu above the FAB
            ),
          ),
        ),
        backgroundColor: const Color(0xFFDFEBE9),
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Add Ads',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  AdsContainer(name: 'Regular Ads'),
                  AdsContainer(name: 'Banner Ads'),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  AdsContainer(name: 'Full Ads'),
                  AdsContainer(name: 'Half Ads'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
