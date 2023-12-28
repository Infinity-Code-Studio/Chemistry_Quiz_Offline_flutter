// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
// import 'package:lottie/lottie.dart';
// import 'package:interactiveviewer_gallery/interactiveviewer_gallery.dart';
// // import 'package:photo_view/photo_view.dart';

// class Periodictable extends StatefulWidget {
//   const Periodictable({Key key}) : super(key: key);

//   @override
//   _PeriodictableState createState() => _PeriodictableState();
// }

// class _PeriodictableState extends State<Periodictable> {
//   // _controllerReset.stop();
//   // void _onInteractactionStart(ScaleStartDetails details){

//   //   if (_controllerReset.status==AnimationStatus.forward){
//   //   _animateResetStop();
//   //   }
//   // }
//   @override
//   Widget build(BuildContext context) {
//     var playlist = [
//       "1 :  Stand For Quize?",
//       "2 :  Formulas Quize?",
//       "3 :  Q and Ans Quize?",
//       "4 :  All Random Quize?",
//     ];
//     var lock = [
//       "assets/lock.png",
//       "assets/lock.png",
//       "assets/lock.png",
//       "assets/lock.png",
//     ];
//     var _crossAxisSpacingq = 8;
//     var _screenWidthq = MediaQuery.of(context).size.width;
//     var _crossAxisCountq = 1;
//     var _widthq =
//         (_screenWidthq - ((_crossAxisCountq - 1) * _crossAxisSpacingq)) /
//             _crossAxisCountq;
//     var cellHeightq = 4.5;
//     var _aspectRatioq = _widthq / cellHeightq;
//     var changeto = [
//       Colors.transparent,
//       Colors.transparent,
//       Colors.transparent,
//       Colors.transparent,
//     ];
//     return Scaffold(
//         body: Container(
//           color: Colors.white,
//             // height: MediaQuery.of(context).size.height,

//             // width: 500,
//             // color: Colors.black,
            
//             child: Center(
//               child: Container(
//                 height: 889,
//                 width: double.infinity,
//                 child: InteractiveViewer(
//                     boundaryMargin: EdgeInsets.all(double.infinity),
//                     // transformationController: _transformationController,
//                     // onInteractionStart: -onInteractionStart,
//                     minScale: 0.9,
//                     maxScale: 9.0,
//                     child: Image.asset(
//                       "assets/pt3.png",
//                       // height: 400,
//                     )),
//               ),
//             )));
//   }
// }
