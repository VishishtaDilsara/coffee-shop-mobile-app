import 'package:coffee_shop/components/custom_button.dart';
import 'package:coffee_shop/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        title: Text('Order', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.wallet, color: CustomColors.primaryColor),
                  title: Text(
                    'Cash/Wallet',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  subtitle: Text(
                    '\$ 5.53',
                    style: TextStyle(
                      color: CustomColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                CustomButton(text: 'Order', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl(
                padding: EdgeInsetsGeometry.all(5),
                thumbColor: CustomColors.primaryColor,
                groupValue: 0,
                backgroundColor: Colors.grey.shade100,
                children: {
                  0: Padding(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 12),
                    child: Text(
                      'Deliver',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  1: Text(
                    'Pick Up',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                },
                onValueChanged: (value) {},
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Delivery Address',
              style: TextStyle(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Kamal Bandara',
              style: TextStyle(color: Colors.grey.shade900, fontSize: 15),
            ),
            Text(
              'No 4/4, Kandy , Sri Lanka',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  label: Text(
                    'Edit Address',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                  icon: Icon(Icons.edit, color: Colors.grey.shade800),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: Text(
                    'Add Note',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                  icon: Icon(Icons.note, color: Colors.grey.shade800),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Divider(color: Colors.grey.shade300),
            ),
            ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                'Caffe Mocha',
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Deep Foam'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 21,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.remove, size: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 21,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.discount_rounded,
                  color: CustomColors.primaryColor,
                ),
                title: Text(
                  '1 Discount is Applies',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Payment Summary',
              style: TextStyle(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price'),
                Text('\$ 4.53', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery Fee'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '\$ 2.0',
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '\$ 1.0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
