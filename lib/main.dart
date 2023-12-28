import 'dart:async';
// import 'package:admob_flutter/admob_flutter.dart';
// import 'package:knt_admob/knt_admob.dart';
// import 'package:knt_admob/knt_admob.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/services.dart';
import 'package:newriddels/play.dart';
import 'package:flutter/material.dart';
// import 'dart:ffi';

import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  FacebookAudienceNetwork.init(
      testingId: "4ac37b8f-3a04-4b8a-ae82-90acf85c566c");

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chemistry Quiz",
      home: MyHomePage(title: 'Chemistry Quiz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // final player = AudioCache();
    // AudioPlayer audioPlayer = AudioPlayer();
    // // PlayerState audioPlayerState = PlayerState.PAUSED;
    // AudioCache audioCache;
    // audioCache = AudioCache(fixedPlayer: audioPlayer);
    // audioCache.loop('d3.mp3');
    // audioPlayer.onPlayerStateChanged.listen((s) {
    //   setState(() {
    //     audioPlayerState = s;
    //   });
    // });
    // showbannerad();
    setState(() {});
    super.initState();

    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Play()));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _loadAd();
  }

  // Future<void> _loadAd() async {
  //   // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
  //   final AnchoredAdaptiveBannerAdSize size =
  //       await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
  //           MediaQuery.of(context).size.width.truncate());

  //   if (size == null) {
  //     print('Unable to get height of anchored banner.');
  //     return;
  //   }

  //   _anchoredAdaptiveAd = BannerAd(
  //     // TODO: replace these test ad units with your own ad unit.
  //     adUnitId: 'ca-app-pub-3940256099942544/2934735716',
  //     size: size,
  //     request: AdRequest(),
  //     listener: BannerAdListener(
  //       onAdLoaded: (Ad ad) {
  //         print('$ad loaded: ${ad.responseInfo}');
  //         setState(() {
  //           // When the ad is loaded, get the ad size and use it to set
  //           // the height of the ad container.
  //           _anchoredAdaptiveAd = ad as BannerAd;
  //           _isLoaded = true;
  //         });
  //       },
  //       onAdFailedToLoad: (Ad ad, LoadAdError error) {
  //         print('Anchored adaptive banner failedToLoad: $error');
  //         ad.dispose();
  //       },
  //     ),
  //   );
  //   return _anchoredAdaptiveAd.load();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  Colors.blueGrey[400],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          // height: 900,
          color: Color.fromARGB(255, 0, 0, 0),
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //   image: AssetImage(
          //     "assets/greenbackground2.jpg",

          //   ),
          //   fit: BoxFit.cover,

          // )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 2000),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
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
                              "assets/icon.png",
                            ),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: DefaultTextStyle(
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.headline1,
                          fontSize: 33,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 114, 253, 0)),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText(
                            "Chemistry   Quize",
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: TextLiquidFill(
                      text: 'Powered By',
                      waveColor: Color.fromARGB(255, 255, 255, 254),
                      boxBackgroundColor: Color.fromARGB(255, 0, 0, 0),
                      textStyle: GoogleFonts.koHo(
                          textStyle: Theme.of(context).textTheme.headline1,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(146, 255, 255, 255)),
                      boxHeight: 60.0,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextLiquidFill(
                      text: 'infinity Code Studio',
                      waveColor: Color.fromARGB(255, 255, 254, 250),
                      boxBackgroundColor: Color.fromARGB(255, 0, 0, 0),
                      textStyle: GoogleFonts.koHo(
                          textStyle: Theme.of(context).textTheme.headline1,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      boxHeight: 60.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50, top: 0),
                    child: Divider(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     top: 20,
                  //     // left: 20,
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       "FUNN  , FACTS ,  TRAVIA  AND  \nSMART  LEARNNG  EDUATIONAL",
                  //       style: GoogleFonts.lato(
                  //         textStyle: Theme.of(context).textTheme.headline1,
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.w500,
                  //         fontStyle: FontStyle.italic,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ]),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.green,
      //   width: _anchoredAdaptiveAd.size.width.toDouble(),
      //   height: _anchoredAdaptiveAd.size.height.toDouble(),
      //   child: AdWidget(ad: _anchoredAdaptiveAd),
      // ),
    );
  }
}

// showbannerad() {
//   BannerAd myBanner = BannerAd(
//     adUnitId: "ca-app-pub-9087535213873324/2324521606",
//     size: AdSize.banner,
//     request: AdRequest(),
//     listener: BannerAdListener(),
//   );

  // myBanner.load();
// }
