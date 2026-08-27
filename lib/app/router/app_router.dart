import 'package:fixmate/features/home/presentation/screens/service_search_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/services/data/models/service_model.dart';
import '../../features/services/presentation/screens/service_details_screen.dart';
import '../../features/services/presentation/screens/services_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    // HOME
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),

    // SERVICES
    GoRoute(
      path: '/services',
      builder: (context, state) {
        return const ServicesScreen();
      },
      routes: [
        // SERVICE DETAILS
        GoRoute(
          path: ':serviceId',
          builder: (context, state) {
            final service = state.extra as ServiceModel;

            return ServiceDetailsScreen(service: service);
          },
        ),
      ],
    ),

    // SEARCH
    GoRoute(
      path: '/search',
      builder: (context, state) {
        return const ServiceSearchScreen();
      },
    ),
  ],
);
