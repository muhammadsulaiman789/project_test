import 'package:flutter/material.dart';
import 'package:test_project/navigation/dashboard_navigation.dart';
import 'package:test_project/widgets/my_course.dart';
import 'package:test_project/widgets/top_educator.dart';

import 'core/widgets/tab_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B0D1C),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Hello Satwik',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w700),
                )),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('What are you learning today ?',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff828282),
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w400))),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/image.png',
                      //  height: 70.0,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0x0ff1F2034),
              ),
              child: TextField(
                  decoration: InputDecoration(
                labelText: "Search Courses, Educators...",
                labelStyle: TextStyle(color: Colors.white60, fontSize: 12.0),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white60,
                ),
                fillColor: Color(0x0ff1F2034),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )),
            ),
            const SizedBox(width: 20.0),
            PreferredSize(
                preferredSize: const Size.fromHeight(10.0),
                child: Container(
                    width: double.infinity,
                    child: ColoredBox(
                        color: Color(0x0ff1F2034),
                        child: TabBar(
                          isScrollable: true,
                          controller: tabController,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: const UnderlineTabIndicator(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 2.0),
                            insets: EdgeInsets.fromLTRB(40.0, 0.0, 50.0, 40.0),
                          ),
                          tabs: const [
                            TabItem(title: 'My Courses'),
                            TabItem(title: 'Trending'),
                          ],
                        )))),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  DashboardNavigation(),
                  DashboardNavigation(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
