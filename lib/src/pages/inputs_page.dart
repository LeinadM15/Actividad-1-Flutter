import 'package:flutter/material.dart';
import '../data/types.dart';
import '../data/pokemon_assets.dart';

class InputsPage extends StatefulWidget {
  final PokemonType tipo;
  const InputsPage({super.key, required this.tipo});

  @override
  State<InputsPage> createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _pokemonController = TextEditingController();
  bool _aceptaReglas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tipo.nombre),
        backgroundColor: widget.tipo.color,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // --- Bloque de Inputs ---
          Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  "Formulario de Entrenamiento Lucha",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _nombreController,
                  decoration: const InputDecoration(
                    labelText: "Nombre del Entrenador",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? "Introduce tu nombre" : null,
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _pokemonController,
                  decoration: const InputDecoration(
                    labelText: "Pokémon de Lucha favorito",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.sports_mma),
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? "Introduce un Pokémon" : null,
                ),
                const SizedBox(height: 16),

                CheckboxListTile(
                  title: const Text("Acepto las reglas del dojo"),
                  value: _aceptaReglas,
                  onChanged: (value) {
                    setState(() {
                      _aceptaReglas = value ?? false;
                    });
                  },
                ),
                const SizedBox(height: 16),

                ElevatedButton.icon(
                  icon: const Icon(Icons.check),
                  label: const Text("Entrenar"),
                  onPressed: () {
                    if (_formKey.currentState!.validate() && _aceptaReglas) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "¡Bienvenido ${_nombreController.text}! "
                            "Tu Pokémon de Lucha favorito es ${_pokemonController.text}.",
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Completa todos los campos y acepta las reglas."),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 12),

          // --- Bloque de entrenadores de Lucha ---
          const Text(
            "Entrenadores de tipo Lucha",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          ...widget.tipo.entrenadores.map((entrenador) {
            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            entrenador.imagen,
                            width: 60,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
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
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
