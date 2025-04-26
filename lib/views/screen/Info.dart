// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/appcolors.dart';
import 'package:get/route_manager.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text("INFO ON Eczema"),
        centerTitle: true,
        foregroundColor: secondaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/Setting");
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/logo2.jpeg", // Your logo image
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),

            // What is Eczema?
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                "What is Eczema?",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "Eczema (also called atopic dermatitis) is a chronic condition that causes inflammation, redness, and irritation of the skin. "
              "It’s commonly seen in children but can occur at any age. The exact cause is unknown, but it’s believed to be triggered by genetic and environmental factors. "
              "It tends to be a lifelong condition with flare-ups, often triggered by things like allergens, skin infections, or harsh weather conditions.",
              style: TextStyle(fontSize: 15, height: 1.4),
            ),

            // Common Symptoms
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                "Common Symptoms",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/p.jpg", // Your image for common symptoms
                  height: 100,
                ),
              ),
            ),
            const Text(
              "Eczema can present itself in various ways, but the most common symptoms include:\n\n"
              "• Dry, flaky, or scaly skin that often feels rough to the touch\n"
              "• Itching (often intense) that can make it difficult to sleep\n"
              "• Redness or inflammation on patches of skin\n"
              "• Rough, leathery patches of skin\n"
              "• Oozing or crusting of the skin, often from scratching\n"
              "• Swelling and tenderness of the affected area",
              style: TextStyle(fontSize: 15, height: 1.4),
            ),

            // Tips for Managing Eczema
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                "Tips for Managing Eczema",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "While eczema cannot be cured, it can be effectively managed with proper care and attention. Here are some tips:\n\n"
              "• Moisturize your skin regularly with thick, fragrance-free lotions or creams. This helps lock in moisture and prevent dryness.\n"
              "• Avoid known triggers, such as harsh soaps, wool fabrics, or allergens like dust mites and pollen. Stress can also worsen eczema, so practicing relaxation techniques might help.\n"
              "• Take lukewarm baths or showers (hot water can dry out your skin) and avoid scrubbing your skin too hard.\n"
              "• Wear soft, breathable fabrics like cotton to reduce irritation. Avoid tight clothing and scratchy materials.\n"
              "• Use medications prescribed by your doctor, such as topical corticosteroids, to reduce inflammation and control flare-ups.",
              style: TextStyle(fontSize: 15, height: 1.4),
            ),

            // When to Use Eczema Products
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                "When to Use Eczema Products",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "Eczema products, such as topical treatments or moisturizers, should be used regularly to manage the condition. Here’s when to use them:\n\n"
              "• Apply moisturizers immediately after a bath or shower, while the skin is still damp. This helps lock in moisture.\n"
              "• Use topical corticosteroids or prescribed medications during flare-ups or when symptoms worsen, as advised by your doctor.\n"
              "• Apply a thick moisturizer several times a day, especially during the winter months or when your skin feels dry or itchy.\n"
              "• Use emollients and moisturizers as part of your daily skincare routine to maintain skin hydration and reduce flare-ups.\n"
              "• Be consistent and apply products as recommended by your healthcare provider, even when symptoms improve.",
              style: TextStyle(fontSize: 15, height: 1.4),
            ),

            // When to See a Doctor
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                "When to See a Doctor",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/p.jpeg", // Image for "When to see a doctor"
                  height: 100,
                ),
              ),
            ),
            const Text(
              "Eczema can be managed at home in many cases, but sometimes professional help is needed. See a doctor if:\n\n"
              "• The condition doesn’t improve with over-the-counter treatments\n"
              "• Signs of infection develop, such as yellow crusting, pain, or swelling\n"
              "• You experience severe itching that disrupts sleep\n"
              "• Your skin starts bleeding or you notice new rashes appearing\n"
              "• You need help managing eczema flares or preventing long-term skin damage",
              style: TextStyle(fontSize: 15, height: 1.4),
            ),

            const SizedBox(height: 40),
            Center(
              child: Text(
                "Stay consistent with your skincare routine to reduce flares!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
