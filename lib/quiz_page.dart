import 'package:flutter/material.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int softwareScore = 0;
  int designScore = 0;
  int dataScore = 0;
  int financeScore = 0;
  int teachingScore = 0;

  void showResult() {
    String career = "Software Developer";

    int highest = softwareScore;

    if (designScore > highest) {
      highest = designScore;
      career = "UI/UX Designer";
    }

    if (dataScore > highest) {
      highest = dataScore;
      career = "Data Analyst";
    }

    if (financeScore > highest) {
      highest = financeScore;
      career = "Finance Expert";
    }

    if (teachingScore > highest) {
      career = "Teacher";
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(careerName: career),
      ),
    );
  }

  Widget question(String text, VoidCallback yesAction) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(text, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: yesAction,
              child: const Text("Yes"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Career Quiz"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            question("Do you like coding?", () {
              softwareScore++;
            }),
            question("Do you like designing?", () {
              designScore++;
            }),
            question("Do you like maths and data?", () {
              dataScore++;
            }),
            question("Do you like business and finance?", () {
              financeScore++;
            }),
            question("Do you like teaching or helping others?", () {
              teachingScore++;
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: showResult,
              child: const Text("Show Result"),
            ),
          ],
        ),
      ),
    );
  }
}