import 'package:cybaze_machine_test/screens/home_screen.dart';
import 'package:cybaze_machine_test/utils/app_images.dart';
import 'package:cybaze_machine_test/utils/constants.dart';
import 'package:cybaze_machine_test/widgets/fun_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _title = "Customers";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _title = setTitle(index);
    });
  }

  String setTitle(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "Invoices";
      case 2:
        return "Products";
      default:
        return "Customers";
    }
  }

  List pages = <Widget>[
    HomeScreen(),
    Center(
      child: Text("My Course"),
    ),
    Center(
      child: Text("Favourite"),
    ),
    Center(
      child: Text("My note"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        titleSpacing: 0,
        // automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF5F5F5),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Quiz",
          style: TextStyle(color: Colors.black),
        ),
        actions: [],
      ),
      body: pages[0],
      bottomNavigationBar: BottomAppBar(
        height: 60.h,
        //bottom navigation bar on scaffold
        color: Colors.white,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Column(
                  children: [
                    Image.asset(AppUtils.home),
                    SizedBox(
                      height: 2,
                    ),
                    FunText(
                      text: "Home",
                      fontSize: 12,
                      textColor: Colors.blue,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Column(
                  children: [
                    Image.asset(AppUtils.grad),
                    SizedBox(
                      height: 2,
                    ),
                    FunText(
                      text: "My Course",
                      fontSize: 12,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Column(
                  children: [
                    Image.asset(AppUtils.fav),
                    SizedBox(
                      height: 2,
                    ),
                    FunText(
                      text: "Favourite",
                      fontSize: 12,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Column(
                  children: [
                    Image.asset(AppUtils.not),
                    SizedBox(
                      height: 2,
                    ),
                    FunText(
                      text: "My Note",
                      fontSize: 12,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: FunText(text: "id"),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //  BottomNavigationBar(
      //   elevation: 5,
      //   onTap: _onItemTapped,
      //   // backgroundColor: ,
      //   unselectedItemColor: Colors.black,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: selectedIconColor,
      //   type: BottomNavigationBarType.fixed,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         AppUtils.homeIcon,
      //         // color: selectedIconColor,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(AppUtils.myCourseIcon),
      //       label: 'My Course',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(AppUtils.favouriteIcon),
      //       label: 'Favourite',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(AppUtils.myNoteIcon),
      //       label: 'My note',
      //     ),
      //   ],
      // ),
    );
  }
}
