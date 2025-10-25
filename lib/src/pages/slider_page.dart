import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart';

class SliderPage extends StatefulWidget {
  final PokemonType tipo;
  const SliderPage({super.key, required this.tipo});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  final Map<int, double> _sliderValues = {};

  @override
  Widget build(BuildContext context) {
    final tipo = widget.tipo;

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
          final equipo = entrenador.equipo;
          final sliderValue = _sliderValues[index] ?? 1.0;

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
                  Slider(
                    value: sliderValue,
                    min: 1,
                    max: equipo.length.toDouble(),
                    divisions: equipo.length - 1,
                    label: sliderValue.toInt().toString(),
                    onChanged: (value) {
                      setState(() {
                        _sliderValues[index] = value;
                      });
                    },
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: sliderValue.toInt(),
                    itemBuilder: (context, i) {
                      final poke = equipo[i];
                      final assetName =
                          pokemonAssets[poke] ?? '${poke.toLowerCase()}.png';

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/pokemons/$assetName',
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.catching_pokemon);
                              },
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
