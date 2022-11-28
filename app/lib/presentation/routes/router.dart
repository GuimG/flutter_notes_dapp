import 'package:auto_route/auto_route.dart';
import 'package:dapp/presentation/home/home_page.dart';
import 'package:dapp/presentation/note/note_page.dart';
import 'package:dapp/presentation/note_form/note_form_page.dart';
import 'package:dapp/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage, path: "/home"),
    AutoRoute(page: NotePage, path: "/note"),
    AutoRoute(page: NoteFormPage, path: "/note-form"),
  ],
)
class $AppRouter {}
