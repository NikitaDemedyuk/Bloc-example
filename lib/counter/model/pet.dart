class Pet {

  Pet.unnamed() { }

  Pet.parameters(String name_, String imagePath_, int indexFeed_, int indexHappy_, List <bool> isFeed_, List <bool> isHappy_) {
    name = name_;
    imagePath = imagePath_;
    indexFeed = indexFeed_;
    indexHappy = indexHappy_;
    isFeed = isFeed_;
    isHappy = isHappy_;
  }


  String name = "Tom";
  String imagePath = "";
  int indexFeed = 0;
  int indexHappy = 0;
  List <bool> isFeed = [false, false, false, false, false];
  List <bool> isHappy = [false, false, false, false, false];
}