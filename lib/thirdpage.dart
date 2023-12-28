// ignore_for_file: unnecessary_statements
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:lottie/lottie.dart';
import 'package:newriddels/play.dart';
// import 'dart:ffi';
// import 'package:chemistry/result.dart';
import 'package:newriddels/resultpage.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
// import 'package:delayed_display/delayed_display.dart';
// import 'result.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
// import 'package:slimy_card/slimy_card.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
import 'package:spring_button/spring_button.dart';
// import 'package:flutter_html/flutter_html.dart';

class Jsondata extends StatelessWidget {
  final mydata;
  var questionsjson;
  int coinsshowt;
  Jsondata({Key key, this.mydata, this.questionsjson, this.coinsshowt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(
          questionsjson,
        ),
        builder: (context, snapshot) {
          List mydata = json.decode(snapshot.data.toString());

          if (mydata == null) {
            return Center(child: Text("Loading"));
          } else {
            return Quizedata(
              mydata: mydata,
              jsonfile: questionsjson,
              coinsshowt: coinsshowt,
            );
          }
        },
      ),
    );
  }
}

class Quizedata extends StatefulWidget {
  final mydata;
  var jsonfile;
  var coinsshowt;

  Quizedata({Key key, @required this.mydata, this.jsonfile, this.coinsshowt})
      : super(key: key);

  @override
  _QuizedataState createState() => _QuizedataState(mydata: mydata);
}

class _QuizedataState extends State<Quizedata> {
  final player = AudioCache();
  final hcolor = Colors.lightGreenAccent;
  var changeto = true;
  var changeto2 = true;
  var progressbar = 0;
  List mydata;
  int i = 1;
  var show = 0;
  var showtextfunction;
  int timer = 0;
  bool canceltimer = false;
  String showtimer = "1";
  Color colortoshow = Colors.orange;
  Color right = Color.fromARGB(167, 255, 255, 255);
  Color wrong = Color.fromARGB(137, 244, 67, 54);
  var iq = 100;
  var ans = 0;
  var wrans = 0;
  int marks = 0;
  var thisis;
  bool doit = false;
  bool doit2 = false;
  var a = 0;
  var b = 0;
  var c = 0;
  var d = 0;
  int _counter = 0;
//   final directory = (await getApplicationDocumentsDirectory ()).path; //from path_provide package
// String fileName = DateTime.now().microsecondsSinceEpoch;
// path = '$directory';

// screenshotController.captureAndSave(
//     path //set path where screenshot will be saved
//     fileName:fileName
// );

  void _takeScreenshot() async {
// final imageFile = await _screenshotController.capture();
// Share.shareFiles([imageFile.path]);
// Share.shareFiles(['${imageFile.path}']);
// await _screenshotController.capture(delay: const Duration(milliseconds: 10)).then((Uint8List image) async {
//   if (image != null) {
//     final directory = await getApplicationDocumentsDirectory();
//     final imagePath = await File('${directory.path}/image.png').create();
//     await imagePath.writeAsBytes(image);

    /// Share Plugin
//     await Share.shareFiles([imagePath.path]);
//   }
// });
  }

// Uint8List _imageFile;

// Future<dynamic> ShowCapturedWidget(
//     BuildContext context, Uint8List capturedImage) {
//   return showDialog(
//     useSafeArea: false,
//     context: context,
//     builder: (context) => Scaffold(
//       body: Center(
//           child: capturedImage != null
//               ? Image.memory(capturedImage)
//               : Container()),
//     ),
//   );
// }

// var coinsshow;
// AudioCache audioCache = AudioCache();

  void showcoinsdialouge() async {
    showDialog(
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
// height: 50,
// width: 26,
// color: Colors.red,

                          child: Lottie.asset(
                        "assets/coincollect.json",
// "assets/chemistrylotti.json",
// height: 250,
                      ))),
                ],
              ),
            ));
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pop();
  }

  void answer() {
    if (widget.coinsshowt > 299) {
      showdilougbox2();
      setState(() {
        dothis();
      });
    } else if (widget.coinsshowt < 299) {
      player.play('w.mp3');

      // showdilougbox();
      checkcon();
    }
// checkcon();
  }

  void showdilougbox() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId:
