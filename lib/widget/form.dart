// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:votting_app/widget/detail.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  // var _productName;
  var productName;
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();

  bool? _checkBox, _listTileCheckBox = false;

  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    super.dispose();
  }

  void _updateText(val) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Custom Form'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productController,
                  fieldName: "Product Name",
                  myIcon: Icons.account_balance,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 10.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: _productDesController,
                  fieldName: "Product Description",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),

              Checkbox(
                  tristate: true,
                  value: _checkBox,
                  onChanged: (val) {
                    setState(() {
                      _checkBox = val;
                    });
                  }),

              CheckboxListTile(
                  value: _listTileCheckBox,
                  title: Text('CheckBOX'),
                  onChanged: (val) {
                    setState(() {
                      _listTileCheckBox = val;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  ),

              myBtn(context),
              // Text('This th Product Name ${_productController.text}'),
            ],
          ),
        ));
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsClass(
              productName: _productController.text,
              productDescription: _productDesController.text,
            );
          }));
        },
        child: Text(
          'SubmitForm'.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
