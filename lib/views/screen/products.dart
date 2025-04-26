import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/appcolors.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Eczema Relief Products'),
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/product1.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. CeraVe Moisturizing Cream',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A rich cream that provides all-day hydration and helps restore the skin\'s protective barrier.',
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/product2.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2. La Roche-Posay Toleriane Double Repair Face Moisturizer',
                      style:  TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A lightweight moisturizer that replenishes moisture and helps restore the skin\'s barrier.',
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/product3.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3. Aveeno Eczema Therapy Moisturizing Cream',
                      style:  TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Formulated with colloidal oatmeal, this cream soothes irritated skin and provides long-lasting moisture.',
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/product4.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4. Eucerin Eczema Relief Cream',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'This cream calms and soothes eczema-prone skin, providing relief from itching and irritation.',
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/product5.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '5. Vanicream Moisturizing Skin Cream',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'A gentle, fragrance-free cream that\'s ideal for sensitive skin and helps relieve dryness and irritation.',
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/product6.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '6. Cetaphil PRO Restoraderm Soothing Moisturizer',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'This moisturizer replenishes moisture and soothes dry, itchy skin associated with eczema.',
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/product7.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '7. Shea butter',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Shea butter is a proven moisturizer for your skin. There are plenty of skincare products, at a variety of price points that contain shea butter as one of the main ingredients',
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