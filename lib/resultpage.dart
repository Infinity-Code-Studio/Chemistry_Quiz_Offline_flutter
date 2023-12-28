import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:chemistry/play.dart';
// import 'package:chemistry/secondpage.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
import 'package:spring_button/spring_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'homepage.dart';

class Result extends StatefulWidget {
  var iq;
  var ans;
  var wrans;
  var marks;
  var coinsshowr;
  var refreshcoins;
// var coinss;

  Result(
      {Key key,
      this.ans,
      this.iq,
      this.marks,
      this.wrans,
      this.coinsshowr,
      this.refreshcoins})
      : super(key: key);

  @override
  _ResultState createState() =>
      _ResultState(marks, ans, iq, wrans, coinsshowr, refreshcoins);
}

class _ResultState extends State<Result> {
  var markss;
  var iq;
  var ans;
  var wrans;
  var coinss;
  var coinsplus;
  var refreshcoins;
  var coinsshowr;
  var changeto = true;
  final hcolor = Colors.lightGreenAccent;

  _ResultState(
    this.markss,
    this.iq,
    this.ans,
    this.wrans,
    this.coinss,
    this.refreshcoins,
  );
  List<String> images = [
    "assets/winning1.png",
    "assets/winning2.png",
    "assets/winning3.png",
    "assets/trophyimg.png",
  ];
  var message;
  var image;
  var score;
  var iqq;
  var anss;
  var wranss;
  var limit = 0;
  var refreshcoinsr = 0;
  final player = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
// PlayerState audioPlayerState = PlayerState.PAUSED;

// getcoins() async {
//   SharedPreferences preff = await SharedPreferences.getInstance();
//   var coinsupgrade = preff.getInt('coins');
//   return coinsupgrade;
// }

// setcountervalue() async {
//   SharedPreferences preffppp = await SharedPreferences.getInstance();
//   preffppp.setInt('coins', coinss);
// }

// checkforcountervalue() async {
// var forcoins = await getcoins() ?? widget.coinsshow;

// setState(() {

//  setcountervalue();

// coinss = 0;
// widget.coinsshow = 0;
// setcountervalue();
// });
// setState(() {
// coinss = coinss + widget.coinsshow ?? coinss;
// coinss = 0;
// widget.coinsshow = 0;

// setcountervalue();
// });
// }

