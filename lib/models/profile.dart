import 'package:nft_app_ui/models/art.dart';
import 'package:nft_app_ui/models/bidder.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? username;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;

  Profile({
    this.imgUrl,
    this.name,
    this.username,
    this.desc,
    this.email,
    this.creations,
    this.collections,
  });

  static Profile generateProfile() {
    return Profile(
      imgUrl: "images/avatar.png",
      name: "Priyam Soni",
      username: "@priyammm",
      desc:
          "Flutter Frontend Developer, Loves to code in Python and Js also uses some react for web",
      email: "priyam05soni@gmail.com",
      creations: [
        Art(
          imgUrl: "images/create1.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/create2.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/create3.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/create4.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/create5.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
      collections: [
        Art(
          imgUrl: "images/collection1.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/collection2.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/collection3.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/collection4.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: "images/collection5.jpeg",
          name: "Consume",
          price: 1.53,
          desc:
              "This is my new NFT project and I'm happy to share with you all.",
          bids: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
    );
  }
}
