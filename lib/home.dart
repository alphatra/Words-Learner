import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static String assetName1 = 'assets/svg/symbol.svg';
  static String assetName2 = 'assets/svg/symbol2.svg';
  bool _visible1 = true;
  bool _visible2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:  Stack(
        children: <Widget>[
          Positioned(
              left: 210,
              top: -100,
              child: SvgPicture.asset(
                  assetName2,
              )
          ),
          Positioned(
              right: 260,
              bottom: -100,
              child: SvgPicture.asset(
                  assetName1,
              )
          ),
          Padding(padding: EdgeInsets.only(top: 90),child: Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.07,
                child: Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(onTap: (){
                          setState(() {
                            _visible1 = !_visible1;
                            if(_visible2 = !_visible2){
                              _visible1 = !_visible2;
                            }else{
                              _visible2 = !_visible2;
                            }
                          });
                        },child: AnimatedDefaultTextStyle(child: Text("Mode",textAlign: TextAlign.center), style: TextStyle(fontFamily: "NotoSans", fontSize: 16, color: _visible1 ? Colors.black26 : Colors.black), duration: Duration(milliseconds: 300))),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                        GestureDetector(onTap: (){
                          setState(() {
                            _visible2 = !_visible2;
                            if(_visible1 = !_visible1){
                              _visible2 = !_visible1;
                            }else{
                              _visible1 = !_visible1;
                            }
                          });
                        },child: AnimatedDefaultTextStyle(child: Text("Worldlist",textAlign: TextAlign.center), style: TextStyle(fontFamily: "NotoSans", fontSize: 16, color: _visible2 ? Colors.black26 : Colors.black), duration: Duration(milliseconds: 300)))
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 6.0, // has the effect of softening the shadow
                        spreadRadius: 1.0, // has the effect of extending the shadow
                        offset: Offset(
                          3.0, // horizontal, move right 10
                          3.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                ),
              )),),
          Padding(padding: EdgeInsets.only(top: 170),child: Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                widthFactor: 0.7,
                heightFactor: 0.4,
                child: Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(onTap: (){
                          setState(() {
                            _visible1 = !_visible1;
                          });
                        },child: AnimatedDefaultTextStyle(child: Text("Mode",textAlign: TextAlign.center), style: TextStyle(fontFamily: "NotoSans", fontSize: 16, color: _visible1 ? Colors.black26 : Colors.black), duration: Duration(milliseconds: 300))),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                        GestureDetector(onTap: (){
                          setState(() {
                            _visible2 = !_visible2;
                          });
                        },child: AnimatedDefaultTextStyle(child: Text("Worldlist",textAlign: TextAlign.center), style: TextStyle(fontFamily: "NotoSans", fontSize: 16, color: _visible2 ? Colors.black26 : Colors.black), duration: Duration(milliseconds: 300)))
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 6.0, // has the effect of softening the shadow
                        spreadRadius: 1.0, // has the effect of extending the shadow
                        offset: Offset(
                          3.0, // horizontal, move right 10
                          3.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                ),
              )),),
          Padding(padding: EdgeInsets.only(top: 430),child: Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30),topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                    color: Colors.blueGrey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 6.0, // has the effect of softening the shadow
                        spreadRadius: 1.0, // has the effect of extending the shadow
                        offset: Offset(
                          3.0, // horizontal, move right 10
                          3.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                ),
              )),),

        ],
      )
    );
  }
}