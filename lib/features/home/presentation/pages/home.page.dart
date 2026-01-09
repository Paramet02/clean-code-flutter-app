import 'package:clean_code_flutter/features/home/presentation/widgets/categorries.card.dart';
import 'package:clean_code_flutter/features/home/presentation/widgets/header.card.dart'; // [FIXED] ตรวจสอบ path ไฟล์ให้ถูกต้อง
import 'package:clean_code_flutter/features/home/presentation/widgets/search.card.dart';
import 'package:clean_code_flutter/features/home/presentation/widgets/sectionheader.card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // [FIXED] เพิ่ม SafeArea เพื่อไม่ให้ Widget ด้านบนโดนบัง
        child: ListView(
          // [FIXED] ปรัะกาศใช้ Padding widget ผ่าน property ของ ListView แทนการสร้าง Widget Padding ลอยๆ
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            // [FIXED] ลบ Padding widget เดิมที่ไม่มี child ออก (ต้นเหตุ Null check error)

            // Header Card
            HeaderCard(location: "Bangkok, Thailand"),

            // หน้าทักทาย ผู้ใช้ Good Morning , Good Afternoon , Good Evening
            SizedBox(height: 20),
            Text(
              'Hey Halal, ${DateTime.now().hour < 12
                  ? 'Good Morning'
                  : DateTime.now().hour < 18
                  ? 'Good Afternoon'
                  : 'Good Evening'}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            // Search Card
            SizedBox(height: 20),
            SearchCard(
              title: 'Search for restaurants or dishes',
              onChanged: (value) {
                // Handle search input change
              },
            ),

            // All Categorries Card
            SizedBox(height: 20),
            SectionHeaderCard(
              label: 'All Categories',
              onViewAll: () {
                // Handle view all categories
              },
            ),
            SizedBox(height: 20),
            CategorriesCard(),

            // Open Restaurants Card
            SizedBox(height: 30),
            SectionHeaderCard(
              label: 'Open Restaurants',
              onViewAll: () {
                // Handle view all open restaurants
              },
            ),

            
          ],
        ),
      ),
    );
  }
}
