import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 252, 251, 250),
        ),
        const SizedBox(height: 80),
        Text(
          'Learn Flutter the Fun way!',
          style: GoogleFonts.lato(
              color: Color.fromARGB(255, 247, 244, 248), fontSize: 24),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: Text('Start Quiz'),
        ),
      ],
    ));
  }
}
