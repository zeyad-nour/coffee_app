import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({super.key});

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool isIced = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          _buildToggleSelection("Hote", !isIced),
          _buildToggleSelection("Iced", isIced),
        ],
      ),
    );
  }

  Widget _buildToggleSelection(label, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isIced = label == "Iced";
        });
      },
      child: AnimatedContainer(
        curve: Curves.linear,
        padding: EdgeInsets.symmetric(horizontal: 20),
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.grey[300],
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(padding: const EdgeInsets.all(6.0), child: Text(label)),
      ),
    );
  }
}
