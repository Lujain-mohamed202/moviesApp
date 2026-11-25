import 'package:flutter/material.dart';
import 'package:moviesapp/providers/movie_provider.dart';
import 'package:moviesapp/widgets/custom.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<MovieProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 58, 93),
        centerTitle: true,
        title: Text(
          "Movies",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Consumer<MovieProvider>(
        builder: ((context, value, child) {
          final data = provider.appmodel?.model;
          if (data == null) {
            value.getmovie();
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: ((context, index) {
                return CustomCard(movie: data[index]);
              }),
            );
          }
        }),
      ),
    );
  }
}
