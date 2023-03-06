// import 'package:flutter/material.dart';

// class SwappableScreen extends StatefulWidget {
//   final List<Widget> screens;
//   SwappableScreen({Key? key, required this.screens}) : super(key: key);

//   @override
//   _SwappableScreenState createState() => _SwappableScreenState();
// }

// class _SwappableScreenState extends State<SwappableScreen> {
//   late PageController _pageController;
//   int _currentPageIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: _currentPageIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onHorizontalDragEnd: (details) {
//         // Check if swipe direction is right to left or left to right
//         if (details.velocity.pixelsPerSecond.dx > 0) {
//           // Swipe from left to right
//           if (_currentPageIndex > 0) {
//             setState(() {
//               _currentPageIndex--;
//             });
//             _pageController.animateToPage(
//               _currentPageIndex,
//               duration: Duration(milliseconds: 300),
//               curve: Curves.easeInOut,
//             );
//           }
//         } else {
//           // Swipe from right to left
//           if (_currentPageIndex < widget.screens.length - 1) {
//             setState(() {
//               _currentPageIndex++;
//             });
//             _pageController.animateToPage(
//               _currentPageIndex,
//               duration: Duration(milliseconds: 300),
//               curve: Curves.easeInOut,
//             );
//           }
//         }
//       },
//       child: PageView(
//         controller: _pageController,
//         children: widget.screens,
//       ),
//     );
//   }
// }
