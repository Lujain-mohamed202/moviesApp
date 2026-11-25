import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moviesapp/models/app_model.dart';

class CustomBooking extends StatelessWidget {
  final String status;
  final VoidCallback onTap;
  final String seatNumber;

  const new({
    super.key,
    required this.status,
    required this.onTap,
    required this.seatNumber,
  });

  @override
  Widget build(BuildContext context) {
    final seatcolor = status == "Available"
        ? Color.fromARGB(255, 255, 156, 27)
        : Color.fromARGB(255, 151, 143, 134);

    return InkWell(
      onTap: onTap,
      child: Center(child: Text(seatNumber, style: TextStyle(color: Colors.white))),
    );
  }
}
