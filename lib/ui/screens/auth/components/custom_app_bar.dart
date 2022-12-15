import 'package:flutter/material.dart';
import '../../../../data/values/values.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: preferredSize,
      child: LayoutBuilder(
        builder: (context, constraint) {
          final width = constraint.maxWidth * 3;
          return Stack(
            children: [
              ClipRect(
                child: OverflowBox(
                  maxHeight: double.infinity,
                  maxWidth: double.infinity,
                  child: SizedBox(
                    width: width,
                    height: width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: width / 2 - preferredSize.height / 2),
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                          color: MyColors.appMainColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'C L A S S Y Y',
                  style: TextStyle(
                    letterSpacing: 6,
                    color: MyColors.whiteColor,
                    fontSize: AppFontSize.appBarFontSize,
                    fontWeight: AppFontSize.weightW700,
                    fontFamily: AppFontSize.appBarFontFamily,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(230.0);
}
