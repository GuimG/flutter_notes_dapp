import 'package:dapp/constants/services.dart';
import 'package:dapp/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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

    return const HomeScreen();
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
    await blockchainService.init();

    setState(() {
      isLoading = false;
    });
  }
}
