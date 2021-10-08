class Listing {
  final List<String> images;
  final String title;
  final String price;
  final String location;
  final String userName;
  final Description description;

  const Listing(this.images, this.title, this.price, this.location,
      this.userName, this.description);
}

class Description {
  final String summary;
  final Map<String, String>? specs;
  final List<String>? features;
  Description({required this.summary, this.specs, this.features});
}
