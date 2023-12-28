// import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';

// import 'dart:html';

// import 'package:admob_flutter/admob_flutter.dart';
// import 'package:knt_admob/knt_admob.dart';
// import 'package:animator/animator.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spring_button/spring_button.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/services.dart';
// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'homepage.dart';

// import 'package:flutter_gifimage/flutter_gifimage.dart';

class Play extends StatefulWidget {
  Play({Key key}) : super(key: key);

  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  final hcolor = Colors.lightGreenAccent;
  final hcolor2 = Colors.black12;
  double change2 = 8;
  double change1 = -8;
  bool changeto = false;
  final player = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
// PlayerState audioPlayerState = PlayerState.PAUSED;
// AudioCache audioCache;
  String path = 'd1.mp3';
  bool isPlaying = true;

  var shonum = 10000;
  var num = 0;

// PlayMusic() async {
//   await audioCache.play('d3.mp3');
// }

// PauseMusic() async {
//   await audioPlayer.pause();
// }

// FlutterLocalNotificationsPlugin localNotification;

  @override
  void initState() {
// localNotification = FlutterLocalNotificationsPlugin();
// localNotification.initialize(
//   InitializationSettings(
//     android: AndroidInitializationSettings('coin2'),
//   ),
// );

// bannerAd.load();
    super.initState();

    FacebookAudienceNetwork.init(
// testingId: "a77955ee-3304-4635-be65-81029b0f5201",
// iOSAdvertiserTrackingEnabled: true,
        );
// _loadAd();

// audioPlayer.onPlayerStateChanged.listen((state) {
//   setState(() {
//     isPlaying = state == PlayerState.PLAYING;
//   });
// });

// iOS: IOSInitializationSettings()
// ));
// MusicFunctions();
//   player.onPlayerCompletion.listen((event) {
//   onComplete();
//   setState(() {
//     position = duration;
//   });
// _shownotification();
  }

  PlayMusic() async {
// await audioCache.loop('d3.mp3');
  }

  PauseMusic() async {
    await audioPlayer.pause();
  }

  ResumeMusic() async {
    await audioPlayer.resume();
  }

  Future _shownotification() async {
// var iosDetails = networkSourceMatcher();
// await localNotification.show(
//   0,
//   "CHEMISTRY QUIZE",
//   "Get Ready For The Next Level",
//   NotificationDetails(
//     android: AndroidNotificationDetails(
//       'channelId',
//       'Local Notification',
//       // color: Colors.amber,
//       // channelDescription: 'this is description',
//       importance: Importance.max,
//       // ledColor: Colors.amber,

//       enableLights: true,
//       enableVibration: true,
//       styleInformation:
//           BigPictureStyleInformation(DrawableResourceAndroidBitmap('pt3'),
//               // FilePathAndroidBitmap('pt3.jpg'),
//               largeIcon: DrawableResourceAndroidBitmap('coin2'),
//               contentTitle: "CHEMISTRY QUIZE",
//               summaryText: "Get Ready For The Next Level",
//               htmlFormatContent: true,
//               htmlFormatContentTitle: true),
//       //  MediaStyleInformation(htmlFormatContent: true,htmlFormatTitle: true);
//     ),
//     // iOS: IOSNotificationDetails()
//   ),
// );
// var scheduledTime = DateTime.now().add(Duration(hours: 6));
// localNotification.schedule(
//   1,
//   "Chemistry QuiZe",
//   "Get Ready For The Next Level",
//   scheduledTime,
//   NotificationDetails(
//       android: AndroidNotificationDetails('channelId', 'Local Notification',
//           // color: Colors.amber,
//           // channelDescription: 'this is description',
//           importance: Importance.max,

//           // ledColor: Colors.amber,

//           enableLights: true,
//           enableVibration: true,
//           playSound: true,
//           styleInformation: BigPictureStyleInformation(
//               DrawableResourceAndroidBitmap('pt3'),
//               // FilePathAndroidBitmap('pt3.jpg'),
//               largeIcon: DrawableResourceAndroidBitmap('coin2'),
//               contentTitle: "CHEMISTRY QUIZE",
//               summaryText: "Get Ready For The Next Level",
//               htmlFormatContent: true,
//               htmlFormatContentTitle: true))),
//   // iOS: IOSNotificationDetails()
// );
  }

// @override
// void dispose() {
//   super.dispose();
//   audioPlayer.release();
//   audioPlayer.dispose();

//   audioCache.clearAll();
// }
  void dothis() async {
    for (int n = 0; n <= 99; n++) {
      await Future.delayed(Duration(milliseconds: 10));
      setState(() {
        shonum = shonum + 10;

// if (n == 99) {
//   n = 100;
// }
      });
    }

// Timer(const Duration(hours: 4), () {
//   _shownotification();
// });
  }

// Future<void> _loadAd() async {
//   // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
//   final AnchoredAdaptiveBannerAdSize size =
//       await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
//           MediaQuery.of(context).size.width.truncate());

//   if (size == null) {
//     print('Unable to get height of anchored banner.');
//     return;
//   };

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

// BannerAd _anchoredAdaptiveAd;
// bool _isLoaded = false;

// @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   _loadAd();
// }

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
//     adUnitId: 'ca-app-pub-7844077136164668/8764467480',
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

// Image _image;

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 850;

