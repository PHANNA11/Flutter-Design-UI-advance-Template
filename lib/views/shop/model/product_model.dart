class ProductModel {
  late int code;
  late String name;
  late String image;
  late String description;
  late bool faverite;
  late double price;
  late int qty;
  late List<String> ItemAddOn;
  ProductModel(
      {required this.code,
      required this.name,
      required this.description,
      required this.faverite,
      required this.image,
      required this.price,
      required this.qty,
      required this.ItemAddOn});
}

List<ProductModel> products = [
  ProductModel(
      ItemAddOn: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQBi5Co29a_UJVwOtGJrx51ZRJqOqgtAacg&usqp=CAU',
        'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/07/cheesy-potato-balls-5178.jpg',
        'https://yummykitchentv.com/wp-content/uploads/2021/03/potato-cheese-rolls.jpg',
      ],
      code: 123,
      name: 'Pizza',
      description:
          'gredients150g Perfect Italiano pizza cheese2 tbs basil leaves, to serve (to serve)0.75 cup pizza sauce0.5 pkt Primo pepperoni, sliced (sliced)1 large store-bought wood-fired pizza base',
      faverite: true,
      image:
          'https://foodhub.scene7.com/is/image/woolworthsltdprod/2004-easy-pepperoni-pizza:Mobile-1300x1150',
      price: 18,
      qty: 1),
  ProductModel(
      ItemAddOn: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQBi5Co29a_UJVwOtGJrx51ZRJqOqgtAacg&usqp=CAU',
        'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/07/cheesy-potato-balls-5178.jpg',
        'https://yummykitchentv.com/wp-content/uploads/2021/03/potato-cheese-rolls.jpg',
      ],
      code: 12363,
      name: 'Berger Point & Fresh ',
      description:
          'Berger Point & Fresh N Fresh Fast Food in Toli Chowki,Hyderabad - Best Fast Food in Hyderabad - Justdial',
      faverite: false,
      image:
          'https://content.jdmagicbox.com/comp/hyderabad/w2/040pxx40.xx40.171206180046.a7w2/catalogue/berger-point-and-fresh-n-fresh-fast-food-toli-chowki-hyderabad-fast-food-7zi7j5vuf5-250.jpg',
      price: 22,
      qty: 1),
  ProductModel(
      ItemAddOn: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQBi5Co29a_UJVwOtGJrx51ZRJqOqgtAacg&usqp=CAU',
        'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/07/cheesy-potato-balls-5178.jpg',
        'https://yummykitchentv.com/wp-content/uploads/2021/03/potato-cheese-rolls.jpg',
      ],
      code: 11123,
      name: 'Berger Takeaway',
      description: 'Takeaway Food - Highett VIC 3190 - 2018202841',
      faverite: false,
      image:
          'https://bucket-api.domain.com.au/v1/bucket/image/2018202841_1_1_221115_114545-w1148-h677/800x600',
      price: 12,
      qty: 1),
  ProductModel(
      ItemAddOn: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQBi5Co29a_UJVwOtGJrx51ZRJqOqgtAacg&usqp=CAU',
        'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/07/cheesy-potato-balls-5178.jpg',
        'https://yummykitchentv.com/wp-content/uploads/2021/03/potato-cheese-rolls.jpg',
      ],
      code: 12453,
      name: 'Pizza',
      description:
          'gredients150g Perfect Italiano pizza cheese2 tbs basil leaves, to serve (to serve)0.75 cup pizza sauce0.5 pkt Primo pepperoni, sliced (sliced)1 large store-bought wood-fired pizza base',
      faverite: true,
      image:
          'https://foodhub.scene7.com/is/image/woolworthsltdprod/2004-easy-pepperoni-pizza:Mobile-1300x1150',
      price: 18,
      qty: 1),
  ProductModel(
      ItemAddOn: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQBi5Co29a_UJVwOtGJrx51ZRJqOqgtAacg&usqp=CAU',
        'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/07/cheesy-potato-balls-5178.jpg',
        'https://yummykitchentv.com/wp-content/uploads/2021/03/potato-cheese-rolls.jpg',
      ],
      code: 12263,
      name: 'Berger Point & Fresh ',
      description:
          'Berger Point & Fresh N Fresh Fast Food in Toli Chowki,Hyderabad - Best Fast Food in Hyderabad - Justdial',
      faverite: false,
      image:
          'https://content.jdmagicbox.com/comp/hyderabad/w2/040pxx40.xx40.171206180046.a7w2/catalogue/berger-point-and-fresh-n-fresh-fast-food-toli-chowki-hyderabad-fast-food-7zi7j5vuf5-250.jpg',
      price: 22,
      qty: 1),
  ProductModel(
      ItemAddOn: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQBi5Co29a_UJVwOtGJrx51ZRJqOqgtAacg&usqp=CAU',
        'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/07/cheesy-potato-balls-5178.jpg',
        'https://yummykitchentv.com/wp-content/uploads/2021/03/potato-cheese-rolls.jpg',
      ],
      code: 1293,
      name: 'Berger Takeaway',
      description: 'Takeaway Food - Highett VIC 3190 - 2018202841',
      faverite: false,
      image:
          'https://bucket-api.domain.com.au/v1/bucket/image/2018202841_1_1_221115_114545-w1148-h677/800x600',
      price: 12,
      qty: 1),
];
