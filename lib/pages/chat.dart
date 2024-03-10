import 'package:Connect/components/header.dart';
import 'package:Connect/model/getip.dart';
import 'package:Connect/pages/home.dart';
import 'package:Connect/utils/info.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey.shade900,
        titleTextStyle: TextStyle(
            color: Colors.deepOrangeAccent.shade400,
            fontSize: 25,
            fontWeight: FontWeight.bold),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              highlightColor: Colors.white,
              onTap: () {},
              child: Container(
                  height: 45,
                  width: 45,
                  // color: Colors.amber,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 1, color: Colors.deepOrange)),
                  child: CircleAvatar(
                    // radius: 10, // Image radius
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/91453437?v=4'),
                  )),
            ),
          ),
        ],
        // leading: Padding(
        //   padding: const EdgeInsets.symmetric(vertical: , horizontal: 0),
        //   child: Container(
        //     height: 50,
        //     width: 50,
        //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        //     margin: EdgeInsets.all(3),
        //     child: InkWell(
        //       borderRadius: BorderRadius.circular(50),
        //       onTap: () {},
        //       child: Container(
        //           height: 45,
        //           width: 45,
        //           // color: Colors.amber,
        //           decoration: BoxDecoration(
        //               // color: Colors.white,
        //               borderRadius: BorderRadius.circular(50),
        //               border: Border.all(width: 1, color: Colors.deepOrange)),
        //           child: CircleAvatar(
        //             // radius: 10, // Image radius
        //             backgroundColor: Colors.amber,
        //             backgroundImage: NetworkImage(
        //                 'https://avatars.githubusercontent.com/u/91453437?v=4'),
        //           )),
        //     ),
        //   ),
        // ),
        // leadingWidth: 40,
        title: InkWell(
          // style: ButtonStyle(overlayColor: MaterialStateColor.transparent),
          onTap: () {
            showModalBottomSheet<void>(
              backgroundColor: Colors.deepOrange,
              elevation: 5,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // alignment: Alignment.bottomCenter,
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                // color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () => {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => Home()),
                                              (route) => false)
                                        },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.black,
                                    )),
                                Text(
                                  '192.168.1.0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                // Text(''),
                                IconButton(
                                    onPressed: () => {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => Info()),
                                              (route) => false)
                                        },
                                    icon: Icon(
                                      Icons.account_tree_rounded,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: QrImageView(
                            // backgroundColor: Colors.w,
                            data: '192.168.1.2',
                            size: 200,
                            // You can include embeddedImageStyle Property if you
                            //wanna embed an image from your Asset folder
                            embeddedImageStyle:
                                QrEmbeddedImageStyle(size: Size(100, 100)),
                          ),
                        ),
                        // const Text('Modal BottomSheet'),
                        // ElevatedButton(
                        //   child: const Text('Close BottomSheet'),
                        //   onPressed: () => Navigator.pop(context),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          child: GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'R E C O N N E C T',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'C O N N E C T',
              style: TextStyle(fontSize: 25, color: Colors.deepOrange),
            ),
          ),
        ),
        // centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade900,
      body: Container(
        // height: double.infinity,
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('helo'),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: TextFormField(
                    cursorErrorColor: Colors.red,

                    // style: TextStyle(color: Colors.white),
                    minLines: null,
                    maxLines: null,
                    expands: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        // focusColor: Colors.amber,
                        fillColor: Colors.orange.shade100.withOpacity(0.9),
                        filled: true,
                        prefixIcon: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(right: 3, left: 5),
                          decoration: BoxDecoration(
                              // color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        suffixIcon: Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(right: 5, left: 3),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            icon: Icon(
                              Icons.sensors_rounded,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF000000)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabled: true,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFF000000)),
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 20,
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 10),
        color: Colors.grey.shade900,
        child: Text(
          'Powerd by Bugs and Glitches',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: Colors.grey.shade300),
        ),
      ),
    );
  }
}
