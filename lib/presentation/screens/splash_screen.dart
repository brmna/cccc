import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Espera 3 segundos y navega a la siguiente pantalla
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/terms');
    });
  }

  @override
  Widget build(BuildContext context) {
    //tamaño de la pantalla
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD9C9CD),
              Color(0xFFD4AAB3),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'B',
                style: GoogleFonts.ballet(
                  fontSize: height * 0.22,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: height * 0.03),
              Text(
                'Beauty App',
                style: GoogleFonts.anticDidone(
                  fontSize: height * 0.028,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
