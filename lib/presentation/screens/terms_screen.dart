import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo con imagen visible
          Image.asset(
            'assets/images/terminos.jpg',
            fit: BoxFit.cover,
          ),

          // Sombra suave para contraste
          Container(color: Colors.black.withOpacity(0.25)),

          // Contenido principal
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Términos y condiciones",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.anticDidone(
                      fontSize: height * 0.035,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Container(
                    padding: EdgeInsets.all(width * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1. Aceptación\nAl registrarte y utilizar esta aplicación, aceptas los presentes Términos y Condiciones. Si no estás de acuerdo, no debes usar la app.\n\n"
                          "2. Uso permitido\nLa aplicación se debe usar únicamente para los fines para los que fue diseñada. Está prohibido utilizarla para actividades ilegales, ofensivas, fraudulentas o que perjudiquen a otros usuarios.\n\n"
                          "3. Privacidad y datos personales\nLos datos que proporciones (como nombre, correo y contraseña) serán utilizados únicamente para el funcionamiento de la app. No se compartirán con terceros sin tu consentimiento, salvo obligación legal.",
                          style: GoogleFonts.anticDidone(
                            fontSize: height * 0.018,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.pinkAccent,
                              value: accepted,
                              onChanged: (value) {
                                setState(() {
                                  accepted = value ?? false;
                                });
                              },
                            ),
                            Expanded(
                              child: Text(
                                "He leído y acepto los Términos y Condiciones",
                                style: GoogleFonts.anticDidone(
                                  fontSize: height * 0.017,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.7),
                              foregroundColor: Colors.black54,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.25,
                                vertical: height * 0.015,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: accepted
                                ? () {
                                    Navigator.pushNamed(
                                        context, '/get-started');
                                  }
                                : null,
                            child: Text(
                              "Siguiente",
                              style: GoogleFonts.anticDidone(
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
