import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            Text(
              "Welcome",
              style: GoogleFonts.inter(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Start by entering your phone number to continue",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Phone Number",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.grey.shade700,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "+ 234 800 000 0000",
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.grey.shade600,
                fixedSize: Size.fromHeight(52),
              ),

              onPressed: () {},

              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "By continuing, you agree to our ",
                style: GoogleFonts.inter(color: Colors.grey, fontSize: 13),
              
                children: [
                  TextSpan(
                    text: "Terms & Privacy Policy",
                    style: GoogleFonts.inter(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                      fontSize: 12
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
