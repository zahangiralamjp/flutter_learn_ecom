import 'package:flutter/material.dart';
import 'package:flutter_learn_ecom/apiPage/apiPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: GetApi().ProductList(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(snapshot.data[index]['image']),
                    title: Text(snapshot.data[index]['title']),
                    trailing:
                        Text('BDT ' + snapshot.data[index]['price'].toString()),
                    onTap: () {},
                  );
                },
              );
            }
            return Center(
              child: Text('Loading..'),
            );
          },
        ),
      ),
    );
  }
}
