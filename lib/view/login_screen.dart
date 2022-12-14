import 'package:flutter/material.dart';
// import 'package:mvvm_architecture_with_provider/utils/routes/routes_name.dart';
import 'package:mvvm_architecture_with_provider/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Utils.toastMessage('No internet connection');
              // Navigator.pushNamed(context, RoutesName.home);

              // Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const Text('Click')),
      ),
    );
  }
}
