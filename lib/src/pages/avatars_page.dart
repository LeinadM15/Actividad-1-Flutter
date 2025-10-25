import 'package:flutter/material.dart';
import '../data/types.dart';

class AvatarsPage extends StatelessWidget {
  final PokemonType tipo;
  const AvatarsPage({super.key, required this.tipo});

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
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Hero(
                tag: entrenador.nombre, // clave única para la animación
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(entrenador.imagen),
                ),
              ),
              title: Text(
                entrenador.nombre,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(entrenador.recompensa),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EntrenadorDetallePage(entrenador: entrenador),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class EntrenadorDetallePage extends StatelessWidget {
  final Entrenador entrenador;
  const EntrenadorDetallePage({super.key, required this.entrenador});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(entrenador.nombre),
      ),
      body: Center(
        child: Hero(
          tag: entrenador.nombre,
          child: InteractiveViewer(
            child: Image.asset(
              entrenador.imagen,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
