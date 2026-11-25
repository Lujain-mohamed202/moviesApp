import 'package:flutter/material.dart';
import 'package:moviesapp/models/app_model.dart';
import 'package:moviesapp/services/booking_services.dart';

class BookingProvider extends ChangeNotifier {
  Future<void> post({
    required int seatId,
    required int movieId,
    required String customerName,
  }) async {
    await BookingServices.post(
      seatId: seatId,
      movieId: movieId,
      customerName: customerName,
    );
    notifyListeners();
  }

  Future<void> put({
    required int bookingId,
    required String customerName,
  }) async {
    await BookingServices.put(bookingId: bookingId, customerName: customerName);
    notifyListeners();
  }

  Future<void> delete({required int bookingId}) async {
    await BookingServices.delete(bookingId: bookingId);
    notifyListeners();
  }
}
