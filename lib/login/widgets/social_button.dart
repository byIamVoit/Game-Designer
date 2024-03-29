import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamedesigner/colorpallete/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconpath;
  final String label;
  final Function()? onTap;
  final double horizontalPadding;
  const SocialButton({
    Key? key,
    required this.iconpath,
    required this.onTap,
    required this.label,
    this.horizontalPadding = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: SvgPicture.asset(
        iconpath,
        width: 40,
        colorFilter: const ColorFilter.mode(
          Pallete.iceWhite,
          BlendMode.srcIn,
        ),
      ),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