  DateTime pre_backpress = DateTime.now();

  @override
  Widget build(BuildContext context) {
// audioCache = AudioCache(fixedPlayer: audioPlayer);

// var _aspectRatioq = _widthq / cellHeightq;

    return WillPopScope(
        onWillPop: () async {
// final timegap = DateTime.now().difference(pre_backpress);
// final cantExit = timegap >= Duration(seconds: 2);
// pre_backpress = DateTime.now();
// if(cantExit){
//   //show snackbar
//   final snack = SnackBar(content: Text('Press Back button again to Exit'),duration: Duration(seconds: 2),);
//   ScaffoldMessenger.of(context).showSnackBar(snack);
//   return false;
// }else{
//   return true;
// }

          showDialog(
              context: context,
              builder: (context) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                              height: 260,
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
                                    fit: BoxFit.fill,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        height: 80,
// color: Colors.amber,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: AutoSizeText(
                                              "Are You Sure You Really Want To Exit..?",
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
// RealVolume.openDoNotDisturbSettings(),
// RealVolume.setRingerMode(RingerMode.SILENT, redirectIfNeeded: false),
// await RealVolume.setVolume(0.0, showUI: true, streamType: StreamType.MUSIC),
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
                                                    SystemNavigator.pop(),
                                                  })
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ))),
                    ],
                  ));

