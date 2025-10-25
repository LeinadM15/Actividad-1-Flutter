import 'package:flutter/material.dart';
import '../data/types.dart';
import '../pages/alert_page.dart';   
import '../pages/slider_page.dart'; 
import '../pages/video_page.dart';  
import '../pages/type_page.dart';   
import '../pages/listas_scroll.dart'; 
import '../pages/animated_container_page.dart';
import '../pages/avatars_page.dart';
import '../pages/inputs_page.dart';
import '../pages/card_page.dart';

class HomeTemp extends StatelessWidget {
  const HomeTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 48),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: tiposPokemon.length,
              itemBuilder: (context, index) {
                final tipo = tiposPokemon[index];
                return GestureDetector(
                  onTap: () {
                    if (tipo.nombre == 'Normal') {
                      // 👉 Para Normal abrimos la página con AlertDialog
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AlertPage(),
                        ),
                      );
                    } else if (tipo.nombre == 'Fuego') {
                      // 👉 Para Fuego abrimos la página con Slider
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SliderPage(tipo: tipo),
                        ),
                      );
                    } else if (tipo.nombre == 'Agua') {
                      // 👉 Para Agua abrimos la página con vídeos
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoPage(tipo: tipo),
                        ),
                      );
                    } else if (tipo.nombre == 'Planta') {
                      // 👉 Para Planta abrimos la página con Listas Scroll
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListasScrollPage(tipo: tipo),
                        ),
                      );
                      
                    } else if (tipo.nombre == 'Eléctrico') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimatedContainerPage(tipo: tipo),
                        ),
                      ); 
                      
                    } else if (tipo.nombre == 'Hielo') {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AvatarsPage(tipo: tipo),
                        ),
                      );
                    } else if (tipo.nombre == 'Lucha') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputsPage(tipo: tipo),
                        ),
                      );
                    } else if (tipo.nombre == 'Veneno') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardsPage(tipo: tipo),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TypePage(),
                          settings: RouteSettings(arguments: tipo),
                        ),
                      );
                    }
                  },
                  child: Image.asset(
                    tipo.icono,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
