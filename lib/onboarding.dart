import 'package:flutter/material.dart';
import 'tabler_icons.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 104, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Easy Way to Your Next Destination',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            FilledButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => const Color.fromARGB(255, 194, 243, 164),
                ),
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.black),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Let's go!"),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.airplanemode_on),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
