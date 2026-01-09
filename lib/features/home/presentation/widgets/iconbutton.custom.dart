import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final Color? iconColor;
  final double width;  
  final double height; 
  final double? borderRadius; 
  final VoidCallback onPressed;

  const IconButtonCustom({
    super.key,
    required this.icon,
    this.color,
    this.iconColor,
    required this.width,  
    required this.height, 
    this.borderRadius,    
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // คำนวณความโค้ง
    final radius = BorderRadius.circular(borderRadius ?? height / 2);

    return Material(
      color: Colors.transparent, // ต้องเป็นสีโปร่งใส
      child: Ink(
        width: width,   
        height: height, 
        decoration: BoxDecoration(
          color: color ?? Colors.grey.shade200,
          borderRadius: radius,
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: radius, 
          child: Center(
            child: Icon(
              icon,
              color: iconColor ?? Colors.black,
              // ป้องกันไอคอนใหญ่เกินขนาดปุ่ม
              size: (width < height ? width : height) * 0.6, 
            ),
          ),
        ),
      ),
    );
  }
}