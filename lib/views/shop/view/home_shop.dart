import 'package:design_ui/app_style/app_size.dart';
import 'package:design_ui/views/drawer/drawer_screen.dart';
import 'package:design_ui/views/shop/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:badges/badges.dart' as badges;

class HomeShop extends StatefulWidget {
  const HomeShop({super.key});

  @override
  State<HomeShop> createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  final searchController = TextEditingController();
  List<ProductModel> filterProduct = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shop'),
        actions: const [
          Align(
            alignment: Alignment.centerLeft,
            child: badges.Badge(
              badgeContent: Text('1'),
              child: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Search',
                ),
                onChanged: (value) {
                  setState(() {
                    if (searchController.text.isEmpty) {
                      filterProduct.clear();
                    } else {
                      filterProduct = products
                          .where((element) => element.name
                              .toLowerCase()
                              .contains(value.toLowerCase()))
                          .toList();
                    }
                  });
                },
              ),
            ),
          ),
          Flexible(
            flex: 12,
            child: GridView.count(
              childAspectRatio: 12 / 18,
              crossAxisCount: 2,
              children: List.generate(
                  searchController.text.isEmpty || filterProduct.isEmpty
                      ? products.length
                      : filterProduct.length,
                  (index) => buildProductCard(filterProduct.isEmpty
                      ? products[index]
                      : filterProduct[index])),
            ),
          )
        ],
      ),
    );
  }

  Widget buildProductCard(ProductModel pro) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pro.image)),
                      color: Colors.blueAccent,
                      borderRadius:
                          BorderRadius.circular(AppSize().decorationS10)),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  pro.name,
                                  style: AppSize().titleTextStyle,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  '\$${pro.price}',
                                  style: AppSize().priceTextStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Icon(
                              Icons.shopping_cart,
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
              top: 1,
              right: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pro.faverite = !pro.faverite;
                  });
                },
                child: CircleAvatar(
                  child: Icon(
                    Icons.favorite,
                    color: pro.faverite ? Colors.red : Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
