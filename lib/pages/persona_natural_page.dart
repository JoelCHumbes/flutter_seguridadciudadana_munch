import 'package:flutter/material.dart';
import 'package:seguridad_ciudadana/widgets/sizebox_widget.dart';

class PersonaNatural extends StatelessWidget {
  const PersonaNatural({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_circle_left,
                    size: 30,
                    color: Color(0xff006DA3),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/ntt.png",
                  height: 100,
                ),
                spacingHeigth6,
                const Text(
                  "PERSONA NATURAL",
                  style: TextStyle(
                    color: Color(0xff4D9991),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
