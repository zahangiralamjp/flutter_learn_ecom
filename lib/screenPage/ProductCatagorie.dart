import 'package:flutter/material.dart';
import 'package:flutter_learn_ecom/apiPage/apiPage.dart';
import 'package:flutter_learn_ecom/screenPage/catagoriesByProduct.dart';

class ProductCatagorie extends StatelessWidget {
  final String cata;
  ProductCatagorie(this.cata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Catagories'),
      ),
      body: FutureBuilder(
        future: GetApi().getCatagories(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: InkWell(
                          onTap: () {
                             Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                catagoriesByProduct(snapshot.data[index])));
                          },
                          child: Text(
                              snapshot.data[index].toString().toUpperCase())),
                    ),
                  ),
                );
              },
            );
          }
          return Center(
            child: Text('Loading..'),
          );
        },
      ),
    );
  }
}
