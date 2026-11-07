
import 'package:flutter/material.dart';

class AnimatedCardDemo extends StatefulWidget {
  const AnimatedCardDemo({super.key});

  @override
  State<AnimatedCardDemo> createState() => _AnimatedCardDemoState();
}

class _AnimatedCardDemoState extends State<AnimatedCardDemo> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Animated Card'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            width: 300,
            height: isExpanded ? 280 : 150,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isExpanded
                  ? Colors.teal
                  : Colors.blue,
              borderRadius: BorderRadius.circular(
                isExpanded ? 30 : 12,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.code,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Text(
                  'Tap to explore more',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 15),

                Expanded(
                  child: AnimatedOpacity(
                    opacity: isExpanded ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: const Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Divider(color: Colors.white54),
                        Text(
                          'Skills:',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '• Dart & Flutter\n'
                          '• Firebase\n'
                          '• Bloc State Management\n'
                          '• REST API Integration',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
