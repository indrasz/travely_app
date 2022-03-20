class TravelPackage {
  String name;
  String location;
  String description;
  int price;
  int duration;
  int temperature;
  double rating;
  String imageUrl;

  TravelPackage(
      {required this.name,
      required this.location,
      required this.description,
      required this.price,
      required this.duration,
      required this.temperature,
      required this.rating,
      required this.imageUrl});
}

var travelPackageList = [
  TravelPackage(
      name: 'Kelingking beach',
      location: 'Bali, Indonesia',
      description:
          'Kelingking Beach is one of the most famous spot of Bali. Major travel sites use its photo to advertise Bali and even sometimes Indonesia.The place is indeed very spectacular and really amazing. The rock of Kelingking Beach looks a little like the backbone of a dinosaur that would drink in the sea.',
      price: 260,
      duration: 3,
      temperature: 28,
      rating: 4.8,
      imageUrl: 'assets/image1'),
  TravelPackage(
      name: 'Alimatha island',
      location: 'Maldives',
      description:
          'Kelingking Beach is one of the most famous spot of Bali. Major travel sites use its photo to advertise Bali and even sometimes Indonesia.The place is indeed very spectacular and really amazing. The rock of Kelingking Beach looks a little like the backbone of a dinosaur that would drink in the sea.',
      price: 260,
      duration: 3,
      temperature: 28,
      rating: 4.8,
      imageUrl: 'assets/image2'),
  TravelPackage(
      name: 'Peyto lake',
      location: 'Alberta, Canada',
      description:
          'Kelingking Beach is one of the most famous spot of Bali. Major travel sites use its photo to advertise Bali and even sometimes Indonesia.The place is indeed very spectacular and really amazing. The rock of Kelingking Beach looks a little like the backbone of a dinosaur that would drink in the sea.',
      price: 260,
      duration: 3,
      temperature: 28,
      rating: 4.8,
      imageUrl: 'assets/image2'),
];
