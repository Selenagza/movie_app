import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3.4. Utilización de widgets',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(249, 168, 37, 1),
          title: const Text('Ultimos estrenos'),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1598899134739-24c46f58b8c0?q=80&w=3856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerAmarillo(
                    width: 300,
                    height: 60,
                    texto: "Five Nights at Freddy's",
                  ),
                  ContainerAmarillo(
                    width: 300,
                    height: 60,
                    texto: "The Marvels",
                  ),
                  ContainerAmarillo(
                    width: 300,
                    height: 60,
                    texto: "A Haunting in Venice",
                  ),
                  ContainerAmarillo(
                    width: 300,
                    height: 60,
                    texto: "Killers of the Flower Moon",
                  ),
                  ContainerAmarillo(
                    width: 300,
                    height: 60,
                    texto: "The Exorcist: Believer",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerAmarillo extends StatelessWidget {
  final double width;
  final double height;
  final String texto;

  const ContainerAmarillo({
    Key? key,
    required this.width,
    required this.height,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(164, 255, 164, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(texto, style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
