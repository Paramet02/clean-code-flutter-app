import 'package:flutter/material.dart';

class SectionHeaderCard extends StatelessWidget {

  final String label;
  final VoidCallback? onViewAll;
  final bool showViewAll;
  
  const SectionHeaderCard({
    super.key,
    required this.label,
    this.onViewAll,
    this.showViewAll = true
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        if (showViewAll)
          InkWell(
            onTap: onViewAll,
            child: Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Icon(Icons.arrow_forward, size: 16, color: Colors.grey),
            ],
          ),
        )
      ],

    );
  }
}