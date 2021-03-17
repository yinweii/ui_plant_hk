class Plant {
  String name;
  int price;
  String category;
  String description;
  String imageUrl;
  int height;
  bool islike;

  Plant({
    this.name,
    this.price,
    this.category,
    this.description,
    this.imageUrl,
    this.height,
    this.islike,
  });
}

List<Plant> listPlants = [
  Plant(
    name: 'Xương rồng',
    price: 19,
    category: 'Indoor plant',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/image_1.png',
    height: 140,
  ),
  Plant(
    name: 'Sen đá',
    price: 18,
    category: 'Indoor plant',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/image_2.png',
    height: 140,
  ),
  Plant(
    name: 'Xương cá',
    price: 20,
    category: 'Indoor plant',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/image_3.png',
    height: 140,
  ),
];
