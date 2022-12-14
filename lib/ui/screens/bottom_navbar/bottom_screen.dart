import 'package:flutter/material.dart';
import 'package:lucky_draw_app/data/values/my_imgs.dart';
import 'package:lucky_draw_app/ui/screens/coupen_screen/coupon_screen.dart';
import '../draws_screen/draws_screen.dart';
import '../home_screen/home_screen.dart';
import '../winner_screen/winner_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

  //- - - - - - - - - instructions - - - - - - - - - - - - - - - - - -
  // WARNING! MUST ADD extendBody: true; TO CONTAINING SCAFFOLD
  //
  // Instructions:
  //
  // add this widget to the bottomNavigationBar property of a Scaffold, along with
  // setting the extendBody parameter to true i.e:
  //
  // Scaffold(
  //  extendBody: true,
  //  bottomNavigationBar: BottomScreen()
  // )
  //
  // Properties such as color and height can be set by changing the properties at the top of the build method
  //
  // For help implementing this in a real app, watch https://www.youtube.com/watch?v=C0_3w0kd0nc. The style is different, but connecting it to navigation is the same.
  //
  //- - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -


  var selectedIndex = 0;

  bool one = true;
  bool two = false;
  bool three = false;
  bool four = false;

  final screens = [
    const HomeScreen(),
    const WinnerScreen(),
    const DrawsScreen(),
    const CouponScreen()
  ];



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    final primaryColor = Colors.orange;
    final secondaryColor = Colors.black12;
    final accentColor = const Color(0xffffffff);
    final backgroundColor = Colors.white;

    return Scaffold(
      extendBody: true,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, height + 6),
              painter: BottomNavCurvePainter(backgroundColor: backgroundColor),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                  backgroundColor: primaryColor,
                  child: Icon(Icons.shopping_basket),
                  elevation: 0.1,
                  onPressed: () {}),
            ),
            Container(
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavBarIcon(
                    text: "Home",
                    iconPath: MyImgs.homeIcon,
                    selected: one,
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0;
                        one = true;
                        two = false;
                        three = false;
                        four = false;
                        print("selectedIndex: $selectedIndex");
                      });
                    },
                    defaultColor: secondaryColor,
                    selectedColor: one == true ? primaryColor : secondaryColor,
                  ),
                  NavBarIcon(
                    text: "Search",
                    iconPath: MyImgs.winnerIcon,
                    selected: two,
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                        two = true;
                        one = false;
                        four = false;
                        three = false;

                        print("selectedIndex: $selectedIndex");
                      });
                    },
                    defaultColor: secondaryColor,
                    selectedColor: two == true ? primaryColor : secondaryColor,
                  ),
                  SizedBox(width: 56),
                  NavBarIcon(
                      text: "Cart",
                      iconPath: MyImgs.drawsIcon,
                      selected: three,
                      onPressed: () {
                        setState(() {
                          selectedIndex = 2;
                          three = true;
                          one = false;
                          two = false;
                          four = false;
                          print("selectedIndex: $selectedIndex");
                        });
                      },
                      defaultColor: secondaryColor,
                      selectedColor: three == true ? primaryColor : secondaryColor),
                  NavBarIcon(
                    text: "Calendar",
                    iconPath: MyImgs.couponIcon,
                    selected: four,
                    onPressed: () {
                      setState((){
                        selectedIndex = 3;
                        four = true;
                        one = false;
                        two = false;
                        three = false;
                        print("selectedIndex: $selectedIndex");
                      });
                    },
                    selectedColor: four == true ? primaryColor : secondaryColor,
                    defaultColor: secondaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter({this.backgroundColor = Colors.white, this.insetRadius = 38});

  Color backgroundColor;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;
    path.quadraticBezierTo(size.width * 0.20, 0,
        insetCurveBeginnningX - transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(
        insetCurveBeginnningX, 0, insetCurveBeginnningX, insetRadius / 2);

    path.arcToPoint(Offset(insetCurveEndX, insetRadius / 2),
        radius: Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(
        insetCurveEndX, 0, insetCurveEndX + transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
        required this.text,
        this.icon,
        required this.selected,
        required this.onPressed,
        required this.iconPath,
        this.selectedColor = const Color(0xffFF8527),
        this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final Image? icon;
  final String iconPath;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Image.asset(
            iconPath,
            height: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
