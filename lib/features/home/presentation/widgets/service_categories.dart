import 'package:flutter/material.dart';
import 'service_category_card.dart';

class ServiceCategories extends StatelessWidget {
  const ServiceCategories({super.key});

  static const categories = [
    ServiceCategory(name: 'Plumbing', icon: Icons.plumbing_outlined),
    ServiceCategory(name: 'AC Repair', icon: Icons.ac_unit_outlined),
    ServiceCategory(name: 'Electric', icon: Icons.electrical_services_outlined),
    ServiceCategory(name: 'Cleaning', icon: Icons.cleaning_services_outlined),
    ServiceCategory(name: 'Painting', icon: Icons.format_paint_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (_, __) => const SizedBox(width: 18),
        itemBuilder: (context, index) {
          final category = categories[index];

          return ServiceCategoryCard(
            service: category,
            onTap: () {
              // Navigation will be added later.
            },
          );
        },
      ),
    );
  }
}
