import 'package:flutter/material.dart';
import 'package:music_ui/widget/navigationrailbody.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController();
  int selectedindex = 0;
  final padding = 8.0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF09D15),
        body: Row(
          children: [
            NavigationRail(
              minWidth: 45.0,
              groupAlignment: 1.0,
              backgroundColor: Color(0xFFF09D15),
              selectedIndex: selectedindex,
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (index) {
                setState(() {
                  selectedindex = index;
                  isSelected = true;
                  pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  );
                });
                print(index);
              },
              selectedLabelTextStyle: TextStyle(
                color: Color(0xFFF09D15),
                fontSize: 16,
                letterSpacing: 0.5,
                decorationThickness: 2.0,
              ),
              unselectedLabelTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 0.5,
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              destinations: [
                NavigationRailDestination(
                  padding: EdgeInsets.only(left: 10),
                  icon: SizedBox.shrink(),
                  label: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: (selectedindex == 0)
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Happy",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(left: 10),
                  icon: SizedBox.shrink(),
                  label: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: (selectedindex == 1)
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Frantic",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(left: 10),
                  icon: SizedBox.shrink(),
                  label: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: (selectedindex == 2)
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Calm",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(left: 10),
                  icon: SizedBox.shrink(),
                  label: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: (selectedindex == 3)
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Depression",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  NavigationRailBody(
                    screenWidth: screenWidth,
                    title: 'Happy',
                  ),
                  NavigationRailBody(
                    screenWidth: screenWidth,
                    title: 'Frantic',
                  ),
                  NavigationRailBody(
                    screenWidth: screenWidth,
                    title: 'Calm',
                  ),
                  NavigationRailBody(
                    screenWidth: screenWidth,
                    title: 'Depression',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
