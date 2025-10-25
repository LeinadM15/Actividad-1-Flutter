import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart'; 

class TypePage extends StatelessWidget {
  const TypePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PokemonType tipo =
        ModalRoute.of(context)!.settings.arguments as PokemonType;

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

                  // 🔹 Equipo Pokémon en grid de 3 columnas
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // 3 columnas
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: entrenador.equipo.length,
                    itemBuilder: (context, i) {
                      final poke = entrenador.equipo[i];
                      final assetName = pokemonAssets[poke] ??
                          '${poke.toLowerCase()}.png'; // fallback

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/pokemons/$assetName',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            poke,
                            style: const TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      );
                    },
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
}
