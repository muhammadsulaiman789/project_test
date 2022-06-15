import 'package:flutter/material.dart';

class MyCourse extends StatelessWidget {
  const MyCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 200.0,
                height: 160.0,
                decoration: BoxDecoration(
                  color: Color(0x0ff1F2034),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 300.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child:Image.asset(
                            'assets/images/class.png',
                            fit: BoxFit.fill,
                            //  height: 70.0,
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Virtual Reality",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Satwik Pachino",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 200.0,
                height: 160.0,
                decoration: BoxDecoration(
                  color: Color(0x0ff1F2034),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Center(
                          child: Container(
                            width: 300.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child:Image.asset(
                              'assets/images/class.png',
                              fit: BoxFit.fill,
                              //  height: 70.0,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Android Developer",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "John Victor",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
