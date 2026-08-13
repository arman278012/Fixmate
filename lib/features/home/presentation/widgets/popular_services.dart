import 'package:flutter/material.dart';
import 'popular_service_card.dart';

class PopularServices extends StatelessWidget {
  const PopularServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const [
          PopularServiceCard(
            title: 'AC Service',
            description: 'Repair & maintenance',
            icon: Icons.ac_unit_rounded,
            rating: 4.8,
            reviews: 124,
          ),
          SizedBox(width: 16),
          PopularServiceCard(
            title: 'Home Cleaning',
            description: 'Deep cleaning service',
            icon: Icons.cleaning_services_rounded,
            rating: 4.7,
            reviews: 98,
          ),
          SizedBox(width: 16),
          PopularServiceCard(
            title: 'Electrician',
            description: 'Electrical repair',
            icon: Icons.electrical_services_rounded,
            rating: 4.9,
            reviews: 76,
          ),
        ],
      ),
    );
  }
}
