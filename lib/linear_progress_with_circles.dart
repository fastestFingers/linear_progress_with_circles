import 'package:flutter/material.dart';

class LinearProgressWithCircles extends StatelessWidget {
  final int completedSteps; // Number of completed steps (0 to 5)

  const LinearProgressWithCircles({super.key, this.completedSteps = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) {
          bool isCompleted = index < completedSteps;

          // Dummy timestamps and text (can be customized)
          String timestamp = "10:0${index} AM";
          String stepText = "Step ${index + 1}";

          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Timestamp on the left
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  timestamp,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              // Line segment and Circle Avatar in the center
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (index > 0)
                    Container(
                      width: 2,
                      height: 65, // Height of the line segment
                      color: isCompleted ? Colors.green : Colors.grey,
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40, // Adjusted size for the circle container
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: !isCompleted
                            ? Border.all(color: Colors.green, width: 2)
                            : null,
                      ),
                      child: CircleAvatar(
                          radius: 18,
                          backgroundColor:
                              isCompleted ? Colors.green : Colors.transparent,
                          child: isCompleted
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 16,
                                )
                              : const Padding(
                                  padding: EdgeInsets.only(bottom: 5.0),
                                  child: Icon(
                                    Icons.circle_outlined,
                                    color: Colors.green,
                                    size: 16,
                                  ),
                                )),
                    ),
                  ),
                ],
              ),
              // Text on the right
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  stepText,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      //appBar: AppBar(title: const Text("Vertical Progress Indicator")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child:
            LinearProgressWithCircles(completedSteps: 4), // Set completed steps
      ),
    ),
  ));
}
