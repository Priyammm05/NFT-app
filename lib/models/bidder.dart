class Bidder {
  String? imgUrl;
  String? name;
  DateTime? date;
  num? price;

  Bidder({
    this.name,
    this.date,
    this.price,
  });

  static List<Bidder> generateBidder(){
    return [
      Bidder(name: 'Nishant', date: DateTime.now(), price: 1.53),
      Bidder(name: 'Yash', date: DateTime.now(), price: 1.51),
      Bidder(name: 'Lavesh', date: DateTime.now(), price: 1.50),
      Bidder(name: 'Denish', date: DateTime.now(), price: 1.49),
      Bidder(name: 'Atharva', date: DateTime.now(), price: 1.47),
      Bidder(name: 'Yogesh', date: DateTime.now(), price: 1.46),
      Bidder(name: 'Kshitij', date: DateTime.now(), price: 1.43),
    ];
  }

  static List<Bidder> generateHistory(){
    return [
      Bidder(name: 'Yash', date: DateTime.now(), price: 1.50),
      Bidder(name: 'Atharva', date: DateTime.now(), price: 1.49),
      Bidder(name: 'Kshitij', date: DateTime.now(), price: 1.47),
      Bidder(name: 'Lavesh', date: DateTime.now(), price: 1.46),
      Bidder(name: 'Yogesh', date: DateTime.now(), price: 1.45),
      Bidder(name: 'Nishant', date: DateTime.now(), price: 1.43),
      Bidder(name: 'Denish', date: DateTime.now(), price: 1.42),
    ];
  }
}
