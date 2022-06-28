import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  Widget baseScreen() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green.shade200,
      padding: EdgeInsets.only(
        top: 50,
        left: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.thumb_up_alt_sharp),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.line_style),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.blur_linear),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  bool isDrawerNeeded = false;
  // double height = 500;
  double width = 200;

  onDrawerPress() {
    setState(() {
      isDrawerNeeded = true;
    });
  }

  AnimationController? rotationController;
  // AnimationController? _controller;

  @override
  void initState() {
    // _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    rotationController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    rotationController!.dispose();
    super.dispose();
  }
  Widget mainScreen() {
    return AnimatedPositioned(
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      top:isDrawerNeeded ? 25:  0,
      right:0 ,
      bottom:  0,
      left: isDrawerNeeded ? 200 : 0,
      child:/*AnimatedRotation*/ /*AnimatedBuilder(
        animation: _controller!,
        builder:  (_, child) {
          return Transform.rotate(
            angle:isDrawerNeeded ? -60 / 360:0,
            child: child,
          );
        },
        child:*/ RotationTransition(
          turns:isDrawerNeeded ? Tween(begin: 0.0, end:1.0).animate(rotationController!):AlwaysStoppedAnimation(1),
        // curve: Curves.easeIn,
        alignment: Alignment.topRight,
         // turns:isDrawerNeeded ? AlwaysStoppedAnimation(-14 / 360,):AlwaysStoppedAnimation(1),
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: Colors.yellow.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(25),
              ),
            ),
            duration: Duration(seconds: 1),
            height:double.maxFinite,
            width: /*isDrawerNeeded ? width :*/ double.maxFinite,
            padding: EdgeInsets.only(
              top: 50,
              left: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(Icons.home_outlined),
                  onTap: () {
                    print('Tab');
                    setState(() {
                      isDrawerNeeded = !isDrawerNeeded;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.check),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.picture_as_pdf),
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.gamepad),
              ],
            ),
          ),
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          baseScreen(),
          mainScreen(),
        ],
      ),
    );
  }
}
