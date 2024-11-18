import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeAddress extends StatefulWidget {
  const ChangeAddress({super.key});

  @override
  State<ChangeAddress> createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
  final formKey = GlobalKey<FormState>();
  TextEditingController namectrlr = TextEditingController();
  TextEditingController phonectrlr = TextEditingController();
  TextEditingController housectrlr = TextEditingController();
  TextEditingController areactrlr = TextEditingController();
  TextEditingController statectrlr = TextEditingController();
  TextEditingController cityctrlr = TextEditingController();
  TextEditingController pinctrlr = TextEditingController();
  TextEditingController landctrlr = TextEditingController();

  bool isHomeSelected = false;
  bool isOfficeSelected = false;

  void toggleHome() {
    setState(() {
      isHomeSelected = true;
      isOfficeSelected = false;
    });
  }

  void toggleOffice() {
    setState(() {
      isHomeSelected = false;
      isOfficeSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Add a new address",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: namectrlr,
                    decoration: InputDecoration(
                      hintText: 'Shop Name',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 10),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phonectrlr,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 10),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      padding: EdgeInsets.only(left: 8),
                      child: TextFormField(
                        // controller: viewModel.mblctrlr,
                        decoration: InputDecoration(
                          hintText: 'House No, Building Name *',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the house number or building name';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: EdgeInsets.only(left: 8),
                    child: TextFormField(
                      // controller: viewModel.mblctrlr,
                      decoration: InputDecoration(
                        hintText: 'Road Name, Area, Colony *',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          padding: EdgeInsets.only(left: 8),
                          child: TextFormField(
                            // controller: viewModel.mblctrlr,
                            decoration: InputDecoration(
                              hintText: 'State *',
                              hintStyle: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          padding: EdgeInsets.only(left: 8),
                          child: TextFormField(
                            // controller: viewModel.mblctrlr,
                            decoration: InputDecoration(
                              hintText: 'City *',
                              hintStyle: TextStyle(
                                fontSize: 12, // ScreenUtil applied here
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20, // ScreenUtil applied here
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: EdgeInsets.only(left: 8),
                    child: TextFormField(
                      // controller: viewModel.mblctrlr,
                      decoration: InputDecoration(
                        hintText: 'Pin Code *',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: EdgeInsets.only(left: 8),
                    child: TextFormField(
                      // controller: viewModel.mblctrlr,
                      decoration: InputDecoration(
                        hintText: 'Land mark (optional)',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: toggleHome,
                              icon: Icon(
                                Icons.home,
                                size: 15,
                              ),
                              label: Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isHomeSelected
                                    ? const Color(0xff6EBC31)
                                    : Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1,
                                    horizontal: 1), // Responsive padding
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Responsive border radius
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: toggleOffice,
                              icon: Icon(
                                Icons.villa_sharp,
                                size: 15,
                              ),
                              label: Text(
                                "Office",
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isOfficeSelected
                                    ? Color(0xff6EBC31)
                                    : Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1, horizontal: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save Address",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff005511),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
