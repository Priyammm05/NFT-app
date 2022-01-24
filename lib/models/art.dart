import 'package:nft_app_ui/models/bidder.dart';

class Art {
  String? imgUrl;
  String? name;
  num? price;
  String? desc;
  List<Bidder>? bids;
  List<Bidder>? history;

  Art({
    this.imgUrl,
    this.name,
    this.price,
    this.desc,
    this.bids,
    this.history,
  });
}