//         "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(52, 0, 0, 0),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(
//         255, 179, 179, 180),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         300, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print(
//           "Native Ad: $result --> $value");
//     },
//   ),
// ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(0, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0),
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(150, 0, 0, 0),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(
                                0,
                                0,
                              ),
                            )
                          ],
                        ),
                        child: Container(
                            height: 250,
                            width: 250,
// color: Colors.green,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(0, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0),
                                ]),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(150, 0, 0, 0),
                                    spreadRadius: 6,
                                    blurRadius: 5,
                                    offset: Offset(
                                      0,
                                      0,
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/greenop3.png",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Container(
                                      height: 80,
// color: Colors.amber,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: AutoSizeText(
                                            "See  Vedios  And  Earn  More  Coins",
                                            style: GoogleFonts.koHo(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
//  fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black54),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              gradient: LinearGradient(colors: [
                                                Color.fromARGB(0, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0),
                                              ]),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      150, 0, 0, 0),
                                                  spreadRadius: 3,
                                                  blurRadius: 5,
                                                  offset: Offset(
                                                    0,
                                                    0,
                                                  ),
                                                )
                                              ],
                                            ),
                                            child: Container(
                                                height: 30,
                                                width: 90,
// color: Colors.green,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            150, 0, 0, 0),
                                                        spreadRadius: 3,
                                                        blurRadius: 5,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/greenop2.png",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    )),
                                                child: Center(
                                                  child: Container(
// color: Colors.green,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            Color.fromARGB(
                                                                0, 0, 0, 0),
                                                            Color.fromARGB(
                                                                0, 0, 0, 0),
                                                          ]),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              57, 0, 0, 0),
                                                          spreadRadius: 3,
                                                          blurRadius: 5,
                                                          offset: Offset(
                                                            0,
                                                            0,
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 0, left: 0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Container(
// color: Colors.amber,
                                                            height: 25,
                                                            width: 55,

// color: Colors.red,
                                                            child: AutoSizeText(
                                                                "600",
                                                                // "1000",
                                                                style:
                                                                    GoogleFonts
                                                                        .lato(
                                                                  textStyle: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline1,
                                                                  // fontSize: 25,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  color: Colors
                                                                      .white,
                                                                )),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 0),
                                                            child: Container(
                                                              height: 20,

                                                              // color: Colors.red,

                                                              child:
                                                                  Image.asset(
                                                                "assets/coin2.png",
                                                                // "assets/chemistrylotti.json",
                                                                // height: 250,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 5, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SpringButton(
                                            SpringButtonType.OnlyScale,
                                            Container(
                                              height: 50,
                                              width: 50,
// color: Colors.red,

                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
                                                  ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          150, 0, 0, 0),
                                                      spreadRadius: 3,
                                                      blurRadius: 6,
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    )
                                                  ],
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/wrong.png",
                                                    ),
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                            onTapDown: (_) async => {
                                                  player.play('w.mp3'),
                                                  await Future.delayed(
                                                      Duration(seconds: 1)),
                                                  Navigator.of(context).pop(),
                                                }),
                                        SpringButton(
                                            SpringButtonType.OnlyScale,
                                            Container(
                                              height: 50,
                                              width: 50,
// color: Colors.red,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
                                                  ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          150, 0, 0, 0),
                                                      spreadRadius: 3,
                                                      blurRadius: 6,
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    )
                                                  ],
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/right.png",
                                                    ),
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                            onTapDown: (_) async => {
                                                  player.play('w.mp3'),
                                                  await Future.delayed(
                                                      Duration(seconds: 0)),
                                                  Navigator.of(context).pop(),
                                                  FacebookInterstitialAd
                                                      .loadInterstitialAd(
                                                          placementId:
                                                              "616076523573705_616096503571707",
                                                          listener: (result,
                                                              value) async {
                                                            if (result ==
                                                                InterstitialAdResult
                                                                    .LOADED) {
                                                              FacebookInterstitialAd
                                                                  .showInterstitialAd();
                                                            }
                                                            setState(() async {
                                                              limit = 14;
                                                              await Future.delayed(
                                                                  Duration(
                                                                      seconds:
                                                                          1));
                                                              showcoinsdialouge();
                                                              dothis3();
                                                            });
                                                          }),
                                                }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ))),
                  ],
                ),
              ));
    });
  }

  void showdilougbox2() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) => Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId: "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     // height: 200,
