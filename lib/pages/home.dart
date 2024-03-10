import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';

import 'package:Connect/model/getip.dart';
import 'package:Connect/pages/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:get_ip_address/get_ip_address.dart';
import 'package:dotenv/dotenv.dart' show load, env;
import 'package:http/http.dart' as http;
import 'package:slider_button/slider_button.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        // appBar: AppBar(
        //   title: Text('W E L C O M E'),
        //   centerTitle: true,
        //   titleTextStyle: TextStyle(
        //       color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        //   backgroundColor: Colors.transparent,
        // ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     image:DecorationImage(
              //       image: Image(

              //     image: AssetImage('assets/images/em.jpg'),
              //     fit: BoxFit.cover,

              //   ))
              //    ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image(
                  image: AssetImage('assets/images/em.png'),
                  // color: Colors.white38,
                  // filterQuality: FilterQuality.high,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  // colorBlendMode: BlendMode.overlay,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Unleash The Power of \n Conversations!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The ultimate chatting app designed to\n enhance your communication \nexperience',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),

              // Center(
              //   child: QrImageView(
              //     backgroundColor: Colors.white,
              //     data: '',
              //     size: 280,
              //     // You can include embeddedImageStyle Property if you
              //     //wanna embed an image from your Asset folder
              //     embeddedImageStyle: QrEmbeddedImageStyle(),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // DefaultTextStyle(
              //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              //     child: Text('Your IP: 192.168.1.2',
              //         style: TextStyle(color: Colors.white))),
              // DefaultTextStyle(
              //     style: TextStyle(
              //         fontSize: 15, fontWeight: FontWeight.w700),
              //     child: Text('Powerd By Bugs and Glitches')),
              //     )
              // Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //           // height: double.maxFinite,
              //           height: 50,
              //           width: 250,
              //           child: TextFormField(
              //             minLines: null,
              //             maxLines: null,
              //             expands: true,
              //             // enabled: true,
              //             // scribbleEnabled: true,
              //             // textAlign: TextAlign.justify,
              //             textAlignVertical: TextAlignVertical.center,
              //             style: TextStyle(color: Colors.white),
              //             cursorColor: Colors.deepOrange,

              //             decoration: InputDecoration(
              //                 hintText: '192.168.1.2',
              //                 prefixIcon: Container(
              //                   margin: EdgeInsets.only(left: 10),
              //                   width: 5,
              //                   alignment: Alignment.centerLeft,
              //                   child: Text(
              //                     'IP : ',
              //                     style: TextStyle(
              //                         color: Colors.white,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ),
              //                 hintStyle: TextStyle(color: Colors.white),
              //                 focusColor: Colors.white,
              //                 fillColor: Colors.grey.shade800,
              //                 filled: true,
              //                 enabledBorder: OutlineInputBorder(
              //                     borderSide: BorderSide(
              //                         color: Colors.white, width: 0),
              //                     borderRadius: BorderRadius.circular(5)),
              //                 border: UnderlineInputBorder(
              //                     borderSide: BorderSide(
              //                         color: Colors.black, width: 0),
              //                     borderRadius:
              //                         BorderRadius.all(Radius.circular(5)))),
              //           )),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 85, vertical: 5),
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 50,
              //         width: double.maxFinite,
              //         decoration: BoxDecoration(
              //             color: Colors.deepOrange,
              //             borderRadius: BorderRadius.circular(5)),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Container(
              //               margin: EdgeInsets.only(top: 3),
              //               child: Icon(
              //                 Icons.shape_line,
              //                 color: Colors.grey.shade900,
              //                 size: 23,
              //               ),
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               'P A I R',
              //               style: TextStyle(
              //                   fontSize: 20, fontWeight: FontWeight.bold),
              //             ),
              //           ],
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),

        // connect button
        // bottomNavigationBar: GestureDetector(
        //   onTap: () => {
        //     Navigator.pushAndRemoveUntil(context,
        //         MaterialPageRoute(builder: (_) => Chat()), (route) => false)
        //   },
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        //     child: Container(
        //       margin: EdgeInsets.only(bottom: 30),
        //       alignment: Alignment.center,
        //       height: 70,
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         color: Colors.deepOrange,
        //       ),
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Container(
        //             height: 60,
        //             width: 60,
        //             decoration: BoxDecoration(
        //                 color: Colors.grey.shade900,
        //                 borderRadius: BorderRadiusDirectional.circular(50)),
        //             margin: EdgeInsets.only(left: 5),
        //             child: Icon(
        //               Icons.arrow_forward,
        //               color: Colors.white,
        //               size: 23,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Row(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 // Container(
        //                 //   margin: EdgeInsets.only(top: 3),
        //                 //   child: Icon(
        //                 //     Icons.qr_code,
        //                 //     color: Colors.grey.shade900,
        //                 //     size: 23,
        //                 //   ),
        //                 // ),
        //                 SizedBox(
        //                   width: 5,
        //                 ),
        //                 DefaultTextStyle(
        //                     style: TextStyle(
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.grey.shade900),
        //                     child: Text('Tap to Connect...')),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SliderButton(
                backgroundColor: Colors.deepOrange,
                buttonColor: Colors.grey.shade900,
                buttonSize: 60,
                action: () async {
                  ///Do something here OnSlide
                  return Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => Chat()),
                      (route) => false);
                },
                label: Text(
                  "Slide to Connect",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 30,
                  color: Colors.deepOrange,
                )),
          ),
        ),
      ),
    );
  }
}
