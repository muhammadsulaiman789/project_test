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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello Satwik',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('What are you learning today ?',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xff828282),
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/image.png',
                      //  height: 70.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.grey.withOpacity(0.5),
                        Color(0x0ff1F2034)
                      ],
                      end: Alignment.bottomCenter),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0x0ff1F2034),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                    labelText: "Search Courses, Educators...",
                    labelStyle:
                        TextStyle(color: Colors.white60, fontSize: 12.0),
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
                )),
            const SizedBox(width: 20.0),
            PreferredSize(
                preferredSize: const Size.fromHeight(10.0),
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: [Colors.black, Color(0x0ff1F2034)],
                          end: Alignment.topCenter),
                    ),
                    child: TabBar(
                      isScrollable: true,
                      controller: tabController,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 50.0),
                      ),
                      tabs: const [
                        Tab(
                            child: Text(
                          'My Courses',
                          style: TextStyle(fontSize: 16.0),
                        )),
                        Tab(
                            child: Text(
                          'Trending',
                          style: TextStyle(fontSize: 16.0),
                        )),
                      ],
                    ))),
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
