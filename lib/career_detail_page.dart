import 'package:flutter/material.dart';

class CareerDetailPage extends StatelessWidget {
  final String careerName;

  const CareerDetailPage({super.key, required this.careerName});

  String getDetails() {
    if (careerName == "Software Developer") {
      return "Skills: Programming, Problem Solving, Flutter, Java\n\nSalary: ₹4 - ₹12 LPA\n\nRoadmap:\nLearn programming → Learn Flutter → Build projects → Apply for internship";
    } else if (careerName == "UI/UX Designer") {
      return "Skills: Creativity, Figma, Design Thinking\n\nSalary: ₹3 - ₹8 LPA\n\nRoadmap:\nLearn Figma → Make wireframes → Create prototypes → Build portfolio";
    } else if (careerName == "Data Analyst") {
      return "Skills: Excel, SQL, Python, Power BI\n\nSalary: ₹4 - ₹10 LPA\n\nRoadmap:\nLearn Excel → Learn SQL → Learn Python → Create dashboards";
    } else if (careerName == "Finance Expert") {
      return "Skills: Accounting, Taxation, Excel, Business Knowledge\n\nSalary: ₹3 - ₹9 LPA\n\nRoadmap:\nLearn accounts → Learn taxation → Learn Excel → Get internship";
    } else {
      return "Skills: Communication, Subject Knowledge, Patience\n\nSalary: ₹3 - ₹7 LPA\n\nRoadmap:\nChoose subject → Learn teaching methods → Create notes → Start teaching";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(careerName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          getDetails(),
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}