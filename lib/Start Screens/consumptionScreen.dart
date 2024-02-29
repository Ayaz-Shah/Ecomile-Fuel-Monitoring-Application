import 'package:ecomile_monitor/Start%20Screens/measurementScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/vehicleTrackingScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class consumptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 120),
                                child: Image.asset(
                                  'assets/images/circle 1.png',
                                  height: 15,
                                  width: 15, // Adjust height as needed
                                  // fit: BoxFit.cover,
                                ),
                              ),
                              Image.asset(
                                'assets/images/Polygon 2.png',
                                height: 95,
                                width: 133.24, // Adjust height as needed
                                // fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only( top: 60),
                                child: Image.asset(
                                  'assets/images/Star 2.png',
                                  height: 50,
                                  width: 50, // Adjust height as needed
                                  // fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 60,),
                                child: Image.asset(
                                  'assets/images/Vector 2.png',
                                  height: 107.5,
                                  width: 125.69, // Adjust height as needed
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ]),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              alignment: Alignment.center,
                              'assets/images/prediction.png',
                              height: 381,
                              width: 381, // Adjust height as needed
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/Ellipse 2.png',
                              height: 81.1,
                              width: 79.51, // Adjust height as needed
                              // fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40,bottom: 50),
                              child: Image.asset(
                                'assets/images/circle 1.png',
                                height: 20,
                                width: 20, // Adjust height as needed
                                alignment: Alignment.topLeft,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: 'PREDICTION\n',
                              style: GoogleFonts.montaguSlab(
                                color: const Color(0xff000000),
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'FUEL\n',
                                  style: GoogleFonts.montaguSlab(
                                    color: const Color(0xff000000),
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: 'CONSUMPTION\n',
                                  style: GoogleFonts.montaguSlab(
                                    color: const Color(0xff000000),
                                    fontSize: 23,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                  'We offers predictive fuel consumption\n',
                                  style: GoogleFonts.montaguSlab(
                                    color: const Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: ' for vehicles, accurately estimating \n',
                                  style: GoogleFonts.montaguSlab(
                                    color: const Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'fuel needed for travel distances.\n\n',
                                  style: GoogleFonts.montaguSlab(
                                    color: const Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff09209B),
                      shape:
                      BoxShape.circle, // This makes the container circular
                    ),
                    child: IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MeasurementScreen() ));
                        // Add functionality for forward button
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff09209B),
                      shape:
                      BoxShape.circle, // This makes the container circular
                    ),
                    child: IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_forward, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => vehicleTrackingScreen() ));
                        // Add functionality for forward button
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
