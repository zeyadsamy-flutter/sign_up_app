import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_app/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String id = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/splash.png"),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xff91DDFF),
                          Color(0xff7A9EAE),
                        ], 
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds);
                    },
                    child: Text(
                      "LOGO",
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: GoogleFonts.courierPrime().fontFamily,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Text(
            "Lorem Ipsum".toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              height: 1,
              fontWeight: FontWeight.w700,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Lorem Ipsum is a dummy text used as placeholder",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                height: 1,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                colors: [Color(0xff91DDFF), Color(0xff7A9EAE)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(75, 0, 0, 0),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Login.id,
                );
              },
              child:  Text(
                "Enter".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
