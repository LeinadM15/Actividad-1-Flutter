import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../data/types.dart';

class VideoPage extends StatelessWidget {
  final PokemonType tipo;
  const VideoPage({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tipo.nombre),
        backgroundColor: tipo.color,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: tipo.entrenadores.length,
        itemBuilder: (context, index) {
          final entrenador = tipo.entrenadores[index];

        final videoIds = [
          'rr92_DWLkAw', // Misty
          'F2RiUIfvlUs', // Plubio
          'DcfBpOW35i8', // Galano
          'Hrxm2O1nJ7Q', // Manati
          'KayFo2wg_wc', // Maiz
          'b7AwO1oierk', // Cipriano
          'PXgmI31f82o', // Nereida
          'TZCyAuzlO18', // Nessa
          'MROOT0NliEM', // Fuco
          'e2fbtkATyx0', // Narciso
          '28ja_fnnJIc', // Aquiles
        ];



          final controller = YoutubePlayerController(
            initialVideoId: videoIds[index % videoIds.length],
            flags: const YoutubePlayerFlags(
              autoPlay: false,
              mute: false,
            ),
          );

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  // Imagen del entrenador
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      entrenador.imagen,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    entrenador.nombre,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    entrenador.recompensa,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 12),
                  YoutubePlayer(
                    controller: controller,
                    showVideoProgressIndicator: true,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
