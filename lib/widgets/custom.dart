import 'package:flutter/material.dart';
import 'package:moviesapp/models/app_model.dart';
import 'package:moviesapp/screens/seatselection.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.movie});

  Movie movie;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Placeholder()),
        );
      },
      child: Card(
        elevation: 15,
        child: Row(
          spacing: 10,
          children: [
            Image.network(movie.poster, width: 150, height: 150),
            Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              spacing: 10,
              children: [
                Text(
                  movie.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: .start,
                  children: [Icon(Icons.date_range), Text(movie.showDate)],
                ),
                Row(
                  mainAxisAlignment: .start,
                  children: [
                    Icon(Icons.timer_sharp),
                    SizedBox(width: 15),
                    Text(movie.showTime),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
