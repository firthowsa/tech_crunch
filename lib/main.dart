import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'package:tech_crunch/src/configs/router/app_router.dart';
import 'package:tech_crunch/src/configs/themes/app_themes.dart';
import 'package:tech_crunch/src/domain/repositories/api_repository.dart';
import 'package:tech_crunch/src/domain/repositories/database_repository.dart';
import 'package:tech_crunch/src/locator.dart';
import 'package:tech_crunch/src/presentation/cubits/local_articles/local_articles_cubit.dart';
import 'package:tech_crunch/src/presentation/cubits/remote_articles/remote_articles_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocalArticlesCubit(
            locator<DatabaseRepository>(),
          )..getAllSavedArticles(),
        ),

        BlocProvider(
          create: (context) => RemoteArticlesCubit(
            locator<ApiRepository>(),
          )..getBreakingNewsArticles(),
        )
      ],
      child: OKToast(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
        ),
      ),
    );
  }
}