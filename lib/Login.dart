import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_app/Sign_Up.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
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
            Text(
              "Welcome back!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 28 / 24,
                letterSpacing: 0,
                fontFamily: GoogleFonts.roboto().fontFamily,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Log in to existing LOGO account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 18 / 14,
                letterSpacing: 0,
                color: Color(0xff515151),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: Icon(
                    Icons.person_outline,
                  ), 
                  filled: true,
                  fillColor: Color(
                    0xffF3F3F3,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none, 
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                  filled: true,
                  fillColor: Color(0xffF3F3F3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(right: 50, top: 5),
              child: Text(
                "Forgot Password?",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0xff515151),
                  fontSize: 14,
                  height: 28 / 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 200,
              height: 55,
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
                onPressed: () {},
                child: const Text(
                  "LOG IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Or sign up using",
              style: TextStyle(
                color: Color(0xff282828),
                letterSpacing: 0,
                height: 1,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.inter().fontFamily,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xfff8f8f8),
                  child: Image.asset("assets/images/facebook.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xfff8f8f8),
                    child: Image.asset("assets/images/google.png"),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xfff8f8f8),
                  child: Image.asset("assets/images/apple.png"),
                ),
              ],
            ),
            SizedBox(height: 70),
            Text.rich(
              TextSpan(
                text: "Don’t have an account? ",
                style: TextStyle(
                  fontSize: 16,
                  height: 28 / 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                ),
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          height: 28 / 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0,
                          color: Colors.black,
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
    );
  }
}
