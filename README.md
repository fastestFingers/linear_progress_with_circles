# Linear Progress with Circles

A Flutter package that displays a vertical progress indicator with circles.

## Usage

Here's a detailed explanation of how to use your Flutter package `linear_progress_with_circles` for the `README.md` file. You can copy and paste this into your `README.md` to guide users on how to install and use the package.

---

# Linear Progress with Circles

`linear_progress_with_circles` is a Flutter package that provides a vertical progress indicator with circle avatars. The indicator shows completed and incomplete steps with a green checkmark or a hollow circle. It's useful for displaying progress in forms, onboarding flows, and more.

---

## Features

- Displays a vertical progress indicator with circles.
- Customizable number of steps (default: 5).
- Supports completed and incomplete steps.
- Each step can show a timestamp (optional).
- Each step can show a label (e.g., "Step 1", "Step 2", etc.).
- Easily integrated into any Flutter application.

---

## Installation

To use the `linear_progress_with_circles` package, you need to add it as a dependency in your `pubspec.yaml` file.

### 1. Add Dependency

If you are hosting the package on GitHub or Pub, use the corresponding installation method:

#### If hosting on GitHub:

```yaml
dependencies:
  linear_progress_with_circles:
    git:
      url: https://github.com/yourusername/linear_progress_with_circles.git
```

#### If publishing on [pub.dev](https://pub.dev):

```yaml
dependencies:
  linear_progress_with_circles: ^0.0.1
```

Replace the version number with the latest version on [pub.dev](https://pub.dev/packages/linear_progress_with_circles).

### 2. Install Dependencies

Run the following command in your terminal:

```bash
flutter pub get
```

---

## Usage

After adding the dependency, you can use the `LinearProgressWithCircles` widget in your application. Below is a simple example to help you get started.

### 1. Import the Package

In your Dart file where you want to use the progress indicator, import the package:

```dart
import 'package:linear_progress_with_circles/linear_progress_with_circles.dart';
```

### 2. Use the `LinearProgressWithCircles` Widget

Now, you can use the `LinearProgressWithCircles` widget. It takes a parameter `completedSteps` that determines how many steps are completed (from 0 to 5). For example, if 3 steps are completed, the widget will show three filled circles and two empty circles.

```dart
LinearProgressWithCircles(completedSteps: 3)
```

### 3. Full Example

Here is a complete example of how you can use the package in a Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:linear_progress_with_circles/linear_progress_with_circles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Progress Indicator Example")),
        body: Center(
          child: LinearProgressWithCircles(completedSteps: 3), // Set completed steps
        ),
      ),
    );
  }
}
```

### 4. Customization

- **Completed Steps**: You can change the number of completed steps by passing an integer to the `completedSteps` parameter. It should be a number between 0 and 5.
  
  ```dart
  LinearProgressWithCircles(completedSteps: 4) // 4 completed steps
  ```

- **Text Labels**: Each step can display a label on the right side. You can customize the text by modifying the `stepText` variable inside the widget.

- **Timestamps**: Timestamps are displayed on the left side of the circles and can be customized for each step.

---

## API Reference

### `LinearProgressWithCircles`

This widget displays the vertical progress indicator with circle avatars.

#### Constructor:

```dart
LinearProgressWithCircles({Key? key, this.completedSteps = 0});
```

- **`completedSteps`**: An integer indicating how many steps are completed (from 0 to 5). Default is `0`.

#### Example:

```dart
LinearProgressWithCircles(completedSteps: 3) // 3 steps completed
```

---

## Customization

You can modify the appearance and behavior of the widget by changing a few aspects:

### 1. Circle Size

The size of the circles can be adjusted by modifying the `radius` property inside the `CircleAvatar`. To change the size of the circle avatars:

```dart
CircleAvatar(
  radius: 20, // Adjust the radius here for different sizes
)
```

### 2. Line Color

The line connecting the circles is colored based on the completed status. You can customize it by modifying the `VerticalLinePainter` class. Change the color in the `paint` method:

```dart
paint..color = isCompleted ? Colors.green : Colors.grey;
```

### 3. Fonts and Styling

You can also customize the text style for the step labels and timestamps by modifying the `TextStyle` in the widget:

```dart
Text(
  timestamp, 
  style: TextStyle(
    color: Colors.black54,
    fontSize: 12,
  ),
)
```

---

## Example with Full Customization

You can further customize the progress indicator according to your design needs:

```dart
LinearProgressWithCircles(
  completedSteps: 2, // Steps completed
)
```

---

## Contribution

If you'd like to contribute to the development of this package, feel free to fork it and create a pull request. Any improvements or bug fixes are highly appreciated.

---

## License

This package is open source and available under the [MIT License](LICENSE).

---

## Troubleshooting

If you encounter any issues or have questions about using this package, feel free to open an issue on the [GitHub repository](https://github.com/yourusername/linear_progress_with_circles/issues).

---

With this detailed README, users should be able to integrate and customize the `LinearProgressWithCircles` package into their Flutter projects easily!

```yaml
dependencies:
  linear_progress_with_circles:
    git:
      url:https://github.com/fastestFingers/linear_progress_with_circles.git
