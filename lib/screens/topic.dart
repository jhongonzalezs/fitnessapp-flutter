import 'package:flutter/material.dart';
import 'package:fitnessapp/widgets/post_card.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      body: Column(
        children: [
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Stack(
              children: [
                // Ícono en esquina superior derecha
                Positioned(
                  top: 0,
                  right: 20,
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/perfil.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Texto en esquina inferior izquierda
                const Positioned(
                  bottom: 5,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola Jhon Gonzalez',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'App del Programador',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tópicos Populares',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),

                    // ListView horizontal
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildTopicCard('Java', 30, Colors.orange),
                          _buildTopicCard('Python', 20, Colors.green),
                          _buildTopicCard('C#', 5, Colors.deepPurple),
                          _buildTopicCard('React', 40, Colors.lightBlue),
                          _buildTopicCard('Flutter', 12, Colors.blue),
                          _buildTopicCard('Node.js', 22, Colors.lightGreen),
                          _buildTopicCard('SQL', 18, Colors.teal),
                          _buildTopicCard('Rust', 9, Colors.deepOrange),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    Expanded(
                      child: ListView(
                        children: const [
                          Text(
                            'Tendencias',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          PostCard(
                            username: 'Juan Pérez',
                            content:
                                'Aprendí a usar Dart en menos de una semana 🔥',
                            timeAgo: 'Hace 2 meses',
                          ),
                          PostCard(
                            username: 'Ana Torres',
                            content: '¿Qué editor recomiendan para Flutter? 🤔',
                            timeAgo: 'Hace 5 horas',
                          ),
                          PostCard(
                            username: 'Luis García',
                            content:
                                '¡Publiqué mi primera app en Play Store! 🚀',
                            timeAgo: 'Hace 1 semanas',
                          ),
                          PostCard(
                            username: 'Maria López',
                            content:
                                'Estoy empezando con Python y me encanta 💻🐍',
                            timeAgo: 'Hace 8 horas',
                          ),
                          PostCard(
                            username: 'Carlos Díaz',
                            content: 'C# es muy poderoso con .NET MAUI 💪',
                            timeAgo: 'Hace 1 año',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopicCard(String title, int posts, Color color) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color, width: 1.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '$posts posts',
            style: TextStyle(color: color.withOpacity(0.7), fontSize: 13),
          ),
        ],
      ),
    );
  }
}
