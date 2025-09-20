import 'package:flutter/material.dart';
import 'dart:math';

  // Generar color aleatorio
  Color _randomColor() {
    final rand = Random();
    return Color.fromARGB(
      255,
      rand.nextInt(256),
      rand.nextInt(256),
      rand.nextInt(256),
    );
  }

class Memorama extends StatefulWidget {
  const Memorama({super.key});

  @override
  State<Memorama> createState() => _MemoramaState();
}

class _MemoramaState extends State<Memorama> {

  static const int rows = 5;
  static const int cols = 4;
  static const int total = rows * cols; 

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diego Castillo Pardo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: total,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: cols,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (context, i) {

            return GestureDetector(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeOut,
                decoration: BoxDecoration(
                  color: _randomColor(),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  
}

