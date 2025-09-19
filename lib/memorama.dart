import 'package:flutter/material.dart';
import 'dart:math';

class Memorama extends StatefulWidget {
  const Memorama({super.key});

  @override
  State<Memorama> createState() => _MemoramaState();
}

class _MemoramaState extends State<Memorama> {
  Color cell11 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell12 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell13 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell14 =  const Color.fromARGB(255, 140, 140, 140);

  Color cell21 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell22 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell23 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell24 =  const Color.fromARGB(255, 140, 140, 140);

  Color cell31 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell32 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell33 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell34 =  const Color.fromARGB(255, 140, 140, 140);

  Color cell41 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell42 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell43 =  const Color.fromARGB(255, 140, 140, 140);
  Color cell44 =  const Color.fromARGB(255, 140, 140, 140);

  Color cell51 =  const Color.fromARGB(255, 161, 76, 45);
  Color cell52 =  const Color.fromARGB(255, 161, 45, 151);
  Color cell53 =  const Color.fromARGB(255, 45, 161, 55);
  Color cell54 =  const Color.fromARGB(255, 138, 161, 45);

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
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
/*1*/          Expanded(
            flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: InkWell( //Da acción de botón a cualquier widget
                      onTap: () {
                        setState(() {
                          //Cambio de color
                            cell11 = _randomColor();
                        });
                      },
                      child: Container(
                        color: cell11,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: InkWell( //Da acción de botón a cualquier widget
                      onTap: () {
                        setState(() {
                          //Cambio de color
                            cell12 = _randomColor();
                        });
                      },
                      child: Container(
                        color: cell12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: InkWell( //Da acción de botón a cualquier widget
                      onTap: () {
                        setState(() {
                          //Cambio de color
                            cell13 = _randomColor();
                        });
                      },
                      child: Container(
                        color: cell13,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: InkWell( //Da acción de botón a cualquier widget
                      onTap: () {
                        setState(() {
                          //Cambio de color
                            cell14 = _randomColor();
                        });
                      },
                      child: Container(
                        color: cell14,
                      ),
                    ),
                  ),
                ],
              ),
          ),
/*2*/          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                      });
                    },
                    child: Container(
                      color: cell21
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: cell22,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: cell23,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: cell24,
                  ),
                ),
              ],
            ),
          ),
/*3*/          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        Color temp;
                        temp = cell31;
                        cell31 = cell34;
                        cell34 = temp;
                      });
                    },
                    child: Container(
                      color: cell31,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        Color temp;
                        temp = cell32;
                        cell32 = cell33;
                        cell33 = temp;
                      });
                    },
                    child: Container(
                      color: cell32,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        Color temp;
                        temp = cell33;
                        cell33 = cell32;
                        cell32 = temp;
                      });
                    },
                    child: Container(
                      color: cell33,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        Color temp;
                        temp = cell34;
                        cell34 = cell31;
                        cell31 = temp;
                      });
                    },
                    child: Container(
                      color: cell34,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
/*4*/          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                      });
                    },
                    child: Container(
                      color: cell41,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: cell42,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: cell43,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: cell44,
                  ),
                ),
              ],
            ),
          ),
/*5*/          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                      });
                    },
                    child: Container(
                      color: cell51,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        cell52 = cell51;
                      });
                    },
                    child: Container(
                      color: cell52,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        cell53 = cell51;
                      });
                    },
                    child: Container(
                      color: cell53,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: InkWell( //Da acción de botón a cualquier widget
                    onTap: () {
                      setState(() {
                        //Cambio de color
                        cell54 = cell51;
                      });
                    },
                    child: Container(
                      color: cell54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

