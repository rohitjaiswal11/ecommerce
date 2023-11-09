class Model {
  String id;
  String image;
  String name;
  int  price;
  int quantity ;

  Model(
      {this.quantity =0,
      required this.id,
      required this.image,
      required this.name,
      required this.price});
}

List<Model> cartItems = [];
List<Model> uniquelist = [];


List<Model> listProduct = [
  Model(id: "1", image: 'assets/images/book.png', name: 'Book', price: 10),
  Model(id: "2", image: 'assets/images/book.png', name: 'pen', price: 20),
  Model(id: "3", image: 'assets/images/book.png', name: 'pencil', price: 30),
  Model(id: "4", image: 'assets/images/book.png', name: ' Eraser', price: 90),
  Model(
      id: "5", image: 'assets/images/book.png', name: 'sharpner', price: 40),
  Model(id: "6", image: 'assets/images/book.png', name: 'sheets', price: 5),
  Model(id: "7", image: 'assets/images/book.png', name: 'copy', price: 25),
  Model(
      id: "8", image: 'assets/images/book.png', name: 'notebook', price:30),
  Model(id: "9", image: 'assets/images/book.png', name: 'Rope', price:6),
  Model(
      id: "11",
      image: 'assets/images/book.png',
      name: 'Product Ten',
      price: 50),
  Model(
      id: "12",
      image: 'assets/images/book.png',
      name: 'Product Eleven',
      price: 78),
  Model(
      id: "13",
      image: 'assets/images/book.png',
      name: 'Product Twelve',
      price: 60),
  Model(
      id: "14",
      image: 'assets/images/book.png',
      name: 'Product Thirteen',
      price: 50),
  Model(
      id: "15",
      image: 'assets/images/book.png',
      name: 'Product Fourteen',
      price: 20),
  Model(
      id: "16",
      image: 'assets/images/book.png',
      name: 'Product Fifteen',
      price: 20),
];
