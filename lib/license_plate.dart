import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scalable_ocr/flutter_scalable_ocr.dart';
import 'package:google_fonts/google_fonts.dart';


class LicenseOCR extends StatefulWidget {
  const LicenseOCR({super.key, required this.title});

  final String title;

  @override
  State<LicenseOCR> createState() => _LicenseOCRState();
}

class _LicenseOCRState extends State<LicenseOCR> {
  String text = "";
  bool isOpen = false;

  Future<void> setText(value) async {
    String text = value;
    if (text.contains("NGL 2030") && !isOpen) {

      isOpen = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(

          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              insetPadding: const EdgeInsets.symmetric(horizontal: 10),

              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16), // Add some space between items
                  // Company name
                   Row(
                    children: [
                      const Icon(Icons.person, color: Color(0xFFE49B14),),
                      const SizedBox(width: 10,),
                      Text("اسم الشركة: ", style:  GoogleFonts.balooBhaijaan2(fontSize: 12, color: const Color(0xFF969696)),),
                      const SizedBox(width: 5,),

                      Text("شركة الذاكرين",   style: GoogleFonts.balooBhaijaan2(fontSize: 12,color: const Color(0xFF373737) )),
                    ],
                  ),
                  const SizedBox(height: 8), // Add some space between items

                  // Entered date
                  Row(
                    children: [
                      const Icon(Icons.access_time, color: Color(0xFFE49B14),),
                      const SizedBox(width: 10,),
                      Text("وقت الدخول: ", style:  GoogleFonts.balooBhaijaan2(fontSize: 12, color: const Color(0xFF969696)),),
                      const SizedBox(width: 5,),

                      Text("الإثنين ٦ ذو الحجة ١٤٤٦ | ٨:٣٢م",   style: GoogleFonts.balooBhaijaan2(fontSize: 12,color: const Color(0xFF373737) )),
                    ],
                  ),
                  const SizedBox(height: 30), // Add some space between items

                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('تم', style: GoogleFonts.balooBhaijaan2(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFE49B14)),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)), // Set the width to full and adjust the height as needed
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set the border radius to 10
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            );
          },
        ).then((value) => isOpen = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero, // Set padding to zero
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ScalableOCR(
          paintboxCustom: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4.0
            ..color = const Color.fromARGB(153, 102, 160, 241),
          boxLeftOff: 10,
          boxBottomOff: 5,
          boxRightOff: 10,
          boxTopOff: 5,
          boxHeight: MediaQuery.of(context).size.height / 3,
          getRawData: (value) {
            inspect(value);
          },
          getScannedText: (value) {
            setText(value);
          },
        ),
      ),
    );
  }
}

// class Result extends StatelessWidget {
//   const Result({
//     Key? key,
//     required this.text,
//   }) : super(key: key);
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text("Readed text: $text", style: const TextStyle(),);
//   }
// }