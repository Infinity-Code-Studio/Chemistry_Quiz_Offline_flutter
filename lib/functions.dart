// import 'package:audioplayers/audioplayers.dart';

// class MusicFunctions {
//   // audioCache = AudioCache(fixedPlayer: audioPlayer);
//   AudioPlayer audioPlayer = AudioPlayer();
//   PlayerState audioPlayerState = PlayerState.PAUSED;
//   AudioCache audioCache;
//   String path = 'd1.mp3';
//   var player = AudioCache();
//   bool isPlaying = true;

//   MusicFunctions(this.audioCache, this.audioPlayer, this.audioPlayerState,
//       this.path, this.player, this.isPlaying);

//   PlayMusic() async {
//     audioCache.play(path);
//   }

//   PauseMusic() async {
//     await audioPlayer.pause();
//   }

//   ResumeMusic() async {
//     await audioPlayer.resume();
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:glassmorphism/glassmorphism.dart';

// class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final Function() onBackButtonPressed;

//   const GlassAppBar({Key key, this.title, this.onBackButtonPressed})
//       : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return GlassmorphicFlexContainer(
//       borderRadius: 20,
//       blur: 20,
//       padding: EdgeInsets.all(40),
//       alignment: Alignment.bottomCenter,
//       border: 2,
//       linearGradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(0xFFffffff).withOpacity(0.1),
//             Color(0xFFFFFFFF).withOpacity(0.05),
//           ],
//           stops: [
//             0.1,
//             1,
//           ]),
//       borderGradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.center,
//         colors: [
//           Color.fromARGB(255, 187, 56, 56).withOpacity(0.5),
//           Color((0xFFFFFFFF)).withOpacity(0.5),
//         ],
//       ),
//       child: null,
//     );
//   }
// }
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:in_app_review/in_app_review.dart';

// void main() => runApp(const InAppReviewExampleApp());

// enum Availability { loading, available, unavailable }

// class InAppReviewExampleApp extends StatefulWidget {
//   const InAppReviewExampleApp({Key key}) : super(key: key);

//   @override
//   InAppReviewExampleAppState createState() => InAppReviewExampleAppState();
// }

// class InAppReviewExampleAppState extends State<InAppReviewExampleApp> {
//   final InAppReview _inAppReview = InAppReview.instance;

//   String _appStoreId = '';
//   String _microsoftStoreId = '';
//   Availability _availability = Availability.loading;

//   @override
//   void initState() {
//     super.initState();

//     (<T>(T o) => o)(WidgetsBinding.instance).addPostFrameCallback((_) async {
//       try {
//         final isAvailable = await _inAppReview.isAvailable();

//         setState(() {
//           // This plugin cannot be tested on Android by installing your app
//           // locally. See https://github.com/britannio/in_app_review#testing for
//           // more information.
//           _availability = isAvailable && !Platform.isAndroid
//               ? Availability.available
//               : Availability.unavailable;
//         });
//       } catch (_) {
//         setState(() => _availability = Availability.unavailable);
//       }
//     });
//   }

//   void _setAppStoreId(String id) => _appStoreId = id;

//   void _setMicrosoftStoreId(String id) => _microsoftStoreId = id;

//   Future<void> _requestReview() => _inAppReview.requestReview();

//   Future<void> _openStoreListing() => _inAppReview.openStoreListing(
//         appStoreId: _appStoreId,
//         microsoftStoreId: _microsoftStoreId,
//       );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'In App Review Example',
//       home: Scaffold(
//         appBar: AppBar(title: const Text('In App Review Example')),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('In App Review status: ${_availability.name}'),
//             TextField(
//               onChanged: _setAppStoreId,
//               decoration: const InputDecoration(hintText: 'App Store ID'),
//             ),
//             TextField(
//               onChanged: _setMicrosoftStoreId,
//               decoration: const InputDecoration(hintText: 'Microsoft Store ID'),
//             ),
//             ElevatedButton(
//               onPressed: _requestReview,
//               child: const Text('Request Review'),
//             ),
//             ElevatedButton(
//               onPressed: _openStoreListing,
//               child: const Text('Open Store Listing'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
