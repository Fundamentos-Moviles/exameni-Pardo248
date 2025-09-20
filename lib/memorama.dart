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

  static const Color hiddenColor = Color.fromARGB(255, 140, 140, 140);
  static const int pairs = total ~/ 2;

  late List<Color> _cards;      // Set Colors
  late List<bool> _visible;     
  late List<bool> _matched;     
  final List<int> _picked = []; 
  bool _busy = false;           // para bloquear los clics durante la animación

  @override
  void initState() {
    super.initState();
    _game();
  }

  //Funcion para el juego 
  void _game() {
    final colors = _generateColors(pairs);
    colors.shuffle(Random());
    _cards = colors;
    _visible = List<bool>.filled(total, false);
    _matched = List<bool>.filled(total, false);
    _picked.clear();
    _busy = false;
    setState(() {});
  }

  //Generar Los colores de forma aleatoria 
   List<Color> _generateColors(int count) {
    final rand = Random();
    final baseHue = rand.nextDouble() * 360;

    final List<Color> uniques = 
    List.generate(count, (i) {
      final hue = (baseHue + (360.0 / count) * i) % 360;
      final hsv = HSVColor.fromAHSV(1.0, hue, 0.65, 0.95);
      return hsv.toColor();
    });

    return [...uniques, ...uniques];
  }

  //Logica del memorama 
   Future<void> _onTap(int i) async {
    if (_busy || _matched[i] || _visible[i]) return;

    setState(() => _visible[i] = true);
    _picked.add(i);

    if (_picked.length == 2) {
      _busy = true;
      final a = _picked[0];
      final b = _picked[1];

      if (_cards[a].toARGB32() == _cards[b].toARGB32()) {
        setState(() {
          _matched[a] = true;
          _matched[b] = true;
        });
        _picked.clear();
        _busy = false;
        // Comprobar si el juego se termino y mandar me nsaje 
        if (_matched.every((m) => m)) {
          
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Juego Terminado')),
          );
        }
      } else {
        await Future.delayed(const Duration(milliseconds: 700));
        setState(() {
          _visible[a] = false;
          _visible[b] = false;
        });
        _picked.clear();
        _busy = false;
      }
    }
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diego Castillo Pardo'),
        actions: [
          IconButton(
            onPressed: _game,
            icon: const Icon(Icons.refresh),
          ),
        ],
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
            final show = _matched[i] || _visible[i];
            final color = show ? _cards[i] : hiddenColor;

            return GestureDetector(
              onTap: () => _onTap(i),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeOut,
                decoration: BoxDecoration(
                  color: color,
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

