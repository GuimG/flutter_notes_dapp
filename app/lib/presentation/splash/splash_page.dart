import 'package:dapp/presentation/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return loadingScreen();
    }

    return const HomePage();
  }

  Widget loadingScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            children: const [
              // Image
              Expanded(
                child: Center(
                  child: FlutterLogo(size: 100),
                ),
              ),

              // Circular progress indicator
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CupertinoActivityIndicator(
                      radius: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  initData() async {
    Future.delayed(const Duration(milliseconds: 500));

    setState(() {
      isLoading = false;
    });
  }
}
