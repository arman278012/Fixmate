import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

class PopularServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final double rating;
  final int reviews;

  const PopularServiceCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, size: 52, color: AppColors.primary),
          ),

          const SizedBox(height: 14),

          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),

          const SizedBox(height: 4),

          Text(
            description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              const Icon(
                Icons.star_rounded,
                size: 18,
                color: AppColors.warning,
              ),
              const SizedBox(width: 4),
              Text(
                rating.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 4),
              Text('($reviews)', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
