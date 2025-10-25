import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart';

class AnimatedContainerPage extends StatefulWidget {
  final PokemonType tipo;
  const AnimatedContainerPage({super.key, required this.tipo});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  // Guardamos el índice del entrenador que está "activado"
  int? activeIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tipo.nombre),
        backgroundColor: widget.tipo.color,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.tipo.entrenadores.length,
        itemBuilder: (context, index) {
          final entrenador = widget.tipo.entrenadores[index];
          final isActive = activeIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = isActive ? null : index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isActive ? Colors.yellow[200] : Colors.white,
                borderRadius: BorderRadius.circular(isActive ? 24 : 12),
                border: Border.all(
                  color: isActive ? Colors.amber : Colors.grey.shade300,
                  width: isActive ? 3 : 1,
                ),
                boxShadow: [
                  if (isActive)
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.6),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        entrenador.imagen,
                        width: 60,
                        height: 60,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(entrenador.nombre,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text(entrenador.recompensa,
                                style: TextStyle(color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (isActive) ...[
                    const SizedBox(height: 12),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                            Text(nombrePokemon,
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.center),
                          ],
                        );
                      },
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
