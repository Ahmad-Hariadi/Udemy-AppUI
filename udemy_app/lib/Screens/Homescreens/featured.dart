import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Product {
  String productTitle;
  String productName;
  int productPrice;
  String productRate;
  int productEnrol;
  String productImage;

  Product(
      {required this.productTitle,
      required this.productName,
      required this.productPrice,
      required this.productRate,
      required this.productEnrol,
      this.productImage = "images/sale.jpg"});
}

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  List<Product> productData = [
    Product(
        productTitle: "JavaScript Programming : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "4,8",
        productEnrol: 1135,
        productImage: "images/js.jpg"),
    Product(
        productTitle: "Golang Programming : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "5,0",
        productEnrol: 1824,
        productImage: "images/golang.jpg"),
    Product(
        productTitle: "Flutter : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "4,7",
        productEnrol: 1000,
        productImage: "images/flutter.jpg"),
    Product(
        productTitle: "Java Programming : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "4,8",
        productEnrol: 1524,
        productImage: "images/java.jpg"),
    Product(
        productTitle: "Laravel : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "5,0",
        productEnrol: 1600,
        productImage: "images/laravel.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("images/sale1.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                color: Colors.blueAccent,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Courses now on sale",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        "1 Day Left",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                "Featured",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                      "${productData[index].productImage}"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(
                              "${productData[index].productTitle}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Text(
                            "${productData[index].productName}",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "${productData[index].productRate}",
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "(${productData[index].productEnrol})",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Row(
                            children: [
                              Text("Rp. ${productData[index].productPrice}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Best Seller",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                "Top Courses in Development",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                      "${productData[index].productImage}"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(
                              "${productData[index].productTitle}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Text(
                            "${productData[index].productName}",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.amberAccent,
                                size: 22,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "${productData[index].productRate}",
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "(${productData[index].productEnrol})",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Row(
                            children: [
                              Text("Rp. ${productData[index].productPrice}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Best Seller",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(EvaIcons.shoppingCartOutline))
        ],
        backgroundColor: Colors.black,
        title: Text(
          "Featured",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
