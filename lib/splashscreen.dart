// class Splashscreen extends StatefulWidget {
//   const Splashscreen({Key key}) : super(key: key);

//   @override
//   _SplashscreenState createState() => _SplashscreenState();
// }

// class _SplashscreenState extends State<Splashscreen> {

// class PulseAnimator extends StatefulWidget {
//   final Widget child;
//   const PulseAnimator({Key key, this.child}) : super(key: key);

//   @override
//   _PulseAnimatorState createState() => _PulseAnimatorState();
//   State creatstate() => _PulseAnimatorState();
// }

// class _PulseAnimatorState extends State<PulseAnimator>
//     with SingleTickerProviderStateMixin {
//   AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     )..repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return FadeTransition(
//         opacity: TweenAndBack(begin: 0.5, end: 1.0).animate(_controller));
//   }
// }
