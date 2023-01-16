import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  var productList = ["Soda", "Beer", "Fanta"];
  var productDetails = [
    "It is expensive and non alcoholic",
    "It cheaper and contain alcohol",
    "It is cheap and non alcoholic"
  ];
  var price = [3000, 2500, 800];
  ListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Gabin Ishimwe"),
              accountEmail: Text("gabin@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Icon(Icons.person_add),
                ),
                CircleAvatar(
                  child: Icon(Icons.person_add),
                ),
                CircleAvatar(
                  child: Icon(Icons.person_add),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                print("Homee....");
              },
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Shop"),
              onTap: () {
                print("Shopping....");
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
              onTap: () {
                print("Favorites....");
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text("Labels"),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Red"),
              onTap: () {
                print("Red....");
              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Green"),
              onTap: () {
                print("Green....");
              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Blue"),
              onTap: () {
                print("Blue....");
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(productList[index][0])),
              title: Text(productList[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
              onTap: () {
                print("price is ${price[index]}");
              },
            );
          },
        ),
      ),
    );
  }
}