//     backgroundColor:
//         Color.fromARGB(0, 59, 59, 59).withOpacity(0.8),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(255, 179, 179, 180),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         0, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print("Native Ad: $result --> $value");
//     },
//   ),
// ),
                    Container(
                      height: 372,
                      width: 450,
                      child: AlertDialog(
                          backgroundColor: Colors.black12,
// title: Text("CHEMIST-CHAMP"),
                          content: Padding(
                            padding: const EdgeInsets.only(top: 0, left: 0),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    height: 280,
                                    width: 320,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(colors: [
                                          Color.fromARGB(0, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0),
                                        ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(150, 0, 0, 0),
                                            spreadRadius: 6,
                                            blurRadius: 5,
                                            offset: Offset(
                                              0,
                                              0,
                                            ),
                                          )
                                        ],
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/greenop3.png",
                                          ),
                                          fit: BoxFit.fill,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Center(
                                              child: Container(
                                                height: 190,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            150, 0, 0, 0),
                                                        spreadRadius: 6,
                                                        blurRadius: 5,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/greenop3.png",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    )),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0, left: 5),
                                                  child: Center(
                                                      child: Html(
                                                          data:
                                                              "<pre style = font-size:120%;text-align:center;font-family:sans-serif;color:white;><i><b>${mydata[2][i.toString()]}</b></i></pre>")
//  Text(
//     mydata[2][
//         i.toString()],
//     style: GoogleFonts
//         .lato(
//       textStyle: Theme.of(
//               context)
//           .textTheme
//           .headline1,
//       fontSize: 40,
//       fontWeight:
//           FontWeight
//               .w600,
//       fontStyle:
//           FontStyle
//               .italic,
//       color: Colors
//           .white,
//     ))
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: SpringButton(
                                                SpringButtonType.OnlyScale,
                                                Container(
                                                  height: 50,
                                                  width: 50,
// color: Colors.red,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            Color.fromARGB(
                                                                0, 0, 0, 0),
                                                            Color.fromARGB(
                                                                0, 0, 0, 0),
                                                          ]),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              150, 0, 0, 0),
                                                          spreadRadius: 3,
                                                          blurRadius: 6,
                                                          offset: Offset(
                                                            0,
                                                            0,
                                                          ),
                                                        )
                                                      ],
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "assets/right.png",
                                                        ),
                                                        fit: BoxFit.fill,
                                                      )),
                                                ),
                                                onTapDown: (_) async => {
                                                      player.play('w.mp3'),
                                                      await Future.delayed(
                                                          Duration(seconds: 1)),
                                                      Navigator.of(context)
                                                          .pop(),
                                                    }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ));
    });
  }

  void showcoinsdialouge1() async {
    showDialog(
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
// height: 50,
// width: 26,
// color: Colors.red,

                          child: Lottie.asset(
                        "assets/coincollect.json",
// "assets/chemistrylotti.json",
// height: 250,
                      ))),
                ],
              ),
            ));
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pop();
  }

  Map<String, Color> btncolor = {
    "a": Colors.green.withOpacity(0.2),
    "b": Colors.green.withOpacity(0.2),
    "c": Colors.green.withOpacity(0.2),
    "d": Colors.green.withOpacity(0.2),
  };

  _QuizedataState({
    this.mydata,
// this.ans,
// this.coinss,
// this.colortoshow,
// this.iq,
// this.marks,
// this.right,
// this.wrong,
// this.wrans,
  });

  void checkanswer(index) {
    if (index == 0) {
      if (mydata[2][i.toString()] == mydata[1][i.toString()][op[0]]) {
// player.play('right.mp3');
        setState(() {
          marks = marks + 10;

          ans = ans + 1;
          colortoshow = right;
          player.play('r.mp3');

          _Q[0] = _right[0];
        });

        Timer(Duration(seconds: 1), nextquestion);
        canceltimer = true;
      } else {
        setState(() {
          colortoshow = wrong;
          ;
          marks = marks - 10;
          iq = iq - 15;
          wrans = wrans + 1;
          ans = ans - 1;

          player.play('w2.mp3');
          _Q[0] = _wrong[0];
        });
      }
    }
    if (index == 1) {
      if (mydata[2][i.toString()] == mydata[1][i.toString()][op[1]]) {
// player.play('right.mp3');
        setState(() {
          marks = marks + 10;

          ans = ans + 1;
          colortoshow = right;
          player.play('r.mp3');
          _Q[1] = _right[1];
        });

        Timer(Duration(seconds: 1), nextquestion);
        canceltimer = true;
      } else {
        setState(() {
          colortoshow = wrong;
          ;
          marks = marks - 10;
          iq = iq - 15;
          wrans = wrans + 1;
          ans = ans - 1;

          player.play('w2.mp3');
          _Q[1] = _wrong[1];
        });
      }
    }
    if (index == 2) {
      if (mydata[2][i.toString()] == mydata[1][i.toString()][op[2]]) {
// player.play('right.mp3');
        setState(() {
          marks = marks + 10;

          ans = ans + 1;
          colortoshow = right;
          player.play('r.mp3');
          _Q[2] = _right[2];
        });

        Timer(Duration(seconds: 1), nextquestion);
        canceltimer = true;
      } else {
        setState(() {
          colortoshow = wrong;
          ;
          marks = marks - 10;
          iq = iq - 15;
          wrans = wrans + 1;
          ans = ans - 1;

          player.play('w2.mp3');
          _Q[2] = _wrong[2];
        });
      }
    }
    if (index == 3) {
      if (mydata[2][i.toString()] == mydata[1][i.toString()][op[3]]) {
// player.play('right.mp3');
        setState(() {
          marks = marks + 10;

          ans = ans + 1;
          colortoshow = right;
          player.play('r.mp3');
          _Q[3] = _right[3];
        });

        Timer(Duration(seconds: 1), nextquestion);
        canceltimer = true;
      } else {
        setState(() {
          colortoshow = wrong;
          ;
          marks = marks - 10;
          iq = iq - 15;
          wrans = wrans + 1;
          ans = ans - 1;

          player.play('w2.mp3');
          _Q[3] = _wrong[3];
        });
      }
    }
// if (mydata[2][i.toString()] == mydata[1][i.toString()][op]) {
//   // player.play('right.mp3');
//   setState(() {
//     marks = marks + 10;

//     ans = ans + 1;
//     colortoshow = right;
//     player.play('r.mp3');
//   });

//   Timer(Duration(seconds: 1), nextquestion);
//   canceltimer = true;
// } else {
//   setState(() {
//     colortoshow = wrong;
//        ;
//     marks = marks - 10;
//     iq = iq - 15;
//     wrans = wrans + 1;
//     ans = ans - 1;

//     player.play('w2.mp3');
//   });
// }
// setState(() {
//   btncolor[k] = colortoshow;
// });
  }

  void nextquestion() {
    setState(() {
      canceltimer = false;
      timer = 0;
      if (i < 10) {
        i++;
      } else {
        setState(() async {
          FacebookInterstitialAd.loadInterstitialAd(
            placementId: "616076523573705_616096503571707",
            listener: (result, value) async {
              if (result == InterstitialAdResult.LOADED) {
                FacebookInterstitialAd.showInterstitialAd();
              }
            },
          );
          await Future.delayed(Duration(seconds: 2));
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Result(
                    marks: marks ?? 0,
                    iq: iq ?? 0,
                    ans: ans ?? 0,
                    wrans: wrans ?? 0,
                    coinsshowr: widget.coinsshowt,
                  )));
        });
      }

      a = 0;
      b = 0;
      c = 0;
      d = 0;
      _Q[0] = _Q1[0];
      _Q[1] = _Q1[1];
      _Q[2] = _Q1[2];
      _Q[3] = _Q1[3];
      _right[0] = _right1[0];
      _right[1] = _right1[1];
      _right[2] = _right1[2];
      _right[3] = _right1[3];
      _wrong[0] = _wrong1[0];
      _wrong[1] = _wrong1[1];
      _wrong[2] = _wrong1[2];
      _wrong[3] = _wrong1[3];
    });

    starttimer();
  }

  @override
  void initState() {
    starttimer();

// showtextfuntionn(k);
    super.initState();
    FacebookAudienceNetwork.init(
// testingId: "a77955ee-3304-4635-be65-81029b0f5201",
// iOSAdvertiserTrackingEnabled: true,
        );
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer == 100) {
          t.cancel();
          nextquestion();
        }
        if (canceltimer == true) {
          t.cancel();
        }
        if (timer != 100) {
          timer = timer + 1;
        }
        showtimer = timer.toString();
      });
    });
// setState(() {
//   if (widget.jsonfile == "assets/formulaqlevel1.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel2.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel3.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel4.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel5.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel6.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel7.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel8.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel9.json") {
//     doit = true;
//   } else if (widget.jsonfile == "assets/formulaqlevel10.json") {
//     doit = true;
//   } else {
//     doit = false;
//   }
// });
  }

  var limit = 0;
  void dothis() async {
    player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowt = widget.coinsshowt - 10;
      });
    }
  }

  void dothis2() async {
    player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowt = widget.coinsshowt + 10;
      });
    }
  }

  void dothis3() async {
    player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowt = widget.coinsshowt + 10;
      });
    }
  }

// void showtextfuntionn()  {
//  setState(() {
//     if (widget.jsonfile == "assets/standflevel1.json") {
//     showtextfunction =  Text(mydata[1][i.toString()][k],
//         style: GoogleFonts.lato(
//             textStyle: Theme.of(context).textTheme.headline1,
//             fontSize: 40,
//             fontWeight: FontWeight.w300,
//             fontStyle: FontStyle.italic,
//             color: Colors.black));
//   } else {
//     showtextfunction = Html(data: mydata[1][i.toString()][k]);
//   }
//  });
// }

