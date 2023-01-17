import "package:flutter/material.dart";
import 'package:simple_flutter_app/screens/newPage.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var productName;
  final productController = TextEditingController();

  void updateProduct() {
    setState(() {
      productName = productController.text;
    });
  }

  @override
  void initState() {
    super.initState();
    productController.addListener(updateProduct);
  }

// called when widget has bee disposed
  @override
  void dispose() {
    productController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            // TextField(
            //   decoration: InputDecoration(
            //       hintText: "Product name",
            //       // icon: Icon(Icons.production_quantity_limits),
            //       prefixIcon: Icon(Icons.production_quantity_limits)),
            // ),

            // recommended text field
            TextFormField(
              controller: productController,
              // onChanged: (value) => updateProduct(value),
              decoration: InputDecoration(
                  labelText: "Product Name",
                  // icon: Icon(Icons.input),
                  prefix: Icon(Icons.verified),
                  border: OutlineInputBorder()),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: OutlinedButton(
                child: Text("Submit"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyNewPage(
                      productName: productController.text,
                    );
                  }));
                },
              ),
            )
          ]),
        ));
  }
}
