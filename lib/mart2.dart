import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: '数据传递案例',
      home: ProductList(
        products: List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号为:$i')),
      )));
}

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {},
          );
        },
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('导航页面')),
        body: Center(
            child: RaisedButton(
          child: Text('查看商品详情页面33'),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SecondScreen()));
          },
        )));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品详情页')),
        body: Center(
            child: RaisedButton(
                child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ))));
  }
}
