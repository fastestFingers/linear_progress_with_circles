import 'package:flutter/material.dart';

import 'package:linear_progress_with_circles/linear_progress_with_circles.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child:
            LinearProgressWithCircles(completedSteps: 4), // Set completed steps
      ),
    ),
  ));
}
