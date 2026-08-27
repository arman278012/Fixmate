import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/service_mock_data.dart';
import '../widgets/service_card.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final services = ServiceMockData.services;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: services.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          final service = services[index];

          return ServiceCard(
            service: service,
            onTap: () {
              debugPrint('SERVICE CLICKED: ${service.name}');

              context.push('/services/${service.id}', extra: service);
            },
          );
        },
      ),
    );
  }
}
