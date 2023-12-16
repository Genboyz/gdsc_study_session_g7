import 'package:flutter/material.dart';
import 'package:first_app/create_task.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color.fromRGBO(238, 111, 87, 1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, size: 40),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/stickman-with-todo.png', height: 200),
              const Text(
                'Tasks List',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTaskRow(
                  'U', 'UX/UI app design', 'Apr 29, 2023', Colors.red),
              const SizedBox(height: 10),
              _buildTaskRow(
                  'U', 'UX/UI app design', 'Apr 29, 2023', Colors.green),
              const SizedBox(height: 10),
              _buildTaskRow(
                  'V', 'View Candidates', 'Apr 29, 2023', Colors.yellow),
              const SizedBox(height: 10),
              _buildTaskRow(
                  'F', 'Football Dribbling', 'Apr 29, 2023', Colors.red),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CreateTask()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 239, 91, 80),
                  fixedSize: const Size(200, 8),
                ),
                child: const Text(
                  "Create Task",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaskRow(String icon, String title, String date, Color color) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 134, 133, 133).withOpacity(0.5),
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            icon,
            style: const TextStyle(
              fontSize: 27,
            ),
          ),
          const SizedBox(width: 13),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 42),
          Text(
            date,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 20),
          Container(
            height: 33,
            width: 3,
            color: color,
          ),
        ],
      ),
    );
  }
}
