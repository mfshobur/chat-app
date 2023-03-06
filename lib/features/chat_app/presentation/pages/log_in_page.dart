import 'package:chat_app/features/chat_app/presentation/pages/home_page.dart';
import 'package:chat_app/features/chat_app/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../core/theme/theme.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    usernameController = TextEditingController(text: '');
    emailController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
    confirmPasswordController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    Widget header() {
      return Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Bur Chat',
              style: TextStyle(
                fontSize: 32,
                color: color.primary,
                fontWeight: fontBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Log In',
              style: TextStyle(
                fontSize: 32,
                fontWeight: fontBold,
              ),
            ),
          ),
        ],
      );
    }

    Widget form() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 7,
          ),
          TextFormField(
            controller: emailController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              fillColor: const Color(0xffECEEEB),
              hintText: 'example@gmail.com',
              hintStyle: const TextStyle(
                color: Color(0xffADADAD),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 7,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              fillColor: const Color(0xffECEEEB),
              hintText: '...',
              hintStyle: const TextStyle(
                color: Color(0xffADADAD),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      );
    }

    Widget signUpSection() {
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              },
              child: const Text('Log In'),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account? '),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                    (route) => false,
                  );
                },
                child: Text(
                  'Signup here',
                  style: TextStyle(
                    color: color.primary,
                    fontWeight: fontMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                form(),
                const SizedBox(
                  height: 16,
                ),
                signUpSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
