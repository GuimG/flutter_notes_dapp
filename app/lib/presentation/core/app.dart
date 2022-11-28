import 'package:dapp/application/notes/notes_actor/notes_actor_bloc.dart';
import 'package:dapp/application/notes/notes_watcher/notes_watcher_bloc.dart';
import 'package:dapp/injection.dart';
import 'package:dapp/presentation/core/theme.dart';
import 'package:dapp/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NotesWatcherBloc>(
          create: (context) => getIt<NotesWatcherBloc>()..add(const NotesWatcherEvent.fetched()),
        ),
        BlocProvider<NotesActorBloc>(create: (context) => getIt<NotesActorBloc>()),
      ],
      child: AppRoot(),
    );
  }
}

class AppRoot extends StatelessWidget {
  final _appRouter = AppRouter();

  AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotesActorBloc, NotesActorState>(
      // TODO: This listener has to listen to events on the blockhchain network rather than the application layer
      listener: (context, state) {
        if (state.status == NotesActorStatus.success) {
          context.read<NotesWatcherBloc>().add(const NotesWatcherEvent.fetched());
        }
      },
      child: MaterialApp.router(
        title: 'Dapp Demo',
        theme: themeData,
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
