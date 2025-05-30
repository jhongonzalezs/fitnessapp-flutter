import 'package:flutter/material.dart';
import 'package:fitnessapp/widgets/workout_card.dart';
import 'package:fitnessapp/widgets/info_box.dart';

class FitnessDay extends StatelessWidget {
  const FitnessDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Hi Jhon Gonzalez',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Let's check your activity",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 30),

              // Usamos el nuevo widget InfoBox
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      InfoBox(
                        title: 'In progress',
                        value: '2 workouts',
                        borderColor: Colors.blue,
                      ),
                      SizedBox(height: 12),
                      InfoBox(
                        title: 'Time spent',
                        value: '62 minutes',
                        borderColor: Colors.green,
                      ),
                    ],
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: InfoBox(
                      title: 'Finished',
                      value: '12 completed',
                      borderColor: Colors.orange,
                      height: 170,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              const Text(
                'Discover New Workouts',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    WorkoutCard(
                      title: 'Cardio',
                      subtitle: '10 Exercises',
                      duration: '50 Minutes',
                      imageAsset: 'assets/images/cardio.png',
                      color: Colors.blue,
                    ),
                    WorkoutCard(
                      title: 'Arms',
                      subtitle: '6 Exercises',
                      duration: '36 Minutes',
                      imageAsset: 'assets/images/arms.png',
                      color: Colors.orange,
                    ),
                    WorkoutCard(
                      title: 'Yoga',
                      subtitle: '8 Exercises',
                      duration: '40 Minutes',
                      imageAsset: 'assets/images/yoga.png',
                      color: Colors.purple,
                    ),
                    WorkoutCard(
                      title: 'Legs',
                      subtitle: '7 Exercises',
                      duration: '45 Minutes',
                      imageAsset: 'assets/images/legs.png',
                      color: Colors.green,
                    ),
                    WorkoutCard(
                      title: 'Stretch',
                      subtitle: '5 Exercises',
                      duration: '20 Minutes',
                      imageAsset: 'assets/images/stretch.png',
                      color: Colors.red,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Keep the progress!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