// Widget choicebutton(String k ,index) {
//   return Padding(
//     padding: EdgeInsets.symmetric(
//       vertical: 5,
//       horizontal: 15,
//     ),
//     child: MaterialButton(
//       onPressed: () {
//         setState(() {
//           if (k == 'a') {
//             if (a == 0) {
//               checkanswer(k);
//               a = a + 1;
//             }
//             if (a > 0) {}
//           } else if (k == 'b') {
//             if (b == 0) {
//               checkanswer(k);
//               b = b + 1;
//             }
//             if (b > 0) {}
//           } else if (k == 'c') {
//             if (c == 0) {
//               checkanswer(k);
//               c = c + 1;
//             }
//             if (c > 1) {}
//           } else if (k == 'd') {
//             if (d == 0) {
//               checkanswer(k);
//               d = d + 1;
//             }
//             if (d > 1) {}
//           }
//         });
//       },
//       child: Container(
//         height: 75,
//         // width: 450,
//         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(
//                              0),

//                                        boxShadow: [
//                                          BoxShadow(
//                                            color: Color.fromARGB(66, 0, 0, 0),
//                                            spreadRadius: 1,
//                                            blurRadius: 3,
//                                            offset: Offset(
//                                              0,
//                                              0,
//                                            ),
//                                          )
//                                        ],
//                             image: DecorationImage(
//                               image: AssetImage(
//                            _Q[index],
//                               ),
//                               fit: BoxFit.fill,
//                             )),
//         child: Center(
//           child: Html(
//             data:
//                 "<pre style = font-size:150%;text-align:center;font-family:sans-serif;color:white;><i><b>${mydata[1][i.toString()][k]}</b></i></pre>",
//             // data: mydata[1][i.toString()][k],
//           ),
//         ),
//         //  Center(
//         //     child: Text(mydata[1][i.toString()][k],
//         //         style: GoogleFonts.koHo(
//         //             textStyle:
//         //                 Theme.of(context).textTheme.headline1,
//         //             fontSize: 25,
//         //             fontWeight: FontWeight.w700,
//         //             fontStyle: FontStyle.italic,
//         //             color: Colors.white)),
//         //   )
//       ),
//       color: btncolor[k],
//       // color: Colors.black,
//       splashColor: Colors.black,
//       highlightColor: Colors.lightGreenAccent,
//       // minWidth: 300,
//       height: 70,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//     ),
//   );
// }

  var _right = [
    "assets/rightans.png",
    "assets/rightans.png",
    "assets/rightans.png",
    "assets/rightans.png",
  ];
  var _right1 = [
    "assets/rightans.png",
    "assets/rightans.png",
    "assets/rightans.png",
    "assets/rightans.png",
  ];
  var _wrong = [
    "assets/wrongans.png",
    "assets/wrongans.png",
    "assets/wrongans.png",
    "assets/wrongans.png",
  ];
  var _wrong1 = [
    "assets/wrongans.png",
    "assets/wrongans.png",
    "assets/wrongans.png",
    "assets/wrongans.png",
  ];
  var _Q = [
    "assets/greenop2.png",
    "assets/greenop2.png",
    "assets/greenop2.png",
    "assets/greenop2.png",
  ];
  var _Q1 = [
    "assets/greenop2.png",
    "assets/greenop2.png",
    "assets/greenop2.png",
    "assets/greenop2.png",
  ];

  var op = [
    "a",
    "b",
    "c",
    "d",
  ];

  void checkcon() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: "616076523573705_616096503571707",
          listener: (result, value) async {
            if (result == InterstitialAdResult.LOADED) {
              FacebookInterstitialAd.showInterstitialAd();
            }
          },
        );
      }
      setState(() async {
// limit = 14;
        await Future.delayed(Duration(seconds: 4));
        showdilougbox2();
// dothis2();
      });
    } on SocketException catch (_) {
      showDialog(
          context: context,
          builder: (context) => Center(
                child: Text(
                  "Turn ON Internet Connection...",
                  style: GoogleFonts.koHo(
                    textStyle: Theme.of(context).textTheme.headline1,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ));
    }
  }

  Image _image;

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 850;
  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 0;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 1;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 85;
    var _aspectRatio = _width / cellHeight;
    return WillPopScope(
        onWillPop: () async {
          return showDialog(
              context: context,
              builder: (context) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId: "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     // height: 200,
//     backgroundColor:
//         Color.fromARGB(0, 59, 59, 59).withOpacity(0.8),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(255, 179, 179, 180),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         0, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print("Native Ad: $result --> $value");
//     },
//   ),
// ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(0, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0),
                            ]),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(150, 0, 0, 0),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(
                                  0,
                                  0,
                                ),
                              )
                            ],
                          ),
                          child: Container(
                              height: 220,
                              width: 230,
// color: Colors.green,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(0, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0),
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(150, 0, 0, 0),
                                      spreadRadius: 6,
                                      blurRadius: 5,
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/greenop3.png",
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Container(
                                        height: 100,
// color: Colors.amber,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: AutoSizeText(
                                              "Are You Sure You Really Want To Exit This Level..?",
                                              style: GoogleFonts.koHo(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
//  fontSize: 20,
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black54),
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 5, right: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SpringButton(
                                              SpringButtonType.OnlyScale,
                                              Container(
                                                height: 50,
                                                width: 50,
// color: Colors.red,

                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            150, 0, 0, 0),
                                                        spreadRadius: 3,
                                                        blurRadius: 6,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/wrong.png",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              onTapDown: (_) async => {
                                                    player.play('w.mp3'),
                                                    await Future.delayed(
                                                        Duration(seconds: 1)),
                                                    Navigator.of(context).pop(),
                                                  }),
                                          SpringButton(
                                              SpringButtonType.OnlyScale,
                                              Container(
                                                height: 50,
                                                width: 50,
// color: Colors.red,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            150, 0, 0, 0),
                                                        spreadRadius: 3,
                                                        blurRadius: 6,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/right.png",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    )),
                                              ),
                                              onTapDown: (_) async => {
                                                    player.play('w.mp3'),
                                                    await Future.delayed(
                                                        Duration(seconds: 1)),
                                                    Navigator.of(context).pop(),
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                ((context) =>
                                                                    Play()))),
                                                    FacebookInterstitialAd
                                                        .loadInterstitialAd(
                                                            placementId:
                                                                "616076523573705_616096503571707",
                                                            listener: (result,
                                                                value) async {
                                                              if (result ==
                                                                  InterstitialAdResult
                                                                      .LOADED) {
                                                                FacebookInterstitialAd
                                                                    .showInterstitialAd();
                                                              }
                                                            }),
                                                  }),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                    ],
                  ));
        },
        child: Scaffold(
          backgroundColor: Color.fromARGB(225, 0, 0, 0).withOpacity(0.8),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            elevation: 0,
            leading: Text(
              "",
              style: GoogleFonts.breeSerif(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),

// title: Text(
//   "Fast Foods",
//   style: GoogleFonts.breeSerif(
//       fontSize: 25,
//       fontWeight: FontWeight.w800,
//       color: Colors.black),
// ),
            actions: [
              GlassContainer(
// height: 40,
                width: MediaQuery.of(context).size.width * 1,
                blur: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        player.play('w.mp3');

                        showDialog(
                            context: context,
                            builder: (context) => Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId:
//         "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(52, 0, 0, 0),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(
//         255, 179, 179, 180),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         300, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print(
//           "Native Ad: $result --> $value");
//     },
//   ),
// ),
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            gradient: LinearGradient(colors: [
                                              Color.fromARGB(0, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0),
                                            ]),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    150, 0, 0, 0),
                                                spreadRadius: 3,
                                                blurRadius: 5,
                                                offset: Offset(
                                                  0,
                                                  0,
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Container(
                                              height: 250,
                                              width: 250,
// color: Colors.green,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient:
                                                      LinearGradient(colors: [
                                                    Color.fromARGB(0, 0, 0, 0),
                                                    Color.fromARGB(0, 0, 0, 0),
                                                  ]),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          150, 0, 0, 0),
                                                      spreadRadius: 6,
                                                      blurRadius: 5,
                                                      offset: Offset(
                                                        0,
                                                        0,
                                                      ),
                                                    )
                                                  ],
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/greenop3.png",
                                                    ),
                                                    fit: BoxFit.fill,
                                                  )),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 0),
                                                      child: Container(
                                                        height: 80,
// color: Colors.amber,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Center(
                                                            child: AutoSizeText(
                                                              "See  Vedios  And  Earn  More  Coins",
                                                              style: GoogleFonts
                                                                  .koHo(
                                                                      textStyle: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline1,
//  fontSize: 20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                      color: Colors
                                                                          .black54),
                                                              maxLines: 2,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                gradient:
                                                                    LinearGradient(
                                                                        colors: [
                                                                      Color.fromARGB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      Color.fromARGB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                    ]),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            150,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    spreadRadius:
                                                                        3,
                                                                    blurRadius:
                                                                        5,
                                                                    offset:
                                                                        Offset(
                                                                      0,
                                                                      0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Container(
                                                                  height: 30,
                                                                  width: 90,
// color: Colors.green,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(12),
                                                                      gradient: LinearGradient(colors: [
                                                                        Color.fromARGB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        Color.fromARGB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                      ]),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: Color.fromARGB(
                                                                              150,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          spreadRadius:
                                                                              3,
                                                                          blurRadius:
                                                                              5,
                                                                          offset:
                                                                              Offset(
                                                                            0,
                                                                            0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      image: DecorationImage(
                                                                        image:
                                                                            AssetImage(
                                                                          "assets/greenop2.png",
                                                                        ),
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      )),
                                                                  child: Center(
                                                                    child:
                                                                        Container(
// color: Colors.green,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                57,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                5,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),

                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right:
                                                                                0,
                                                                            left:
                                                                                0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            Container(
// color: Colors.amber,
                                                                              height: 25,
                                                                              width: 55,

// color: Colors.red,
                                                                              child: AutoSizeText("500",
                                                                                  // "1000",
                                                                                  style: GoogleFonts.lato(
                                                                                    textStyle: Theme.of(context).textTheme.headline1,
                                                                                    // fontSize: 25,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FontStyle.italic,
                                                                                    color: Colors.white,
                                                                                  )),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 0),
                                                                              child: Container(
                                                                                height: 20,

                                                                                // color: Colors.red,

                                                                                child: Image.asset(
                                                                                  "assets/coin2.png",
                                                                                  // "assets/chemistrylotti.json",
                                                                                  // height: 250,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ))),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 30,
                                                              left: 5,
                                                              right: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SpringButton(
                                                              SpringButtonType
                                                                  .OnlyScale,
                                                              Container(
                                                                height: 50,
                                                                width: 50,
// color: Colors.red,

                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                150,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                6,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(
                                                                            "assets/wrong.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                              ),
                                                              onTapDown:
                                                                  (_) async => {
                                                                        player.play(
                                                                            'w.mp3'),
                                                                        await Future.delayed(Duration(
                                                                            seconds:
                                                                                1)),
                                                                        Navigator.of(context)
                                                                            .pop(),
                                                                      }),
                                                          SpringButton(
                                                              SpringButtonType
                                                                  .OnlyScale,
                                                              Container(
                                                                height: 50,
                                                                width: 50,
// color: Colors.red,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                150,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                6,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        image:
                                                                            DecorationImage(
                                                                          image:
                                                                              AssetImage(
                                                                            "assets/right.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        )),
                                                              ),
                                                              onTapDown:
                                                                  (_) async => {
                                                                        player.play(
                                                                            'w.mp3'),
                                                                        await Future.delayed(Duration(
                                                                            seconds:
                                                                                0)),
                                                                        Navigator.of(context)
                                                                            .pop(),
                                                                        FacebookInterstitialAd.loadInterstitialAd(
                                                                            placementId: "616076523573705_616096503571707",
                                                                            listener: (result, value) async {
                                                                              if (result == InterstitialAdResult.LOADED) {
                                                                                FacebookInterstitialAd.showInterstitialAd();
                                                                              }
                                                                              setState(() async {
                                                                                limit = 14;
                                                                                await Future.delayed(Duration(seconds: 1));
                                                                                showcoinsdialouge();
                                                                                dothis3();
                                                                              });
                                                                            }),
                                                                      }),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                    ],
                                  ),
                                ));
                      },
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                player.play('w.mp3');

                                showDialog(
                                    context: context,
                                    builder: (context) => Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId:
//         "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(52, 0, 0, 0),
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Color.fromARGB(
//         255, 179, 179, 180),
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     keepAlive:
//         true, //set true if you do not want adview to refresh on widget rebuild
//     keepExpandedWhileLoading:
//         false, // set false if you want to collapse the native ad view when the ad is loading
//     expandAnimationDuraion:
//         300, //in milliseconds. Expands the adview with animation when ad is loaded
//     listener: (result, value) {
//       print(
//           "Native Ad: $result --> $value");
//     },
//   ),
// ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                      Color.fromARGB(
                                                          0, 0, 0, 0),
                                                    ]),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            150, 0, 0, 0),
                                                        spreadRadius: 3,
                                                        blurRadius: 5,
                                                        offset: Offset(
                                                          0,
                                                          0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Container(
                                                      height: 250,
                                                      width: 250,
// color: Colors.green,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          gradient:
                                                              LinearGradient(
                                                                  colors: [
                                                                Color.fromARGB(
                                                                    0, 0, 0, 0),
                                                                Color.fromARGB(
                                                                    0, 0, 0, 0),
                                                              ]),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromARGB(150,
                                                                      0, 0, 0),
                                                              spreadRadius: 6,
                                                              blurRadius: 5,
                                                              offset: Offset(
                                                                0,
                                                                0,
                                                              ),
                                                            )
                                                          ],
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              "assets/greenop3.png",
                                                            ),
                                                            fit: BoxFit.fill,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 0),
                                                              child: Container(
                                                                height: 80,
// color: Colors.amber,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child: Center(
                                                                    child:
                                                                        AutoSizeText(
                                                                      "See  Vedios  And  Earn  More  Coins",
                                                                      style: GoogleFonts.koHo(
                                                                          textStyle: Theme.of(context).textTheme.headline1,
//  fontSize: 20,
                                                                          fontWeight: FontWeight.w800,
                                                                          fontStyle: FontStyle.italic,
                                                                          color: Colors.black54),
                                                                      maxLines:
                                                                          2,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        gradient:
                                                                            LinearGradient(
                                                                                colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Color.fromARGB(
                                                                                150,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            spreadRadius:
                                                                                3,
                                                                            blurRadius:
                                                                                5,
                                                                            offset:
                                                                                Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      child: Container(
                                                                          height: 30,
                                                                          width: 90,
// color: Colors.green,
                                                                          decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(12),
                                                                              gradient: LinearGradient(colors: [
                                                                                Color.fromARGB(0, 0, 0, 0),
                                                                                Color.fromARGB(0, 0, 0, 0),
                                                                              ]),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  color: Color.fromARGB(150, 0, 0, 0),
                                                                                  spreadRadius: 3,
                                                                                  blurRadius: 5,
                                                                                  offset: Offset(
                                                                                    0,
                                                                                    0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              image: DecorationImage(
                                                                                image: AssetImage(
                                                                                  "assets/greenop2.png",
                                                                                ),
                                                                                fit: BoxFit.fill,
                                                                              )),
                                                                          child: Center(
                                                                            child:
                                                                                Container(
// color: Colors.green,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20),
                                                                                gradient: LinearGradient(colors: [
                                                                                  Color.fromARGB(0, 0, 0, 0),
                                                                                  Color.fromARGB(0, 0, 0, 0),
                                                                                ]),
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: Color.fromARGB(57, 0, 0, 0),
                                                                                    spreadRadius: 3,
                                                                                    blurRadius: 5,
                                                                                    offset: Offset(
                                                                                      0,
                                                                                      0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),

                                                                              child: Padding(
                                                                                padding: EdgeInsets.only(right: 0, left: 0),
                                                                                child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Container(
// color: Colors.amber,
                                                                                      height: 25,
                                                                                      width: 55,

// color: Colors.red,
                                                                                      child: AutoSizeText("500",
                                                                                          // "1000",
                                                                                          style: GoogleFonts.lato(
                                                                                            textStyle: Theme.of(context).textTheme.headline1,
                                                                                            // fontSize: 25,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontStyle: FontStyle.italic,
                                                                                            color: Colors.white,
                                                                                          )),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(left: 0),
                                                                                      child: Container(
                                                                                        height: 20,

                                                                                        // color: Colors.red,

                                                                                        child: Image.asset(
                                                                                          "assets/coin2.png",
                                                                                          // "assets/chemistrylotti.json",
                                                                                          // height: 250,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ))),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 30,
                                                                      left: 5,
                                                                      right: 5),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SpringButton(
                                                                      SpringButtonType
                                                                          .OnlyScale,
                                                                      Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            50,
// color: Colors.red,

                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(20),
                                                                            gradient: LinearGradient(colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                color: Color.fromARGB(150, 0, 0, 0),
                                                                                spreadRadius: 3,
                                                                                blurRadius: 6,
                                                                                offset: Offset(
                                                                                  0,
                                                                                  0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            image: DecorationImage(
                                                                              image: AssetImage(
                                                                                "assets/wrong.png",
                                                                              ),
                                                                              fit: BoxFit.fill,
                                                                            )),
                                                                      ),
                                                                      onTapDown:
                                                                          (_) async =>
                                                                              {
                                                                                player.play('w.mp3'),
                                                                                await Future.delayed(Duration(seconds: 1)),
                                                                                Navigator.of(context).pop(),
                                                                              }),
                                                                  SpringButton(
                                                                      SpringButtonType
                                                                          .OnlyScale,
                                                                      Container(
                                                                        height:
                                                                            50,
                                                                        width:
                                                                            50,
// color: Colors.red,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(20),
                                                                            gradient: LinearGradient(colors: [
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                              Color.fromARGB(0, 0, 0, 0),
                                                                            ]),
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                color: Color.fromARGB(150, 0, 0, 0),
                                                                                spreadRadius: 3,
                                                                                blurRadius: 6,
                                                                                offset: Offset(
                                                                                  0,
                                                                                  0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            image: DecorationImage(
                                                                              image: AssetImage(
                                                                                "assets/right.png",
                                                                              ),
                                                                              fit: BoxFit.fill,
                                                                            )),
                                                                      ),
                                                                      onTapDown:
                                                                          (_) async =>
                                                                              {
                                                                                player.play('w.mp3'),
                                                                                await Future.delayed(Duration(seconds: 0)),
                                                                                Navigator.of(context).pop(),
                                                                                FacebookInterstitialAd.loadInterstitialAd(
                                                                                    placementId: "616076523573705_616096503571707",
                                                                                    listener: (result, value) async {
                                                                                      if (result == InterstitialAdResult.LOADED) {
                                                                                        FacebookInterstitialAd.showInterstitialAd();
                                                                                      }
                                                                                      setState(() async {
                                                                                        limit = 14;
                                                                                        await Future.delayed(Duration(seconds: 1));
                                                                                        showcoinsdialouge();
                                                                                        dothis3();
                                                                                      });
                                                                                    }),
                                                                              }),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ))),
                                            ],
                                          ),
                                        ));
                              },
                              child: Container(
                                height: 40,
                                // color: Colors.amber,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Center(
                                    child: AutoSizeText(
                                      "+",
                                      style: GoogleFonts.koHo(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                          //  fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: Color.fromARGB(
                                              255, 231, 231, 231)),
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 30,
                                width: 85,
// color: Colors.green,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(61, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 6,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      )
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/greenop2.png",
                                      ),
                                      fit: BoxFit.cover,
                                    )),

                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 5),
                                  child: Container(
// color: Colors.black12,
                                    child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Center(
                                          child: Container(
                                            height: 25,
                                            width: 55,
// color: Colors.red,
                                            child: AutoSizeText(
                                                "${widget.coinsshowt ?? 0}",
// "1000",
                                                style: GoogleFonts.lato(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Container(
                                            height: 20,
// width: 26,
// color: Colors.red,

                                            child: Image.asset(
                                              "assets/coin2.png",
// "assets/chemistrylotti.json",
// height: 250,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                color: Colors.white.withOpacity(0.1),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.blue.withOpacity(0.3),
                  ],
                ),
//--code to remove border
                border: Border.fromBorderSide(BorderSide.none),
                shadowStrength: 5,
// shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(0),
                shadowColor: Colors.white.withOpacity(0.24),
              ),
            ],
          ),
          body:
// color: Colors.black12,
// height: MediaQuery.of(context).size.height * 0.93,
              Column(children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Container(
                  child: Center(
                      child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        children: [
                          DelayedDisplay(
                            delay: Duration(seconds: 1),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 10,
// width: 390,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
// gradient: LinearGradient(colors: [
//   Colors.black87.withOpacity(0.2),
//   Colors.black38.withOpacity(0.2),
// ]),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.lightGreenAccent
                                            .withOpacity(0.7),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      )
                                    ]),
                                child: DelayedDisplay(
                                  delay: Duration(seconds: 2),
                                  child: LiquidLinearProgressIndicator(
                                    value: timer / 100, // Defaults to 0.5.
                                    valueColor: AlwaysStoppedAnimation(Colors
                                        .lightGreenAccent), // Defaults to the current Theme's accentColor.
                                    backgroundColor: Colors
                                        .black12, // Defaults to the current Theme's backgroundColor.
                                    borderColor: Colors.black38,
                                    borderWidth: 1.0,
                                    borderRadius: 10.0,
                                    direction: Axis
                                        .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 2),
                            child: Container(
                                height: 180,

// width: 310,
// color: Colors.green,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(0, 255, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 6,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      )
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/greenop3.png",
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
//  height: 180,
// width: 400,
//  color: Colors.green.withOpacity(0.2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(colors: [
                                          Color.fromARGB(62, 0, 0, 0)
                                              .withOpacity(0.2),
                                          Color.fromARGB(47, 0, 0, 0)
                                              .withOpacity(0.2),
                                        ])),
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: doit
                                          ? Center(
                                              child: Html(
                                                data:
                                                    "<pre style = color:white;font-size:60%;><i><b>${mydata[0][i.toString()]}</b></i></pre>",
//  mydata[0][i.toString()]
                                              ),
                                            )
                                          : Center(
                                              child: Text(
                                                mydata[0][i.toString()],
                                                style: GoogleFonts.koHo(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.white),
                                              ),
                                            ),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: _aspectRatio,
// mainAxisSpacing: 3.0,
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ColumnSuper(
                              outerDistance: -30,
                              children: [
                                DelayedDisplay(
                                  delay: Duration(milliseconds: 400),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (index == 0) {
                                          if (a == 0) {
                                            checkanswer(index);
                                            a = a + 1;
                                          }
                                          if (a > 0) {}
                                        } else if (index == 1) {
                                          if (b == 0) {
                                            checkanswer(index);
                                            b = b + 1;
                                          }
                                          if (b > 0) {}
                                        } else if (index == 2) {
                                          if (c == 0) {
                                            checkanswer(index);
                                            c = c + 1;
                                          }
                                          if (c > 1) {}
                                        } else if (index == 3) {
                                          if (d == 0) {
                                            checkanswer(index);
                                            d = d + 1;
                                          }
                                          if (d > 1) {}
                                        }
                                      });
// function(index);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Container(
                                        height: 85,
// width: 380,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                _Q[index],
                                              ),
                                              fit: BoxFit.fill,
                                            )),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 10, right: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Html(
                                                data:
                                                    "<pre style = font-size:130%;text-align:center;font-family:sans-serif;color:#FFFFFF;><i><b>${mydata[1][i.toString()][op[index].toString()]}</b></i></pre>",
// data: mydata[1][i.toString()][k],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    DelayedDisplay(
                      delay: Duration(milliseconds: 1400),
                      child: ColumnSuper(
                        outerDistance: -20,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 5, left: 5, top: 0),
                                child: InkWell(
                                  onTap: () async {
// screenshotController
//     .capture(delay: Duration(milliseconds: 10))
//     .then((capturedImage) async {
//   ShowCapturedWidget(context, capturedImage);
// }).catchError((onError) {
//   print(onError);
// });
// HapticFeedback.heavyImpact();
                                    setState(() {
                                      changeto = true;
                                    });

                                    limit = 29;
                                    player.play('w2.mp3');

                                    answer();
                                    await Future.delayed(
                                        const Duration(seconds: 1));

// await Navigator.push(
//     context,
//     MaterialPageRoute(
//         builder: (context) => Homepage()));
                                    setState(() {
                                      changeto = false;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 120,
// color: Colors.green,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/greenop2.png",
                                              ),
                                              fit: BoxFit.fill,
                                            )),

                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Answer",
                                                  style: GoogleFonts.lato(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.white,
                                                  )),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Image.asset(
                                                  "assets/coin2.png",
                                                  height: 22,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
// Container(

//   height: changeto ? 48 : 45,
//   width: changeto ? 150 : 160,
//   // color: Colors.green,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(
//           changeto ? 10 : 12),
//       gradient: LinearGradient(colors: [
//         Colors.black38,
//         Colors.black87,
//       ]),
//       boxShadow: [
//         BoxShadow(
//           color: hcolor,
//           spreadRadius: changeto ? 0 : 6,
//           blurRadius: changeto ? 0 : 10,
//           offset: Offset(
//             0,
//             0,
//           ),
//         )
//       ]),
//   child:
//    Center(
//       child:

//         Row(
//               mainAxisAlignment:
//                   MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text("ANSWER",
//                     style: GoogleFonts.koHo(
//                       textStyle: Theme.of(context)
//                           .textTheme
//                           .headline1,
//                       fontSize: 25,
//                       fontWeight: FontWeight.w600,
//                       fontStyle: FontStyle.italic,
//                       color: Colors.white,
//                     )),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 0),
//                   child: Container(
//                     height: 40,
//                     // color: Colors.red,

//                     child: Image.asset(
//                             "assets/coin2.png",
//                       // "assets/chemistrylotti.json",
//                       // height: 250,
//                     ),
//                   ),
//                 ),
//               ],
//             )
//             ),
// ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 0, left: 10, top: 0),
                                child: SpringButton(
                                    SpringButtonType.OnlyScale,
                                    Container(
                                      height: changeto2 ? 38 : 40,
                                      width: changeto2 ? 35 : 40,
// color: Colors.green,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              changeto2 ? 50 : 12),
// gradient: LinearGradient(colors: [
//   Colors.black38,
//   Colors.black87,
// ]),
                                          boxShadow: [
                                            BoxShadow(
                                              color: hcolor,
                                              spreadRadius: changeto2 ? 0 : 1,
                                              blurRadius: changeto2 ? 0 : 12,
                                              offset: Offset(
                                                0,
                                                0,
                                              ),
                                            )
                                          ],
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/screenshot.png",
                                            ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    onTapDown: (_) async => {
                                          setState(() {
                                            player.play('w.mp3');
                                            changeto2 = false;
                                          }),
                                          setState(() {
                                            changeto2 = true;
                                          }),
                                          setState(() async {
                                            player.play('r.mp3');
                                            showDialog(
                                                context: context,
                                                builder: (context) => Center(
                                                      child: Text(
                                                        "Sharing Screenshot.....",
                                                        style: GoogleFonts.koHo(
                                                          textStyle:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline1,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ));
                                            await Future.delayed(
                                                Duration(milliseconds: 2000));
                                            Navigator.of(context).pop();
                                            ShareFilesAndScreenshotWidgets()
                                                .takeScreenshot(
                                                    previewContainer,
                                                    originalSize)
                                                .then((Image value) {
                                              setState(() async {
                                                _image = value;
                                              });
                                            });
                                            await Future.delayed(
                                                Duration(milliseconds: 100));
                                            ShareFilesAndScreenshotWidgets()
                                                .shareScreenshot(
                                                    previewContainer,
                                                    originalSize,
                                                    "Chemistry Quiz offline MCQs",
                                                    "icon.png",
                                                    "icon/png",
                                                    text:
                                                        "https://play.google.com/store/apps/details?id=com.infinity.chemistryquiz");
                                          }),
                                        }),

// Padding(
//   padding: const EdgeInsets.only(left: 30),
//   child: Container(
//     height: 40,
//     width: 35,
//     // color: Colors.red,
//     decoration: BoxDecoration(
//         image: DecorationImage(
//       image: AssetImage(
//         "assets/screenshot.png",
//       ),
//       fit: BoxFit.fill,
//     )),
//   ),
// ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
// Padding(
//   padding: const EdgeInsets.only(top: 20),
//   child: Container(
//     height: 300,
//     child: FacebookNativeAd(
//       placementId: "616076523573705_616097106904980",
//       adType: NativeAdType.NATIVE_AD,
//       width: double.infinity,
//       // height: 200,
//       backgroundColor:
//           Color.fromARGB(255, 51, 50, 50).withOpacity(0.8),
//       titleColor: Colors.white,
//       descriptionColor: Colors.white,
//       buttonColor: Color.fromARGB(255, 179, 179, 180),
//       buttonTitleColor: Colors.white,
//       buttonBorderColor: Colors.white,
//       keepAlive:
//           true, //set true if you do not want adview to refresh on widget rebuild
//       keepExpandedWhileLoading:
//           false, // set false if you want to collapse the native ad view when the ad is loading
//       expandAnimationDuraion:
//           0, //in milliseconds. Expands the adview with animation when ad is loaded
//       listener: (result, value) {
//         print("Native Ad: $result --> $value");
//       },
//     ),
//   ),
// ),
                  ])),
                ),
              ),
            ),
          ]),
          bottomNavigationBar: Container(
// alignment: Alignment(0.5, 1),
            child: FacebookBannerAd(
              placementId: "616076523573705_616096883571669",
              bannerSize: BannerSize.STANDARD,
              listener: (result, value) {
                switch (result) {
                  case BannerAdResult.ERROR:
                    print("Error: $value");
                    break;
                  case BannerAdResult.LOADED:
                    print("Loaded: $value");
                    break;
                  case BannerAdResult.CLICKED:
                    print("Clicked: $value");
                    break;
                  case BannerAdResult.LOGGING_IMPRESSION:
                    print("Logging Impression: $value");
                    break;
                }
              },
            ),
          ),
        ));
  }
}
//