// final timegap = DateTime.now().difference(pre_backpress);
// final cantExit = timegap >= Duration(seconds: 2);
// pre_backpress = DateTime.now();
// if (cantExit) {
//   //show snackbar
//   final snack = SnackBar(
//     content: Text('Press Back button again to Exit',
//         style: GoogleFonts.lato(
//           textStyle: Theme.of(context).textTheme.headline1,
//           fontSize: 20,
//           fontWeight: FontWeight.w800,
//           fontStyle: FontStyle.italic,
//           color: Color.fromARGB(255, 39, 187, 3),
//         )),
//     duration: Duration(seconds: 2),
//   );
//   ScaffoldMessenger.of(context).showSnackBar(snack);
//   return false;
// } else {
//   return true;
// }
        },
        child: Scaffold(
            backgroundColor: Color.fromARGB(227, 48, 47, 47).withOpacity(0.8),
            body:
// color: Colors.black12,
// height: MediaQuery.of(context).size.height * 0.93,
                Column(children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Center(
                            child: InkWell(
                              onTap: () {
//  Navigator.push(
//      context,
//      MaterialPageRoute(
//          builder: (context) =>
//              Periodictable(

//                  // levelup: levelups
//                  // levelscoreee:
//                  //     levelscoree,
//                  )));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: DelayedDisplay(
                                  delay: Duration(milliseconds: 2000),
                                  child: Container(
                                    height: 180,
                                    width: 180,
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
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: DelayedDisplay(
                            delay: Duration(milliseconds: 300),
                            child: SpringButton(
                                SpringButtonType.OnlyScale,
                                Container(
                                    height: 75,
                                    width: 290,
// color: Colors.green,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(136, 0, 0, 0),
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
                                          fit: BoxFit.fill,
                                        )),
                                    child: Center(
                                      child: Text(" Get Pro ",
                                          style: GoogleFonts.lato(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline1,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w800,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          )),
                                    )),
                                onTapDown: (_) => {
                                      setState(() async {
                                        player.play('w.mp3');

                                        setState(() async {
                                          showDialog(
                                              context: context,
                                              builder: (context) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId:
//         "616076523573705_616097106904980",
//     adType: NativeAdType
//         .NATIVE_AD,
//     width:
//         double.infinity,
//     height: 300,
//     backgroundColor:
//         Color.fromARGB(
//             34, 0, 0, 0),
//     titleColor:
//         Colors.white,
//     descriptionColor:
//         Colors.white,
//     buttonColor:
//         Color.fromARGB(
//             54, 0, 0, 0),
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
//     listener:
//         (result, value) {
//       print(
//           "Native Ad: $result --> $value");
//     },
//   ),
// ),
                                                        Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
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
                                                                height: 250,
                                                                width: 250,
// color: Colors.green,
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
                                                                                6,
                                                                            blurRadius:
                                                                                5,
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
                                                                            "assets/greenop3.png",
                                                                          ),
                                                                          fit: BoxFit
                                                                              .fill,
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
                                                                            const EdgeInsets.only(top: 0),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              80,
// color: Colors.amber,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(8.0),
                                                                            child:
                                                                                Center(
                                                                              child: AutoSizeText(
                                                                                "Get Pro Versio Of This App...",
                                                                                style: GoogleFonts.koHo(
                                                                                    textStyle: Theme.of(context).textTheme.headline1,
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
                                                                            top:
                                                                                30,
                                                                            left:
                                                                                5,
                                                                            right:
                                                                                5),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            SpringButton(
                                                                                SpringButtonType.OnlyScale,
                                                                                Container(
                                                                                  height: 50,
                                                                                  width: 50,
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
                                                                                onTapDown: (_) async => {
                                                                                      player.play('w.mp3'),
                                                                                      await Future.delayed(Duration(seconds: 1)),
                                                                                      Navigator.of(context).pop(),
                                                                                    }),
                                                                            SpringButton(
                                                                                SpringButtonType.OnlyScale,
                                                                                Container(
                                                                                  height: 50,
                                                                                  width: 50,
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
                                                                                onTapDown: (_) async => {
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
                                        });
                                      })
                                    }),
                          ),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 600),
                          child: InkWell(
                            onTap: () {
// PlayMusic();
                              if (isPlaying) {
                                PauseMusic();
                                isPlaying = false;
                              } else {
                                PlayMusic();
                                isPlaying = true;
                              }
                            },
                            child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: SpringButton(
                                    SpringButtonType.OnlyScale,
                                    Container(
                                        height: 75,
                                        width: 290,
// color: Colors.green,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    136, 0, 0, 0),
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
                                              fit: BoxFit.fill,
                                            )),
                                        child: Center(
                                          child: Text("Rate Us",
                                              style: GoogleFonts.lato(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w800,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white,
                                              )),
                                        )),
                                    onTapDown: (_) => {
                                          setState(() async {
                                            player.play('w.mp3');
                                            ;
                                            _launchURL(
                                                "https://play.google.com/store/apps/details?id=com.infinity.chemistryquiz");
                                          })
                                        })),
                          ),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 800),
                          child: InkWell(
                            onTap: () {
                              PlayMusic();
// ResumeMusic();
// PlayMusic();
// HapticFeedback.heavyImpact();
                              ;
                            },
                            child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: SpringButton(
                                    SpringButtonType.OnlyScale,
                                    Container(
                                        height: 75,
                                        width: 290,
// color: Colors.green,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    136, 0, 0, 0),
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
                                              fit: BoxFit.fill,
                                            )),
                                        child: Center(
                                          child: Text("More Games",
                                              style: GoogleFonts.lato(
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w800,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white,
                                              )),
                                        )),
                                    onTapDown: (_) => {
                                          setState(() async {
                                            player.play('w.mp3');
                                            ;
                                            _launchURL(
                                                "https://play.google.com/store/apps/developer?id=Infinity+Code+Studio");
                                          })
                                        })),
                          ),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 1200),
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SpringButton(
                                  SpringButtonType.OnlyScale,
                                  Container(
                                      height: 75,
                                      width: 290,
// color: Colors.green,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(136, 0, 0, 0),
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
                                            fit: BoxFit.fill,
                                          )),
                                      child: Center(
                                        child: Text("Share App",
                                            style: GoogleFonts.lato(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w800,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white,
                                            )),
                                      )),
                                  onTapDown: (_) => {
                                        setState(() async {
                                          player.play('w.mp3');
                                          ;
                                          my_share();
                                        })
                                      })),
                        ),
                        DelayedDisplay(
                          delay: Duration(milliseconds: 1400),
                          child: InkWell(
                            onTap: () async {
// HapticFeedback.heavyImpact();
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: SpringButton(
                                    SpringButtonType.OnlyScale,
                                    Container(
                                      height: 70,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(136, 0, 0, 0),
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
                                            fit: BoxFit.fill,
                                          )),
                                      child: Center(
                                          child: Text(
                                        "PLAY",
                                        style: GoogleFonts.lato(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white,
                                        ),
                                      )),
                                    ),
                                    onTapDown: (_) => {
                                          setState(() async {
// player.play('w.mp3');
                                            ;
                                            setState(() {
                                              player.play('r.mp3');
                                              changeto = true;
                                            });
                                            await Future.delayed(
                                                Duration(milliseconds: 0));

                                            await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Homepage()));
                                            setState(() {
                                              changeto = false;
                                            });
                                          }),
                                        })),
                          ),
                        ),

