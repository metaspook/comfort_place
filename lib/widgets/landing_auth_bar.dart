import 'package:comfort_place/controllers/controllers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LandingAuthBar extends StatelessWidget {
  const LandingAuthBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final isSignedIn = context.watch<AuthController>().isSignedIn;
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => context.read<AuthController>().signedIn(),
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.google,
                  size: 25, color: Colors.black.withOpacity(.80)),
              const SizedBox(width: 17.5),
              Text(
                'Sign in with Google',
                style: TextStyle(
                    fontSize: 17.5, color: Colors.black.withOpacity(.80)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
              style:
                  const TextStyle(fontSize: 17.5, fontWeight: FontWeight.w400),
              children: [
                const TextSpan(text: "Don't have account? "),
                TextSpan(
                    text: "Register here",
                    style:
                        const TextStyle(decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Signin Text Clicked');
                      }),
              ]),
        ),
      ],
    );
  }
}
