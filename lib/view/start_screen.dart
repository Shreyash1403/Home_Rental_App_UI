import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/view/home_screen.dart';

class MyStartScreen extends StatefulWidget {
  const MyStartScreen({super.key});

  @override
  State<MyStartScreen> createState() => _MyStartScreenState();
}

class _MyStartScreenState extends State<MyStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Image.asset(
                "assets/1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            "Lets find your Paradise",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Find your perfect dream space\n with just a few clicks",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(101, 101, 101, 1)),
          ),
          const SizedBox(
            height: 13,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomeScreen()),
              );
            },
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(220, 55)),
                backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(32, 169, 247, 1))),
            child: Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          )
        ],
      ),
    );
  }
}
