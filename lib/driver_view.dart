import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DriverView extends StatefulWidget {
  const DriverView({super.key});

  @override
  State<DriverView> createState() => _DriverViewState();
}

class _DriverViewState extends State<DriverView> {

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "شركة افاضة",
                          style: GoogleFonts.balooBhaijaan2(fontSize: 20, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                        ),
                        Text(
                          "الإثنين ٦ ذو الحجة ١٤٤٦ | ٨:٣٢م",
                          style: GoogleFonts.balooBhaijaan2(fontSize: 12, color: const Color(0xFF727272)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(color: Color(0xFFE49B14), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.local_phone_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(color: Color(0xFFE49B14), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'معلومات الرحلة',
                  style: GoogleFonts.balooBhaijaan2(fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFE2E2E2),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'رقم الرحلة', // Replace 'Title' with your actual title
                          style: GoogleFonts.balooBhaijaan2(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF727272),
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 8), // Adjust the width as needed
                            Text(
                              '32434738873', // Replace 'Number of Tickets' with your actual ticket count
                              style: GoogleFonts.balooBhaijaan2(fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8), // Adjust the width as needed
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFE2E2E2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'الصالة', // Replace 'Title' with your actual title
                                style: GoogleFonts.balooBhaijaan2(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF727272),
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'الجنوبية', // Replace 'Number of Tickets' with your actual ticket count
                                    style: GoogleFonts.balooBhaijaan2(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(color: Color(0xFF0D2852), shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFE2E2E2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'البوابة', // Replace 'Title' with your actual title
                                style: GoogleFonts.balooBhaijaan2(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF727272),
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'A-1', // Replace 'Number of Tickets' with your actual ticket count
                                    style: GoogleFonts.balooBhaijaan2(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(color: Color(0xFF0D2852), shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFE2E2E2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'الموقف', // Replace 'Title' with your actual title
                                style: GoogleFonts.balooBhaijaan2(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF727272),
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'C-23', // Replace 'Number of Tickets' with your actual ticket count
                                    style: GoogleFonts.balooBhaijaan2(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFE2E2E2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'وقت الدخول', // Replace 'Title' with your actual title
                                style: GoogleFonts.balooBhaijaan2(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF727272),
                                  fontSize: 10,
                                ),
                              ),
                              Center(
                                child: Text(
                                  '٧:١٥ م', // Replace 'Number of Tickets' with your actual ticket count
                                  style: GoogleFonts.balooBhaijaan2(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFE2E2E2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'البوابة', // Replace 'Title' with your actual title
                                style: GoogleFonts.balooBhaijaan2(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF727272),
                                  fontSize: 10,
                                ),
                              ),
                              Center(
                                child: Text(
                                  '٨:٠٠ م', // Replace 'Number of Tickets' with your actual ticket count
                                  style: GoogleFonts.balooBhaijaan2(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFFE2E2E2),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'لوحة الحافلة', // Replace 'Title' with your actual title
                                style: GoogleFonts.balooBhaijaan2(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF727272),
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'A D T    3 0 2 2', // Replace 'Number of Tickets' with your actual ticket count
                                    style: GoogleFonts.balooBhaijaan2(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'حالة الحافلة',
                  style: GoogleFonts.balooBhaijaan2(fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF373737)),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(color: Color(0xFF0D2852), shape: BoxShape.circle),
                      child: Center(child: Text("1", style: GoogleFonts.balooBhaijaan2(color: Colors.white, fontSize: 20),))
                    ),
                    const SizedBox(width: 10,),
                    Text("قادم إلى المطار", style: GoogleFonts.balooBhaijaan2(fontWeight: FontWeight.bold, fontSize: 12),),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE49C14),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(color: Color(0xFFE49C14), shape: BoxShape.circle),
                            child: const Center(child: Icon(Icons.check, color: Colors.white, size: 18,))
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          "١٢:٣٤ م",
                          style: GoogleFonts.balooBhaijaan2(fontSize: 12, color: const Color(0xFF727272)),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(color: Color(0xFF0D2852), shape: BoxShape.circle),
                      child: Center(child: Text("1", style: GoogleFonts.balooBhaijaan2(color: Colors.white, fontSize: 20),))
                    ),
                    const SizedBox(width: 10,),
                    Text("قادم إلى المطار", style: GoogleFonts.balooBhaijaan2(fontWeight: FontWeight.bold, fontSize: 12),),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 4,
                        decoration: const BoxDecoration(
                          color: Color(0xFFC1C1C1),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(color: Color(0xFFC1C1C1), shape: BoxShape.circle),
                        child: const Center(child: Icon(Icons.check, color: Colors.white, size: 18,))
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Color(0xFF0D2852), shape: BoxShape.circle),
                        child: Center(child: Text("1", style: GoogleFonts.balooBhaijaan2(color: Colors.white, fontSize: 20),))
                    ),
                    const SizedBox(width: 10,),
                    Text("قادم إلى المطار", style: GoogleFonts.balooBhaijaan2(fontWeight: FontWeight.bold, fontSize: 12),),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 4,
                        decoration: const BoxDecoration(
                            color: Color(0xFFC1C1C1),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(color: Color(0xFFC1C1C1), shape: BoxShape.circle),
                        child: const Center(child: Icon(Icons.check, color: Colors.white, size: 18,))
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Color(0xFF0D2852), shape: BoxShape.circle),
                        child: Center(child: Text("1", style: GoogleFonts.balooBhaijaan2(color: Colors.white, fontSize: 20),))
                    ),
                    const SizedBox(width: 10,),
                    Text("قادم إلى المطار", style: GoogleFonts.balooBhaijaan2(fontWeight: FontWeight.bold, fontSize: 12),),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 4,
                        decoration: const BoxDecoration(
                            color: Color(0xFFC1C1C1),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(color: Color(0xFFC1C1C1), shape: BoxShape.circle),
                        child: const Center(child: Icon(Icons.check, color: Colors.white, size: 18,))
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: const CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
