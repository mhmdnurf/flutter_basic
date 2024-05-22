import "package:flutter/material.dart";

class ColorWidget extends InheritedWidget {
  const ColorWidget({
    super.key,
    required super.child,
    required this.color,
    required this.onColorChange,
  });

  final Color color;
  final void Function() onColorChange;

  static ColorWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorWidget>();
  }

  @override
  bool updateShouldNotify(ColorWidget oldWidget) {
    return oldWidget.color != color;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.red;

  void onColorChange() {
    setState(() {
      color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColorWidget(
      color: color,
      onColorChange: onColorChange,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ColorCardWidget(key: UniqueKey()),
              ElevatedButton(
                  onPressed: () => onColorChange(),
                  child: const Text("Change Color"))
            ],
          ),
        ),
      ),
    );
  }
}

class ColorCardWidget extends StatelessWidget {
  const ColorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorWidget.of(context)!.color,
      height: 500,
      width: 500,
    );
  }
}
