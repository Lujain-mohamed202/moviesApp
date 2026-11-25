import 'package:flutter/foundation.dart';
import 'package:moviesapp/models/app_model.dart';
import 'package:moviesapp/services/movie_service.dart';

class MovieProvider extends ChangeNotifier {
  AppModel? appmodel;

  Future<void> getmovie() async {
    appmodel = await MovieService.getmovies();
    notifyListeners();
  }
}
