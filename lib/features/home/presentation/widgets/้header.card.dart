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
      children: [
        
        // Header Content Widgets Here
        IconButtonCustom(icon: Icons.menu, height: 40, width: 40, borderRadius: 10, onPressed: () {}),
        SizedBox(width: 10),
        Column(
          children: [
            Text("DELIVER TO" , style: TextStyle(fontSize: 18 , color: Colors.deepOrange , fontWeight: FontWeight.bold),),
            Row(
              children: [
                Text(location , style: TextStyle(fontSize: 16 , color: Colors.black45),),

                // DropDown IconButton
                IconButtonCustom(
                  icon: Icons.arrow_drop_down,
                  height: 40,
                  width: 40,
                  borderRadius: 10,
                  onPressed: () {},
                ), 
              ],
            
            ),
            
            // End of Row
            Spacer(),
            
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
        ),

      ],
    );
  }
}