// Padding(
//   padding: const EdgeInsets.only(top: 0),
//   child: InkWell(
//     onTap: () {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => Homepage()));
//     },
//     child: AvatarGlow(
//       endRadius: 130.0,
//       glowColor: Colors.green,
//       child: CircleAvatar(
//         backgroundColor: Colors.green[100],
//         child: Text("PLAY",
//             style: GoogleFonts.akronim(
//               textStyle: Theme.of(context).textTheme.headline1,
//               fontSize: 70,
//               fontWeight: FontWeight.w900,
//               fontStyle: FontStyle.italic,
//               color: Colors.black,
//             )),
//         radius: 100.0,
//       ),
//     ),
//   ),

// Column(children: [
//   Padding(
//     padding: const EdgeInsets.only(top: 0),
//     child: Container(
//       color: Color(0xFF8B8888),
//       alignment: Alignment.center,
//       height: 330,
//       child: ClipRRect(
//         child: Image.asset(
//           "assets/bike.gif",
//         ),
//       ),
//     ),
//   ),
// ])
// Container(
//   height: 300,
//   child: FacebookNativeAd(
//     placementId: "616076523573705_616097106904980",
//     adType: NativeAdType.NATIVE_AD,
//     width: double.infinity,
//     // height: 200,
//     backgroundColor: Color.fromARGB(227, 48, 47, 47).withOpacity(0.8),
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
                      ],
                    ),
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
            )

// _isLoaded
//     ? Container(
//         width: _anchoredAdaptiveAd.size.width.toDouble(),
//         height: _anchoredAdaptiveAd.size.height.toDouble(),
//         child: AdWidget(ad: _anchoredAdaptiveAd),
//       )
//     : Container(
//         height: 0,
//         width: 0,
//       )
            ));

// Container(
//   color: Colors.green,
//   width: _anchoredAdaptiveAd.size.width.toDouble(),
//   height: _anchoredAdaptiveAd.size.height.toDouble(),
//   child: AdWidget(ad: _anchoredAdaptiveAd),
// ),
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  my_share() {
    Share.share(
        'check out my website https://play.google.com/store/apps/details?id=com.infinity.chemistryquiz');
  }
}

//  TextLiquidFill(
//   text: 'LETS PLAY',
//   waveColor: Colors.black,
//   boxBackgroundColor: Colors.amber,
//   textStyle: TextStyle(
//     fontSize: 40.0,
//     fontWeight: FontWeight.w500,
//   ),
//   boxHeight: 76.0,
//   boxWidth: 200,
// ),

// radius: 160.0,

// Padding(
//               padding: const EdgeInsets.only(top: 0),
//               child: SizedBox(
//                 width: 250.0,
//                 child: DefaultTextStyle(
//                   style: const TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                     shadows: [
//                       Shadow(
//                         blurRadius: 5.0,
//                         color: Colors.black,
//                         offset: Offset(5, 5),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 200),
//                     child: AnimatedTextKit(
//                       repeatForever: true,
//                       animatedTexts: [
//                         FlickerAnimatedText('INFINITY369 STUDIO'),
//                       ],
//                       onTap: () {
//                         print("Tap Event");
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             ),
// AvatarGlow(
//  endRadius: 60.0,
//  child: Material(     // Replace this child with your own
//    elevation: 8.0,
//    shape: CircleBorder(),
//    child: CircleAvatar(
//      backgroundColor: Colors.grey[100],
//      child: Image.asset(
//        'assets/images/dart.png',
//        height: 50,
//      ),
//      radius: 30.0,
//    ),
//  ),
// ),

// playpage data
