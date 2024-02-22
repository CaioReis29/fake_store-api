class Rating {
  dynamic rate;
  int? count;

  Rating({
    required this.rate,
    required this.count,
  });

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toMap() {
    return {
      "rate": rate,
      "count": count,
    };
  }
}