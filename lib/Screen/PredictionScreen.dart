import 'dart:async';

import 'package:ecomile_monitor/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class PredictionScreen extends StatefulWidget {
  const PredictionScreen({super.key});

  @override
  State<PredictionScreen> createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {

  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _initial = CameraPosition(target: LatLng(24.85105145653238, 67.00384109325924),zoom: 14);
  @override
  Widget build(BuildContext context) {
    print("this is map body");
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.search,
                                      color: Colors.black, size: 35),
                                  Text(
                                    'SEARCH',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'تلاش کریں',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.black, size: 35),
                                  Text(
                                    'SAVED',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'محفوظ کریں',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.access_time,
                                      color: Colors.black, size: 35),
                                  Text(
                                    'RECENT',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'حالیہ پیشن گوئی',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                    child: EcomileTextField(
                      prefixIcon: Icon(Icons.search),
                      suffiixIcon: Icon(Icons.star),
                      hintText: "Search",
                      keyboardType: TextInputType.text,
                    ),
                  )
        
                ],
              ),
            ),
            Container(
              height: 400, // Set a finite height for the container
              child: SafeArea(
                child: GoogleMap(
                  initialCameraPosition: _initial,
                  mapType: MapType.normal,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
        backgroundColor: const Color(0xff217C7E),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xffFFFFFF),
          ),
          iconSize: 30,
          onPressed: () {
            // _scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Column(
          children: [
            Text(
              "PREDICTION ",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: const Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "پیشن گوئی",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: const Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        centerTitle: true);
  }
}
