import 'package:auto_route/auto_route.dart';
import 'package:poc_agora_io/src/router/app_router.gr.dart';
import 'package:poc_agora_io/src/sample/routes/sample_routes.dart';

const String _ROOT = '/';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        ...SampleRoutes.routes,
      ];
}
