import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presentation/paymentscreen/successpage.dart';
import 'changeadd.dart';
import 'summarycheckbox.dart';
import 'summaryrow.dart';

class Cartview extends StatefulWidget {
  final int subtotal; // Add a parameter to accept subtotal

  const Cartview(
      {super.key, required this.subtotal}); // Accept subtotal in constructor

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {
  bool isSampleAdded = false;
  bool isDisplayStandAdded = false;
  bool isBrochureAdded = false;
  bool isLeafcoinAdded = false;

  @override
  Widget build(BuildContext context) {
    int subtotal = widget.subtotal;

    return Column(
      children: [
        ListTile(
          title: const Text("Add Address"),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangeAddress()),
                );
              },
              icon: Icon(Icons.add_circle_outline_outlined)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 350,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              color: Color(0xff6EBC31).withOpacity(0.84),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: const Color(0xFF6EBC31), width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(Icons.account_balance_wallet_outlined,
                                size: 20, color: Colors.black)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "You will get 10 leaf coins",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff005511),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SummaryRowWithCheckbox(
                        label: "Add a sample",
                        value: isSampleAdded,
                        onChanged: (bool? value) {
                          setState(() {
                            isSampleAdded = value ?? false;
                          });
                        },
                      ),
                      SummaryRowWithCheckbox(
                        label: "Add display stand",
                        value: isDisplayStandAdded,
                        onChanged: (bool? value) {
                          setState(() {
                            isDisplayStandAdded = value ?? false;
                          });
                        },
                      ),
                      SummaryRowWithCheckbox(
                        label: "Add brochure",
                        value: isBrochureAdded,
                        onChanged: (bool? value) {
                          setState(() {
                            isBrochureAdded = value ?? false;
                          });
                        },
                      ),
                      SummaryRowWithCheckbox(
                        label: "Add leafcoin",
                        value: isLeafcoinAdded,
                        onChanged: (bool? value) {
                          setState(() {
                            isLeafcoinAdded = value ?? false;
                          });
                        },
                      ),
                      SummaryRow(label: "Subtotal", value: "$subtotal rs"),
                      SummaryRow(label: "Discount Price", value: "0"),
                      SummaryRow(label: "Delivery Charge", value: "Free"),
                      Divider(),
                      SummaryRow(label: "Total", value: "$subtotal rs"),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: SizedBox(
                            height: 34,
                            width: 244,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FadeInAndSlide()),
                                );
                              },
                              child: Text(
                                "Proceed to Checkout",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff6EBC31),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
