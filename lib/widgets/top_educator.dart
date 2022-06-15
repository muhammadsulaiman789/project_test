import 'package:flutter/material.dart';

class TopEducator extends StatelessWidget {
  const TopEducator({Key? key}) : super(key: key);

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
                width: 120.0,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          'assets/images/image.png',
                          //  height: 70.0,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Christina Roy",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "12 Courses",
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                        SizedBox(height: 10),
                        Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white60,)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 120.0,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          'assets/images/image.png',
                          //  height: 70.0,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Bessie Cooper",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "24 Courses",
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                      SizedBox(height: 10),
                      Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white60,)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 120.0,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          'assets/images/image.png',
                          //  height: 70.0,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Anna Watson",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "18 Courses",
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                      SizedBox(height: 10),
                      Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white60,)
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
