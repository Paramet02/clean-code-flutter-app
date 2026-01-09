import 'package:flutter/material.dart';

class CategorriesCard extends StatefulWidget {
  const CategorriesCard({super.key});

  @override
  State<CategorriesCard> createState() => _CategorriesCardState();
}

class _CategorriesCardState extends State<CategorriesCard> {
  // เก็บ Index ที่ถูกเลือกไว้
  int selectedIndex = 0;

  final List<Map<String, String>> categories = [
    {'label': 'All', 'emoji': '🔥'},
    {'label': 'Hot Dog', 'emoji': '🌭'},
    {'label': 'Burger', 'emoji': '🍔'},
    {'label': 'Pizza', 'emoji': '🍕'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? Colors.orange : Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Text(
                    category['emoji']!,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 5),
                  Text(
                    category['label']!,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      );
  }
}
