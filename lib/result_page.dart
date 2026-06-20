import 'package:flutter/material.dart';
import 'career_detail_page.dart';

class ResultPage extends StatelessWidget {
  final String careerName;

  const ResultPage({super.key, required this.careerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Your Recommended Career",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  careerName,
                  style: const TextStyle(fontSize: 26),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CareerDetailPage(careerName: careerName),
                      ),
                    );
                  },
                  child: const Text("View Career Details"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}