import 'package:flutter/material.dart';
import 'package:moviesapp/providers/booking_provider.dart';
import 'package:moviesapp/providers/movie_provider.dart';
import 'package:moviesapp/screens/movie_screen.dart';
import 'package:moviesapp/screens/seatselection.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MovieProvider()),
        ChangeNotifierProvider(create: (context) => BookingProvider()),
      ],
      child: MaterialApp(home: Home(), debugShowCheckedModeBanner: false),
    );
  }
}
