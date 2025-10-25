import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart';

class CardsPage extends StatelessWidget {
  final PokemonType tipo;
  const CardsPage({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tipo.nombre),
        backgroundColor: tipo.color,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tipo.entrenadores.length,
        itemBuilder: (context, index) {
          final entrenador = tipo.entrenadores[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Imagen del entrenador adaptada (medio cuerpo)
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    entrenador.imagen,
                    height: 220, // altura suficiente para torso/piernas
                    fit: BoxFit.cover, // llena el ancho
                    alignment: Alignment.topCenter, // se centra en la parte superior
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(entrenador.nombre,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      const SizedBox(height: 4),
                      Text(entrenador.recompensa,
                          style: TextStyle(color: Colors.grey[700])),
                      const SizedBox(height: 12),

                      // Equipo Pokémon en grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.9,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: entrenador.equipo.length,
                        itemBuilder: (context, i) {
                          final nombrePokemon = entrenador.equipo[i];
                          final asset = pokemonAssets[nombrePokemon];
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              asset != null
                                  ? Image.asset(
                                      'assets/pokemons/$asset',
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.contain,
                                    )
                                  : const Icon(Icons.help_outline, size: 40),
                              const SizedBox(height: 4),
                              Text(
                                nombrePokemon,
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        },
                      ),

                      const SizedBox(height: 12),

                      // Botones de acción
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton.icon(
                            icon: const Icon(Icons.info, color: Colors.deepPurple),
                            label: const Text("Detalles"),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      "Detalles de ${entrenador.nombre} aún no implementados."),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.bolt),
                            label: const Text("Retar"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      "¡Has retado a ${entrenador.nombre}!"),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
