import 'package:dio/dio.dart';

class BookingServices {
  static Dio dio = Dio();

  static Future<void> post({
    required int seatId,
    required int movieId,
    required String customerName,
  }) async {
    await dio.post("https://apimovie.runasp.net/api/Bookings", data:
     {
          "seatId": seatId,
          "CustomerName": customerName,
          "movieId": movieId,
     }
    );
  }

  static Future<void> put({
    
    required int bookingId,
    required String customerName,
  }) async {
    await dio.put("https://apimovie.runasp.net/api/Bookings/$bookingId", data:
     {
          
          "CustomerName": customerName,
          
     }
    );
  }

  static Future<void> delete({
    
    required int bookingId,
    
  }) async {
    await dio.delete("https://apimovie.runasp.net/api/Bookings/$bookingId"
     
    );
  }


}
