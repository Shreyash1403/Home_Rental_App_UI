import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/models/model.dart';

class MyDetailScreen extends StatelessWidget {
  final Model villa;

  const MyDetailScreen(this.villa, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Details",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 38),
              Stack(
                children: [
                  Image.asset(
                    "${villa.detailUrl}",
                    fit: BoxFit.cover,
                    width:
                        double.infinity, // Ensures the image takes full width
                    height: 244,
                  ),
                  Positioned(
                    top: 14,
                    left: 14,
                    child: Container(
                      height: 27,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(112, 200, 250, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(251, 227, 12, 1),
                            size: 23,
                          ),
                          Text(
                            "${villa.rating}",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${villa.name}",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        Text(
                          "${villa.location}",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$${villa.price}",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(32, 169, 247, 1),
                          ),
                        ),
                        TextSpan(
                          text: " /Month",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 141,
                      width: 112,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, top: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.bed_outlined,
                              color: Color.fromRGBO(90, 90, 90, 1),
                              size: 30,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Bedrooms",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(90, 90, 90, 1),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "5",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 141,
                      width: 112,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, top: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.bathtub_rounded,
                              color: Color.fromRGBO(90, 90, 90, 1),
                              size: 30,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Bathrooms",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(90, 90, 90, 1),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "6",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14, top: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.fullscreen,
                            color: Color.fromRGBO(90, 90, 90, 1),
                            size: 30,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Square ft",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(90, 90, 90, 1),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "7,000 sq ft",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Opacity(
                opacity: 0.6,
                child: Text(
                  "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit. Exercitation\nveniam consequat sunt nostrud amet.\nAmet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 20),
        color: Colors.transparent,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromRGBO(32, 169, 247, 1),
            ),
            minimumSize: MaterialStateProperty.all(
              const Size(220, 55),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Rent Now",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}