  @override
  void initState() {
    setState(() {
      if (markss <= 0) {
        markss = 0;
        widget.iq = 0;
      }

      if (markss > 100) {
        markss = 100;
      }
    });
// if (markss <= 0) {
//   markss = 0;
// }
// if (iq == 0) {
//   iq = 0;
// }
// if (ans == 0) {
//   iq = 0;
// }
// if (wrans == 0) {
//   iq = 0;
// }
// ,,,,
    if (markss <= 30) {
// image = images[3];
      message = "You Can Do Better";
      score = markss;
      iqq = iq;
      anss = ans;
      wranss = wrans;
    } else if (markss <= 60) {
// image = images[2];
      message = "Not Bad";
      score = markss;
      iqq = iq;
      anss = ans;
      wranss = wrans;
    } else if (markss <= 80) {
// image = images[1];
      message = "Exellent Work";
      score = markss;
      iqq = iq;
      anss = ans;
      wranss = wrans;
    } else {
// image = images[0];
      message = "Chemist   Champion";
      score = markss;
      iqq = iq;
      anss = ans;
      wranss = wrans;
    }
// Future.delayed(Duration(milliseconds: 100));

    super.initState();
    FacebookAudienceNetwork.init(
// testingId: "a77955ee-3304-4635-be65-81029b0f5201",
// iOSAdvertiserTrackingEnabled: true,
        );
    if (score == 100) {
      refreshcoins = 1000;
      setState(() {
        limit = 99;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    }

    if (score == 10) {
      refreshcoins = 100;

      setState(() {
        limit = 9;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 20) {
      refreshcoins = 200;
      setState(() {
        limit = 19;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 30) {
      refreshcoins = 300;
      setState(() {
        limit = 29;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 40) {
      refreshcoins = 400;
      setState(() {
        limit = 39;
// await Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 50) {
      refreshcoins = 500;
      setState(() {
        limit = 49;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 60) {
      refreshcoins = 600;
      setState(() {
        limit = 59;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 70) {
      refreshcoins = 700;
      setState(() {
        limit = 69;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 80) {
      refreshcoins = 800;
      setState(() {
        limit = 79;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 90) {
      refreshcoins = 900;
      setState(() {
        limit = 89;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score == 0) {
      refreshcoins = 300;
      setState(() {
        limit = 29;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    } else if (score < 0) {
      refreshcoins = 300;
      setState(() {
        limit = 29;
// Future.delayed(Duration(milliseconds: 1));
        dothis();
      });
    }
// Future.delayed(Duration(milliseconds: 10));
    setState(() {
      coinss = widget.coinsshowr + refreshcoins;
    });
  }

  void dothis() async {
// player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(Duration(milliseconds: 10));
      setState(() {
        refreshcoinsr = refreshcoinsr + 10;
      });
    }
  }

  void dothis2() async {
// player.play('coins.mp3');
    for (int n = 0; n <= limit; n++) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        widget.coinsshowr = widget.coinsshowr + 10;
      });
    }
    setState(() {});
  }

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
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pop();
  }

// Future<bool> _onBackPressed() async {
//   return showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//             title: Text("QuizeStar"),
//             content: Text("you can't go back at this stage"),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text("ok"),
//               )
//             ],
//           ));
// }
  var changeto2 = true;
  Image _image;

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 850;
  @override
  Widget build(BuildContext context) {
    var ll = 1;
    return WillPopScope(
      onWillPop: (() {
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
                            height: 250,
                            width: 270,
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
                                  fit: BoxFit.cover,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 100,
// color: Colors.amber,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: AutoSizeText(
                                            "Kindly Collect Your Reward To Continoue..?",
                                            style: GoogleFonts.koHo(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
//  fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                })
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))),
                  ],
                ));
      }),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 61, 61).withOpacity(0.8),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          brightness: Brightness.dark,
          elevation: 0,
          leading: Text(
            "",
            style: GoogleFonts.breeSerif(
                fontSize: 25, fontWeight: FontWeight.w800, color: Colors.black),
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
                    onTap: () async {
                      await Future.delayed(const Duration(milliseconds: 500));
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
//     buttonColor:
//         Color.fromARGB(255, 179, 179, 180),
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
                                              color:
                                                  Color.fromARGB(150, 0, 0, 0),
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
                                              padding: const EdgeInsets.all(10),
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
                                                                    Color
                                                                        .fromARGB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    Color
                                                                        .fromARGB(
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
                                                                  blurRadius: 5,
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
                                                                decoration:
                                                                    BoxDecoration(
// borderRadius: BorderRadius.circular(12),
// gradient: LinearGradient(colors: [
//   Color.fromARGB(0, 0, 0, 0),
//   Color.fromARGB(0, 0, 0, 0),
// ]),
// boxShadow: [
//   BoxShadow(
//     color: Color.fromARGB(150, 0, 0, 0),
//     spreadRadius: 3,
//     blurRadius: 5,
//     offset: Offset(
//       0,
//       0,
//     ),
//   )
// ],
                                                                        image:
                                                                            DecorationImage(
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
                                                                          BorderRadius.circular(
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
                                                                            height:
                                                                                25,
                                                                            width:
                                                                                55,

// color: Colors.red,
                                                                            child: AutoSizeText("600",
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
                                                                            padding:
                                                                                const EdgeInsets.only(left: 0),
                                                                            child:
                                                                                Container(
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
                                                                      Navigator.of(
                                                                              context)
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
                                                                              1)),
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop(),
                                                                      showDialog(
                                                                          context:
                                                                              context,
                                                                          builder: (context) =>
                                                                              Center(
                                                                                child: Text(
                                                                                  "Not  Available.....",
                                                                                  style: GoogleFonts.koHo(
                                                                                    textStyle: Theme.of(context).textTheme.headline1,
                                                                                    fontSize: 25,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FontStyle.italic,
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                ),
                                                                              ))
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
                      delay: Duration(seconds: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
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
                                      child: Container(
// color: Colors.green,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: LinearGradient(colors: [
                                            Color.fromARGB(0, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0),
                                          ]),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(88, 0, 0, 0),
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
                                          padding:
                                              EdgeInsets.only(top: 0, left: 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
// color: Colors.amber,
                                                height: 25,
                                                width: 55,

// color: Colors.red,
                                                child: AutoSizeText(
                                                    "${widget.coinsshowr ?? 0}",
// "1000",
                                                    style: GoogleFonts.lato(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline1,
// fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 0),
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
                                    ))),
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
              child: Column(children: [
// Material(
//     elevation: 20,
// child:
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 1400),
                    child: SpringButton(
                        SpringButtonType.OnlyScale,
                        Container(
                          height: 180,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(colors: [
                                Colors.black87,
                                Colors.black38,
                              ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.lightGreenAccent,
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/icon4.png",
                                ),
                                fit: BoxFit.fill,
                              )),
                        ),
                        onTapDown: (_) async => {
                              setState(() async {
                                await Future.delayed(Duration(seconds: 1));
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
//     adType:
//         NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(
//             34, 0, 0, 0),
//     titleColor: Colors.white,
//     descriptionColor:
//         Colors.white,
//     buttonColor: Color.fromARGB(
//         54, 0, 0, 0),
//     buttonTitleColor:
//         Colors.white,
//     buttonBorderColor:
//         Colors.white,
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
                                                                      "Get Pro Versio Of This App...",
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
                                                                                _launchURL("https://play.google.com/store/apps/details?id=com.infinity.chemistryquizpro"),
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

// player.play('w.mp3');
                                ;

//  await Navigator.push(
//      context,
//      MaterialPageRoute(
//          builder: (context) =>
//              Periodictable()));
                              })
                            }),
                  ),
                ),

                DefaultTextStyle(
                  style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        message,
                      ),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                          height: 290,
                          width: 290,
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
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Container(
                                    height: 50,
// color: Color.fromARGB(255, 255, 255, 255),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: AutoSizeText(
                                          "Score      =     $score",
                                          style: GoogleFonts.koHo(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
//  fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
// color: Colors.amber,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: AutoSizeText(
                                        "   iQ           =    $anss%",
                                        style: GoogleFonts.koHo(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline1,
//  fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
// color: Colors.amber,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: AutoSizeText(
                                        "     RighT     =  $iqq         ",
                                        style: GoogleFonts.koHo(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline1,
//  fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
// color: Colors.amber,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: AutoSizeText(
                                        "     WronG    =   $wranss         ",
                                        style: GoogleFonts.koHo(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline1,
//  fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
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
                                                  BorderRadius.circular(12),
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
                                                    BorderRadius.circular(20),
                                                gradient:
                                                    LinearGradient(colors: [
                                                  Color.fromARGB(0, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0),
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 0),
                                                      child: Container(
// color: Colors.amber,
                                                        height: 25,
                                                        width: 55,

// color: Colors.red,
                                                        child: AutoSizeText(
                                                            "$refreshcoinsr",
// "1000",
                                                            style: GoogleFonts
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
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 0),
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
                          ))),
                ),

// Padding(
//   padding: const EdgeInsets.only(
//       left: 15, right: 15, top: 0),
//   child: Divider(
//     color: Colors.lightGreenAccent,
//   ),
// ),

// "1YOUR SCORE = 100"+ "2YOUR SCORE = 100"+"3YOUR SCORE = 100 "+"4YOUR SCORE = 100",
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DelayedDisplay(
                        delay: Duration(seconds: 3),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SpringButton(
                              SpringButtonType.OnlyScale,
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
                                      height: 50,
                                      width: 150,
// color: Colors.green,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          gradient: LinearGradient(colors: [
                                            Color.fromARGB(0, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0),
                                          ]),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(150, 0, 0, 0),
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
                                          width: 80,
                                          child: AutoSizeText(
                                            "Collect",
                                            style: GoogleFonts.koHo(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
// maxLines: 1,
                                          ),
                                        ),
                                      ))),
                              onTap: () async => {
                                setState(() async {
                                  player.play('coins.mp3');

                                  dothis2();
                                  showcoinsdialouge();
                                  await Future.delayed(Duration(seconds: 3));

                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Homepage(
                                                levelscoree: score,
                                                coinsshowh: coinss,
                                              ))));
                                }),
                              },
                            ))),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 0, left: 10, top: 0),
                      child: SpringButton(
                          SpringButtonType.OnlyScale,
                          Container(
                            height: changeto2 ? 38 : 40,
                            width: changeto2 ? 35 : 40,
// color: Colors.green,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(changeto2 ? 50 : 12),
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
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ));
                                  await Future.delayed(
                                      Duration(milliseconds: 1000));
                                  Navigator.of(context).pop();
                                  ShareFilesAndScreenshotWidgets()
                                      .takeScreenshot(
                                          previewContainer, originalSize)
                                      .then((Image value) {
                                    setState(() async {
                                      _image = value;
                                    });
                                  });
                                  await Future.delayed(
                                      Duration(milliseconds: 100));
                                  ShareFilesAndScreenshotWidgets().shareScreenshot(
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
// Padding(
//   padding: const EdgeInsets.only(bottom: 50),
//   child: Container(
//     height: 300,
//     child: FacebookNativeAd(
//       placementId: "616076523573705_616097106904980",
//       adType: NativeAdType.NATIVE_AD,
//       width: double.infinity,
//       // height: 200,
//       backgroundColor:
//           Color.fromARGB(0, 59, 59, 59).withOpacity(0.8),
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
// Padding(
//   padding:
//       const EdgeInsets.only(left: 15, right: 15, top: 0),
//   child: Divider(
//     color: Colors.lightGreenAccent,
//   ),
// )
              ]),
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
      ),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

// Text(
//                 "CONTGRATULATION",
//                 style: GoogleFonts.akronim(
//                   textStyle: Theme.of(context).textTheme.headline1,
//                   fontSize: 50,
//                   fontWeight: FontWeight.w400,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.white,
//                 ),
//               ),

// Padding(
//   padding: const EdgeInsets.only(
//       left: 60, right: 55, top: 30),
//   child: DelayedDisplay(
//     delay: Duration(milliseconds: 900),
//     child: Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(
//               right: 5, left: 5, top: 30),
//           child: InkWell(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: ((context) =>
//                           Homepage())));
//             },
//             child: Column(
//               children: [
//                 Container(
//                   height: 80,
//                   // width: 370,
//                   // color: Colors.green,
//                   decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.circular(10),
//                       gradient: LinearGradient(colors: [
//                         Colors.green,
//                         Colors.lightGreenAccent,
//                       ])),
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         top: 10, left: 0),
//                     child: Center(
//                       child: Text("CONTINUE..!",
//                           style: GoogleFonts.akronim(
//                             textStyle: Theme.of(context)
//                                 .textTheme
//                                 .headline1,
//                             fontSize: 50,
//                             fontWeight: FontWeight.w300,
//                             fontStyle: FontStyle.italic,
//                             color: Colors.black,
//                           )),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   ),
// ),

// "SCORE    =   $score",
// "    iQ         =  $anss%",
// "RIGHT ANS       =  $iqq",
// "WRONG ANS    =  $wranss",