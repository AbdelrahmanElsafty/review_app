import 'package:flutter/material.dart';
import 'package:review_app/widgets/card_widget.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 25,
        ),
        title: const Text(
          'My reviews',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            CardWidget(),
            SizedBox(
              height: 20,
            ),
            CardWidget(),
            SizedBox(
              height: 20,
            ),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}
