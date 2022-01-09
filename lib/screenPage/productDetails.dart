import 'package:flutter/material.dart';
import 'package:flutter_learn_ecom/apiPage/apiPage.dart';

class ProductDetails extends StatelessWidget {
  final id;
  ProductDetails(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prddut Details'),
      ),
      body: FutureBuilder(
        future: GetApi().getProductDetails(id),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Text(snapshot.data['title']),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.network('image'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(snapshot.data['category']),
                  SizedBox(
                    height: 10,
                  ),
                  Text("BDT " + snapshot.data['price'].toString()),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    child: Text(snapshot.data['description']),
                  ),
                ],
              ),
            );
          }
          return Center(
            child: Text('Loading...'),
          );
        },
      ),
    );
  }
}
