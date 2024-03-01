class HotelPreviewModel {
  final String id, name, image, location;
  final double price;

  HotelPreviewModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.location,
      required this.price});
}

final List<HotelPreviewModel> hotelsDatas = [
  HotelPreviewModel(
      id: '1',
      image:
          "https://images.unsplash.com/photo-1611892440504-42a792e24d32?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Hilton",
      location: "London",
      price: 929),
  HotelPreviewModel(
      id: '2',
      image:
          "https://images.unsplash.com/photo-1618773928121-c32242e63f39?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Marble",
      location: "New York",
      price: 737),
  HotelPreviewModel(
      id: '3',
      image:
          "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Traffors",
      location: "Manchester",
      price: 363),
  HotelPreviewModel(
      id: '4',
      image:
          "https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      name: "Kyoto",
      location: "Tokyo",
      price: 300)
].toList();
