import 'package:clean_code_flutter/features/home/presentation/widgets/%E0%B9%89header.card.dart';
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
      body: ListView(
        children: [
          
          // ปรัะกาศใช้ Padding widget เพื่อเพิ่มระยะห่างด้านซ้ายและขวาของ ListView ของหน้า Home 
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          // Header Card
          HeaderCard(location: "Bangkok, Thailand"),

          // หน้าทักทาย ผู้ใช้ Good Morning , Good Afternoon , Good Evening
          SizedBox(height: 20),
          Text(
            'Hey Halal ${DateTime.now().hour < 12 ? 'Good Morning' : DateTime.now().hour < 18 ? 'Good Afternoon' : 'Good Evening'}',
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
          SectionHeaderCard(label: 'All Categories', onViewAll: () {
            // Handle view all categories
          }),

          
        ],
      ), 
    );
  }
}