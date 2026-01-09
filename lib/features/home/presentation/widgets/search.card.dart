import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {

  final String? title;
  final ValueChanged<String>? onChanged;

  const SearchCard({
    super.key,
    this.title,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // ตกแแต่งกล่องค้นหา หรือ พื้นหลังของ Search Card
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey[600]),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: title ?? 'Search for restaurants or dishes',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}