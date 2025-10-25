import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart'; // tu mapa de assets (nombre → archivo)

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrenadores Tipo Normal'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: entrenadoresNormal.length,
        itemBuilder: (context, index) {
          final entrenador = entrenadoresNormal[index];
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

                  // 🔹 Botón para ver equipo en un AlertDialog
                  ElevatedButton(
                    onPressed: () => _mostrarAlerta(context, entrenador),
                    child: const Text('Ver equipo'),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context, Entrenador entrenador) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Equipo de ${entrenador.nombre}'),
          content: SizedBox(
            width: double.maxFinite,
            height: 200, 
            child: GridView.count(
              crossAxisCount: 3, // 3 columnas
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              physics: const NeverScrollableScrollPhysics(), // 👈 sin scroll
              children: entrenador.equipo.map((pokemon) {
                final assetName =
                    pokemonAssets[pokemon] ?? '${pokemon.toLowerCase()}.png';
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/pokemons/$assetName',
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.catching_pokemon, size: 60);
                        },
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      pokemon,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cerrar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
