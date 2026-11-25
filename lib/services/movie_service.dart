import 'package:dio/dio.dart';
import 'package:moviesapp/models/app_model.dart';

class MovieService {
  static Dio dio = Dio();

  static Future<AppModel> getmovies() async {
    try {
      Response response = await dio.get(
        "https://apimovie.runasp.net/api/Movies",
      );
      return AppModel.fromJson(response.data);
    } on DioException catch (dioerror) {
      throw Exception(dioerror.message);
    } catch (other) {
      throw Exception(other.toString());
    }
  }
}
