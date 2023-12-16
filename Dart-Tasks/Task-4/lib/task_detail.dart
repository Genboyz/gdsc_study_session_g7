import 'package:flutter/material.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color.fromARGB(255, 211, 108, 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, size: 45),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('images/shopping-list 1.png', height: 230),
              ),
              const SizedBox(height: 10),
              _buildInfoItem('Title', 'UI/UX App Design', 300),
              const SizedBox(height: 10),
              _buildInfoItem(
                  'Description',
                  'First I have to animate the logo and prototyping my design.',
                  300),
              const SizedBox(height: 10),
              _buildInfoItem('Deadline', 'Apr 29, 2023', 300),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, String text, double containerWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 5),
        Container(
          width: containerWidth,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
