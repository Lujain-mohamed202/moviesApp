import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moviesapp/models/app_model.dart';
import 'package:moviesapp/providers/booking_provider.dart';
import 'package:moviesapp/providers/movie_provider.dart';
import 'package:moviesapp/widgets/custom.dart';
import 'package:moviesapp/widgets/custom2.dart';
import 'package:provider/provider.dart';

class Seatselection extends StatelessWidget {
  Seatselection({super.key, required this.movie, required this.seats});
  Movie movie;
  Seats seats;
  @override
  Widget build(BuildContext context) {
    final provider = context.read<MovieProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 58, 93),
        centerTitle: true,
        title: Text(
          movie.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          CustomCard(movie: movie),
          SizedBox(height: 50),
          Text(
            "Select Your Seat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 50),
          Container(
            height: 400,

            child: Consumer<MovieProvider>(
              builder: (context, value, child) {
                final provider = value.appmodel;


                
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ),

                  itemCount: movie.seats.length,
                  itemBuilder: (context, index) {
                    return CustomBooking(
                      status: seats.status,

                      seatNumber: seats.seatNumber,
                      onTap: () {
                        if (seats.status == "Available") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Placeholder(),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Placeholder(),
                            ),
                          );
                        }
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
