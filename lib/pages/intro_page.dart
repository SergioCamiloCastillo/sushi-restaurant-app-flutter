import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            // shop name
            Text(
              "Sushi Man",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/salmon_eggs.png'),
            ),
            SizedBox(
              height: 25,
            ),
            // title
            Text(
              "El sabor de la comida japonesa",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            // subtitle
            Text(
              "Siente el sabor de uno de los platos japoneses mas populares desde cualquier lugar y el cualqueir momento",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),
            SizedBox(
              height: 25,
            ),
            MyButton(
              text: 'Empezar',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            )
            // get started button
          ],
        ),
      ),
    );
  }
}
