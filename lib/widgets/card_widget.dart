import 'package:flutter/material.dart';
import 'package:review_app/components/custom_icon.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(width: 0.1),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 85,
                    height: 85,
                    child: Image.asset(
                      'assets/coffe.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coffe Taple',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$ 50.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                CustomIcon(),
                SizedBox(
                  width: 3,
                ),
                CustomIcon(),
                SizedBox(
                  width: 3,
                ),
                CustomIcon(),
                SizedBox(
                  width: 3,
                ),
                CustomIcon(),
                SizedBox(
                  width: 3,
                ),
                CustomIcon(),
                Spacer(
                  flex: 2,
                ),
                Text(
                  '10/08/2024',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
