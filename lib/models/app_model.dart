class AppModel {
  List<Movie> model;
  AppModel({required this.model});
  factory AppModel.fromJson(Map<String, dynamic> json) {
    final templist = json["data"]
        .map<Movie>(
          (result) => Movie(
            id: result["id"],
            name: result["name"],
            poster: result["poster"],
            showDate: result["showDate"],
            showTime: result["showTime"],
            seats: result["seats"].map<Seats>(
              (seat) => Seats(
                seatId: seat["seatId"] ?? -1,
                bookingId: seat["bookingId"] ?? -1,
                seatNumber: seat["seatNumber"] ?? "",
                status: seat["status"] ?? "",
                customerName: seat["customerName"] ?? "",
              ),
            ).toList(),
          ),
        )
        .toList();
    return AppModel(model: templist);
  }
}

class Movie {
  final int id;
  final String name;
  final String poster;
  final String showDate;
  final String showTime;
  final List<Seats> seats;

  Movie({
    required this.id,
    required this.name,
    required this.poster,
    required this.showDate,
    required this.showTime,
    required this.seats,
  });
}

class Seats {
  final int seatId;
  final int? bookingId;
  final String seatNumber;
  final String status;
  final String? customerName;

  Seats({
    required this.seatId,
    this.bookingId,
    required this.seatNumber,
    required this.status,
    this.customerName,
  });
}
