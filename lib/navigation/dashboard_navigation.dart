import 'package:flutter/material.dart';
import 'package:test_project/core/widgets/tab_item.dart';
import 'package:test_project/widgets/my_course.dart';
import 'package:test_project/widgets/top_educator.dart';

class DashboardNavigation extends StatefulWidget {
  const DashboardNavigation({Key? key}) : super(key: key);

  @override
  State<DashboardNavigation> createState() => _DashboardNavigationState();
}

class _DashboardNavigationState extends State<DashboardNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B0D1C),
      body: ListView(
        children: const [
          MyCourse(),
          SizedBox(height: 15.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Top Educators',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w700))),
          SizedBox(height: 10.0),
          TopEducator(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.black54,
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text(
                'Saved',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          ],
          backgroundColor: Colors.black54,
          currentIndex: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}

