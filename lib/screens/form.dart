import "package:flutter/material.dart";
import 'package:simple_flutter_app/screens/myRadio.dart';
import 'package:simple_flutter_app/screens/newPage.dart';

// enum Gender { Male, Female }

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var productName;
  final productController = TextEditingController();

  // underscore variable is private
  bool? _checkBox = false;
  bool? _checkBoxTile = false;

  Gender? _chooseGenderEnum;

  var productSize = ["small", "Meduium", "large", "xlarge"];
  // var selectedVal = "";
  // _MyFormState() {
  //   selectedVal = productSize[0];
  // }

  void updateProduct() {
    setState(() {
      productName = productController.text;
    });
  }

// not needed when input data is going on another page
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
            ),
            Checkbox(
                tristate: true,
                checkColor: Colors.amber,
                activeColor: Colors.red,
                value: _checkBox,
                onChanged: ((value) {
                  setState(() {
                    _checkBox = value;
                  });
                })),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("Shoes"),
                value: _checkBoxTile,
                onChanged: ((value) {
                  setState(() {
                    _checkBoxTile = value;
                  });
                })),
            Radio(
                value: Gender.Male,
                groupValue: _chooseGenderEnum,
                onChanged: ((value) {
                  setState(() {
                    _chooseGenderEnum = value;
                  });
                })),
            // RadioListTile(
            //     contentPadding: EdgeInsets.all(0),
            //     dense: true,
            //     value: Gender.Female,
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8)),
            //     tileColor: Colors.amber,
            //     groupValue: _chooseGenderEnum,
            //     title: Text(Gender.Male.name),
            //     onChanged: ((value) {
            //       setState(() {
            //         _chooseGenderEnum = value;
            //       });
            //     }))
            MyRadio(
                title: Gender.Male.name,
                value: Gender.Male,
                chooseGenderEnum: _chooseGenderEnum,
                onChange: ((p0) {
                  setState(() {
                    _chooseGenderEnum = p0;
                  });
                })),
            MyRadio(
                title: Gender.Female.name,
                value: Gender.Female,
                chooseGenderEnum: _chooseGenderEnum,
                onChange: ((p0) {
                  setState(() {
                    _chooseGenderEnum = p0;
                  });
                })),
            DropdownButton(
                value: productSize[0],
                items: productSize
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: ((value) {})),
            DropdownButtonFormField(
                value: productSize[0],
                items: productSize
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: ((value) {}))
          ]),
        ));
  }
}
