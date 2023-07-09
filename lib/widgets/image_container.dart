



import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    this.height = 125,
    this.borderRadius = 20,
    required this.width,
    required this.imageAsset,
    this.padding,
    this.margin,
    this.child,
    Key? key,
  }):super(key: key);
   final double width;
    final double height;
    final String imageAsset;
    final EdgeInsets? padding;
    final EdgeInsets? margin;
    final double borderRadius;
    final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      //----------------------------------------------------------
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      //----------------------------------------------------------
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imageAsset,
        ),
        fit: BoxFit.cover,
        )
      ),
      child: child,
    );
  }
}
