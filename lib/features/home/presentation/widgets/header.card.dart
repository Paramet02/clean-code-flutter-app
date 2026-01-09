import 'package:clean_code_flutter/features/home/presentation/widgets/iconbutton.custom.dart';
import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  final String location;
  
  const HeaderCard({
    super.key,
    required this.location,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        // Header Content Widgets Here
        IconButtonCustom(icon: Icons.menu, height: 40, width: 40, borderRadius: 10, onPressed: () {}),
        SizedBox(width: 10),
        
        // [FIXED] ครอบด้วย Expanded เพื่อให้ Column กินพื้นที่ที่เหลือในแนวนอน และจัด Layout ให้ถูกต้อง
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // [FIXED] เพิ่มเพื่อให้ข้อความชิดซ้าย
            mainAxisSize: MainAxisSize.min, // [FIXED] ให้ Column มีขนาดเท่ากับของข้างใน
            children: [
              Text("DELIVER TO" , style: TextStyle(fontSize: 14 , color: Colors.deepOrange , fontWeight: FontWeight.bold),), // [FIXED] ลดขนาด font นิดหน่อย
              Row(
                children: [
                  Text(location , style: TextStyle(fontSize: 16 , color: Colors.black45),),

                  // DropDown IconButton
                  IconButtonCustom(
                    icon: Icons.arrow_drop_down,
                    color: Colors.white,
                    height: 30,
                    width: 30,
                    borderRadius: 10,
                    onPressed: () {},
                  ), 
                ],
              ),
              
              // End of Row
              // [FIXED] ลบ Spacer() ออก เพราะ Spacer ใน Column ที่อยู่ใน ListView จะทำให้ Render พัง
            ],
          ),
        ),

        // [FIXED] ย้าย Shopping Cart ออกมาไว้นอก Column แต่อยู่ใน Row หลัก เพื่อให้จัดตำแหน่งขวาสุดได้ง่าย
        // Shopping Cart IconButton
        IconButtonCustom(
          icon: Icons.shopping_cart,
          iconColor: Colors.black,
          height: 40,
          width: 40,
          borderRadius: 10,
          onPressed: () {},
        ),
      ],
    );
  }
}