import 'package:ebookwithdetail/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.62,
            child: Lottie.asset(
              'assets/reading.json',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          GestureDetector(
            onTap: () {
              Get.to(() => const Homepage(),
                  transition: Transition.rightToLeftWithFade,
                  duration: const Duration(seconds: 2) * 0.68);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(232, 247, 173, 14),
                    Color.fromARGB(255, 130, 0, 80),
                    Color.fromARGB(255, 13, 0, 86),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(width: 3.5, color: const Color.fromARGB(164, 0, 0, 0)),
              ),
              child: const Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
