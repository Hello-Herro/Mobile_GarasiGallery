import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/dependency_injection.dart';
import 'package:flutter_application_1/src/config/constants/string.dart';
import 'package:flutter_application_1/src/config/resources/get_platform.dart';
import 'package:flutter_application_1/src/config/router/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  await initializeBlocDependencies();
  initializePlatform();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiBlocProvider(
      providers: [
        
      ],
      child: OKToast(
        child: MaterialApp.router(
          title: appTitle,
          routerDelegate: appRouter.router.routerDelegate,
          routeInformationProvider: appRouter.router.routeInformationProvider,
          routeInformationParser: appRouter.router.routeInformationParser,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}