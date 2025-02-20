import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //for set a timer
  startTimer() async {
    Timer(const Duration(seconds: 3), () {

    
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
      

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Center(
       child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png",
            width: 200,
            height: 200,),
            const SizedBox(height: 10,),
            Text("TravelTales ",
                style: GoogleFonts.acme(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
                ),),
            const SizedBox(height: 10,),
            const CircularProgressIndicator(
              color: Colors.green,
            ),
          ],
        ),
     ),
    );
  }
}