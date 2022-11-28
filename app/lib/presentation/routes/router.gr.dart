// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:dartz/dartz.dart' as _i9;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i6;

import '../../domain/note/note.dart' as _i8;
import '../home/home_page.dart' as _i2;
import '../note/note_page.dart' as _i3;
import '../note_form/note_form_page.dart' as _i4;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    NoteRoute.name: (routeData) {
      final args = routeData.argsAs<NoteRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.NotePage(key: args.key, note: args.note));
    },
    NoteFormRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.NoteFormPage(key: args.key, note: args.note));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(HomeRoute.name, path: '/home'),
        _i5.RouteConfig(NoteRoute.name, path: '/note'),
        _i5.RouteConfig(NoteFormRoute.name, path: '/note-form')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.NotePage]
class NoteRoute extends _i5.PageRouteInfo<NoteRouteArgs> {
  NoteRoute({_i7.Key? key, required _i8.Note note})
      : super(NoteRoute.name,
            path: '/note', args: NoteRouteArgs(key: key, note: note));

  static const String name = 'NoteRoute';
}

class NoteRouteArgs {
  const NoteRouteArgs({this.key, required this.note});

  final _i7.Key? key;

  final _i8.Note note;

  @override
  String toString() {
    return 'NoteRouteArgs{key: $key, note: $note}';
  }
}

/// generated route for
/// [_i4.NoteFormPage]
class NoteFormRoute extends _i5.PageRouteInfo<NoteFormRouteArgs> {
  NoteFormRoute({_i7.Key? key, required _i9.Option<_i8.Note> note})
      : super(NoteFormRoute.name,
            path: '/note-form', args: NoteFormRouteArgs(key: key, note: note));

  static const String name = 'NoteFormRoute';
}

class NoteFormRouteArgs {
  const NoteFormRouteArgs({this.key, required this.note});

  final _i7.Key? key;

  final _i9.Option<_i8.Note> note;

  @override
  String toString() {
    return 'NoteFormRouteArgs{key: $key, note: $note}';
  }
}
