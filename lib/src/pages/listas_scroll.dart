import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart';

class ListasScrollPage extends StatelessWidget {
  final PokemonType tipo;
  const ListasScrollPage({super.key, required this.tipo});

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
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ExpansionTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  entrenador.imagen,
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
              title: Text(
                entrenador.nombre,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(entrenador.recompensa),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: entrenador.equipo.length,
                    itemBuilder: (context, i) {
                      final nombrePokemon = entrenador.equipo[i];
                      final asset = pokemonAssets[nombrePokemon];

                      return Column(
                        children: [
                          Expanded(
                            child: asset != null
                                ? Image.asset(
                                    'assets/pokemons/$asset',
                                    fit: BoxFit.contain,
                                  )
                                : const Icon(Icons.help_outline, size: 40),
                          ),
                          Text(
                            nombrePokemon,
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
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
