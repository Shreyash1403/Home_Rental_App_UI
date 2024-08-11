import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/models/model.dart';
import 'package:home_rental_app/view/details.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final TextEditingController titleController = TextEditingController();

  List<Model> villaList = [
    Model(
        imageUrl: 'assets/3.png',
        name: "Night Hill Villa",
        location: "London,Night Hill",
        rating: 4.9,
        price: 5900,
        detailUrl: 'assets/6.png'),
    Model(
        name: 'Night Villa',
        imageUrl: 'assets/4.png',
        location: 'London,New Park',
        price: 4900,
        rating: 4.8,
        detailUrl: 'assets/6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hey Dravid,",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(101, 101, 101, 1),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Image.asset("assets/2.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                "Let’s find your best\nresidence ",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22.0),
                child: TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: "Search your favourite paradise",
                    hintStyle:
                        const TextStyle(color: Color.fromRGBO(33, 33, 33, 1)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(33, 33, 33, 1),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Row(
                  children: [
                    Text(
                      "Most popular",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(32, 169, 247, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 306,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: villaList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return MyDetailScreen(villaList[index]);
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 18),
                        width: 211,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("${villaList[index].imageUrl}"),
                                  Positioned(
                                      child: Row(
                                    children: [
                                      Container(
                                        height: 23,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: const Color.fromRGBO(
                                              112, 200, 250, 1),
                                        ),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Color.fromRGBO(
                                                  251, 227, 12, 1),
                                              size: 15,
                                              weight: 15,
                                            ),
                                            Text(
                                              "${villaList[index].rating}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color.fromRGBO(
                                                      255, 255, 255, 1)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                "${villaList[index].name}",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "${villaList[index].location}",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(72, 72, 72, 1)),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "\$${villaList[index].price}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              32, 169, 247, 1))),
                                  TextSpan(
                                      text: '/Month',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              72, 72, 72, 1)))
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Row(
                  children: [
                    Text(
                      "Nearby your location",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "More",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(32, 169, 247, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 9),
                    height: 108,
                    width: 365,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(children: [
                      Image.asset("assets/5.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Jumeriah Golf Estates Villa",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on_sharp),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "London,Area Plam Jumeriah",
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(90, 90, 90, 1)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.bed_outlined),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4 Bedrooms",
                                style: GoogleFonts.poppins(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(90, 90, 90, 1)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.bathtub_rounded),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5 Bathrooms",
                                style: GoogleFonts.poppins(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(90, 90, 90, 1)),
                              )
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
