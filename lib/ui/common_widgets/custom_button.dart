import 'package:flutter/material.dart';
import 'package:lucky_draw_app/data/values/my_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  var onTap;
   CustomButton({Key? key,required this.title,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: MyColors.primary,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18),
        ),
      ),
    );
  }
}
