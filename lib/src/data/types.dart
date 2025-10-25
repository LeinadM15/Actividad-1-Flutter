import 'package:flutter/material.dart';

class Entrenador {
  final String nombre;
  final String imagen;
  final String recompensa;
  final List<String> equipo;

  const Entrenador({
    required this.nombre,
    required this.imagen,
    required this.recompensa,
    required this.equipo,
  });
}

class PokemonType {
  final String nombre;
  final Color color;
  final String icono;
  final List<Entrenador> entrenadores;

  const PokemonType({
    required this.nombre,
    required this.color,
    required this.icono,
    required this.entrenadores,
  });
}

const entrenadoresNormal = <Entrenador>[
  Entrenador(
    nombre: 'Blanca',
    imagen: 'assets/entrenadores/Blanca.png',
    recompensa: 'Medalla Planicie',
    equipo: [
      'Farigiraf',
      'Porygon2',
      'Noctowl',
      'Blissey',
      'Ursaluna-BloodMoon',
      'Miltank'
    ],
  ),
  Entrenador(
    nombre: 'Norman',
    imagen: 'assets/entrenadores/Norman.png',
    recompensa: 'Medalla Equilibrio',
    equipo: [
      'Slaking',
      'Exploud',
      'Wyrdeer',
      'Obstagoon',
      'Mega-Kangaskhan',
      'Staraptor'
    ],
  ),
  Entrenador(
    nombre: 'Aloe',
    imagen: 'assets/entrenadores/Aloe.png',
    recompensa: 'Medalla Base',
    equipo: [
      'Stoutland',
      'Mega-Audino',
      'Bouffalant',
      'Indeedee-F',
      'Meloetta-Lirica',
      'Unfezant'
    ],
  ),
  Entrenador(
    nombre: 'Cheren',
    imagen: 'assets/entrenadores/Cheren.png',
    recompensa: 'Medalla Base',
    equipo: [
      'Braviary',
      'Mega-Pyroar_LPZA',
      'Zoroark_de_Hisui',
      'Sawsbuck',
      'Wigglytuff',
      'Cyclizar'
    ],
  ),
  Entrenador(
    nombre: 'Liam',
    imagen: 'assets/entrenadores/Liam.png',
    recompensa: 'Normastal Z',
    equipo: [
      'Komala',
      'Silvally',
      'Mega-Drampa_LPZA',
      'Toucannon',
      'Bewear',
      'Oranguru'
    ],
  ),
];

const entrenadoresFuego = <Entrenador>[
  Entrenador(
    nombre: 'Blaine',
    imagen: 'assets/entrenadores/Blaine.png',
    recompensa: 'Medalla Volcán',
    equipo: [
      'Arcanine',
      'Rapidash',
      'Ninetales',
      'Moltres',
      'Flareon',
      'Mega-Charizard_Y']
  ),
  Entrenador(
    nombre: 'Candela',
    imagen: 'assets/entrenadores/Candela.png',
    recompensa: 'Medalla Calor',
    equipo: [
      'Volcanion',
      'Magcargo',
      'Mega-Blaziken',
      'Talonflame',
      'Torkoal',
      'Entei'
    ],
  ),
  Entrenador(
    nombre: 'Zeo',
    imagen: 'assets/entrenadores/Zeo.png',
    recompensa: 'Medalla Trío',
    equipo: [
      'Simisear',
      'Volcarona',
      'Victini',
      'Darmanitan',
      'Heatmor',
      'Mega-Houndoom'
    ],
  ),
  Entrenador(
    nombre: 'Kiawe',
    imagen: 'assets/entrenadores/Kiawe.png',
    recompensa: 'Pirostal Z',
    equipo: [
      'Blacephalon',
      'Marowak_de_Alola',
      'Incineroar',
      'Mega-Emboar',
      'Salazzle',
      'Turtonator'
    ],
  ),
  Entrenador(
    nombre: 'Naboru',
    imagen: 'assets/entrenadores/Naboru.png',
    recompensa: 'Medalla Fuego',
    equipo: [
      'Cinderace',
      'Coalossal_Gigamax',
      'Ho-Oh',
      'Centiskorch_Gigamax',
      'Typhlosion',
      'Tauros-Paldea-Ardiente'
    ],
  ),
  Entrenador(
    nombre: 'Fausto',
    imagen: 'assets/entrenadores/Fausto.png',
    recompensa: 'Alto Mando Sinnoh',
    equipo: [ 
      'Infernape',
      'Magmortar',
      'Rotom-Horno',
      'Heatran',
      'Reshiram',
      'Oricorio'
    ],
  ),
  Entrenador(
    nombre: 'Malva',
    imagen: 'assets/entrenadores/Malva.png',
    recompensa: 'Alto Mando Kalos',
    equipo: [
      'Mega-Delphox',
      'Talonflame',
      'Mega-Pyroar_LPZA',
      'Darmanitan',
      'Volcarona',
      'Incineroar'
    ],
  ),
  Entrenador(
    nombre: 'Denis',
    imagen: 'assets/entrenadores/Denis.png',
    recompensa: 'Alto Mando Teselia',
    equipo: [
      'Armarouge',
      'Magmortar',
      'Scovillain',
      'Chi-Yu',
      'Rotom-Horno',
      'Talonflame'
    ],
  ),
  Entrenador(
    nombre: 'Melo',
    imagen: 'assets/entrenadores/Melo.png',
    recompensa: 'Medalla Star Fuego',
    equipo: [
      'Ceruledge',
      'Flamariete',
      'Ferropolilla',
      'Skeledirge',
      'Simisear',
      'Volcarona'
    ],
  ),
   Entrenador(
    nombre: 'Magno',
    imagen: 'assets/entrenadores/Magno.png',
    recompensa: 'Líder del Equipo Magma',
    equipo: [
      'Mega-Camerupt',
      'Groudon',
      'Victini',
      'Reshiram',
      'Entei',
      'Ho-Oh'
    ],
  ),
];
const entrenadoresAgua = <Entrenador>[
  // Líderes de gimnasio / pruebas
  Entrenador(
    nombre: 'Misty',
    imagen: 'assets/entrenadores/Misty.png',
    recompensa: 'Medalla Cascada',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Plubio',
    imagen: 'assets/entrenadores/Plubio.png',
    recompensa: 'Medalla Lluvia',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Galano',
    imagen: 'assets/entrenadores/Galano.png',
    recompensa: 'Medalla Lluvia',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Mananti',
    imagen: 'assets/entrenadores/Mananti.png',
    recompensa: 'Medalla Ciénaga',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Maíz',
    imagen: 'assets/entrenadores/Maíz.png',
    recompensa: 'Medalla Trío',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Ciprián',
    imagen: 'assets/entrenadores/Ciprián.png',
    recompensa: 'Medalla Ola',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Nereida',
    imagen: 'assets/entrenadores/Nereida.png',
    recompensa: 'Hidrostal Z',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Cathy',
    imagen: 'assets/entrenadores/Cathy.png',
    recompensa: 'Medalla Agua',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Fuco',
    imagen: 'assets/entrenadores/Fuco.png',
    recompensa: 'Medalla de Gimnasio Agua',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Narciso',
    imagen: 'assets/entrenadores/Narciso.png',
    recompensa: 'Alto Mando',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Aquiles',
    imagen: 'assets/entrenadores/Aquiles.png',
    recompensa: 'Líder del Equipo Aqua',
    equipo: [],
  ),
];
const entrenadoresPlanta = <Entrenador>[
  Entrenador(
    nombre: 'Erika',
    imagen: 'assets/entrenadores/Erika.png',
    recompensa: 'Medalla Arcoíris',
    equipo: [
      'Mega Victreebel',
      'Mega Venusaur',
      'Vileplume',
      'Tangrowth',
      'Exeggutor',
      'Zarude'
    ],
  ),
  Entrenador(
    nombre: 'Gardenia',
    imagen: 'assets/entrenadores/Gardenia.png',
    recompensa: 'Medalla Bosque',
    equipo: [
      'Shaymin_tierra',
      'Mega-Meganium_LPZA',
      'Leafeon',
      'Breloom',
      'Torterra',
      'Roserade'
    ],
  ),
  Entrenador(
    nombre: 'Millo',
    imagen: 'assets/entrenadores/Millo.png',
    recompensa: 'Medalla Trío',
    equipo: [
      'Maractus',
      'Lilligant',
      'Serperior',
      'Amoonguss',
      'Ferrothorn',
      'Simisage'
    ],
  ),
  Entrenador(
    nombre: 'Amaro',
    imagen: 'assets/entrenadores/Amaro.png',
    recompensa: 'Medalla Hoja',
    equipo: [
      'Trevenant',
      'Gourgeist',
      'Mega-Chesnaught',
      'Mega-Sceptile',
      'Electrode_de_Hisui',
      'Venusaur-Gigamax'
    ],
  ),
  Entrenador(
    nombre: 'Lulú',
    imagen: 'assets/entrenadores/Lulú.png',
    recompensa: 'Fitostal Z',
    equipo: [
      'Tsareena',
      'Tapu Bulu',
      'Zarude',
      'Shiinotic',
      'Lurantis',
      'Decidueye'
    ],
  ),
  Entrenador(
    nombre: 'Percy',
    imagen: 'assets/entrenadores/Percy.png',
    recompensa: 'Medalla Planta',
    equipo: [
      'Rillaboom_Gigamax',
      'Sinistcha',
      'Breloom',
      'Ferroverdor',
      'Appletun',
      'Kartana'
    ],
  ),
  Entrenador(
    nombre: 'Brais',
    imagen: 'assets/entrenadores/Brais.png',
    recompensa: 'Medalla Gimnasio Planta',
    equipo: [
      'Wo-Chien',
      'Ogerpon_máscara_turquesa',
      'Meowscarada',
      'Arboliva',
      'Brambleghast',
      'Hydrapple'
    ],
  ),
];
const entrenadoresElectrico = <Entrenador>[
  Entrenador(
    nombre: 'Lt. Surge',
    imagen: 'assets/entrenadores/Lt. Surge.png',
    recompensa: 'Medalla Trueno',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Erico',
    imagen: 'assets/entrenadores/Erico.png',
    recompensa: 'Medalla Dinamo',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Lectro',
    imagen: 'assets/entrenadores/Lectro.png',
    recompensa: 'Medalla Faro',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Camila',
    imagen: 'assets/entrenadores/Camila.png',
    recompensa: 'Medalla Voltio',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Lem',
    imagen: 'assets/entrenadores/Lem.png',
    recompensa: 'Medalla Voltaje',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Chris',
    imagen: 'assets/entrenadores/Chris.png',
    recompensa: 'Electrostal Z',
    equipo: [],
  ),
  Entrenador(
    nombre: 'e-Nigma',
    imagen: 'assets/entrenadores/E-Nigma.png',
    recompensa: 'Medalla Eléctrica',
    equipo: [],
  ),
    Entrenador(
    nombre: 'Naria',
    imagen: 'assets/entrenadores/Naria.png',
    recompensa: 'Medalla Trueno',
    equipo: [],
  ),
];
const entrenadoresHielo = <Entrenador>[
 
  Entrenador(
    nombre: 'Fredo',
    imagen: 'assets/entrenadores/Fredo.png',
    recompensa: 'Medalla Glaciar',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Inverna',
    imagen: 'assets/entrenadores/Inverna.png',
    recompensa: 'Medalla Carámbano',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Junco',
    imagen: 'assets/entrenadores/Junco.png',
    recompensa: 'Medalla Candelizo',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Édel',
    imagen: 'assets/entrenadores/Édel.png',
    recompensa: 'Medalla Iceberg',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Mel',
    imagen: 'assets/entrenadores/Mel.png',
    recompensa: 'Medalla Hielo',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Grusha',
    imagen: 'assets/entrenadores/Grusha.png',
    recompensa: 'Medalla de Gimnasio Hielo',
    equipo: [],
  ),

  Entrenador(
    nombre: 'Lorelei',
    imagen: 'assets/entrenadores/Lorelei.png',
    recompensa: 'Alto Mando Kanto',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Nívea',
    imagen: 'assets/entrenadores/Nívea.png',
    recompensa: 'Alto Mando',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Rauko',
    imagen: 'assets/entrenadores/Rauko.png',
    recompensa: 'Alto Mando',
    equipo: [],
  ),
];
const entrenadoresLucha = <Entrenador>[
  Entrenador(
    nombre: 'Aníbal',
    imagen: 'assets/entrenadores/Aníbal.png',
    recompensa: 'Medalla Tormenta',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Marcial',
    imagen: 'assets/entrenadores/Marcial.png',
    recompensa: 'Medalla Puño',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Brega',
    imagen: 'assets/entrenadores/Brega.png',
    recompensa: 'Medalla Adoquín',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Corelia',
    imagen: 'assets/entrenadores/Corelia.png',
    recompensa: 'Medalla Lid',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Kaudan',
    imagen: 'assets/entrenadores/Kaudan.png',
    recompensa: 'Lizastal Z',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Judith',
    imagen: 'assets/entrenadores/Judith.png',
    recompensa: 'Medalla Lucha',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Bruno',
    imagen: 'assets/entrenadores/Bruno.png',
    recompensa: 'Alto Mando Kanto',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Lotto',
    imagen: 'assets/entrenadores/Lotto.png',
    recompensa: 'Alto Mando Teselia',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Mostaz',
    imagen: 'assets/entrenadores/Mostaz.png',
    recompensa: 'Exlíder y excampeón de Galar',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Kendra',
    imagen: 'assets/entrenadores/Kendra.png',
    recompensa: 'Profesora de combate',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Erin',
    imagen: 'assets/entrenadores/Erin.png',
    recompensa: 'Medalla Star Lucha',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Albar',
    imagen: 'assets/entrenadores/Albar.png',
    recompensa: '',
    equipo: [],
  ),
];
const entrenadoresVeneno = <Entrenador>[
  Entrenador(
    nombre: 'Koga',
    imagen: 'assets/entrenadores/Koga.png',
    recompensa: 'Medalla Alma',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Sachiko',
    imagen: 'assets/entrenadores/Sachiko.png',
    recompensa: 'Medalla Alma',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Hiedra',
    imagen: 'assets/entrenadores/Hiedra.png',
    recompensa: 'Medalla Ponzoña',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Francine',
    imagen: 'assets/entrenadores/Francine.png',
    recompensa: 'Comandante Skull',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Sófora',
    imagen: 'assets/entrenadores/Sófora.png',
    recompensa: 'Entrenadora Pokémon',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Kameri',
    imagen: 'assets/entrenadores/Kameri.png',
    recompensa: 'Guardián Electrode señorial',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Henzo',
    imagen: 'assets/entrenadores/Henzo.png',
    recompensa: 'Medalla Star Veneno',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Mimí',
    imagen: 'assets/entrenadores/Mimí.png',
    recompensa: '',
    equipo: [],
  ),
    Entrenador(
    nombre: 'Córax',
    imagen: 'assets/entrenadores/Córax.png',
    recompensa: '',
    equipo: [],
  ),
];
const entrenadoresTierra = <Entrenador>[
  Entrenador(
    nombre: 'Giovanni',
    imagen: 'assets/entrenadores/Giovanni.png',
    recompensa: 'Medalla Tierra',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Yakón',
    imagen: 'assets/entrenadores/Yakón.png',
    recompensa: 'Medalla Temblor',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Hela',
    imagen: 'assets/entrenadores/Hela.png',
    recompensa: 'Geostal Z',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Gaia',
    imagen: 'assets/entrenadores/Gaia.png',
    recompensa: 'Alto Mando Sinnoh',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Cayena',
    imagen: 'assets/entrenadores/Cayena.png',
    recompensa: 'Alto Mando',
    equipo: [],
  ),
  Entrenador(
    nombre: 'Estragon',
    imagen: 'assets/entrenadores/Estragon.png',
    recompensa: 'Alto Mando',
    equipo: [],
  ),
];
const tiposPokemon = <PokemonType>[
  PokemonType(
    nombre: 'Normal',
    color: Colors.brown,
    icono: 'assets/icons/Normal.png',
    entrenadores: entrenadoresNormal,
  ),
  PokemonType(
    nombre: 'Fuego',
    color: Colors.red,
    icono: 'assets/icons/Fuego.png',
    entrenadores: entrenadoresFuego,
  ),
  PokemonType(
    nombre: 'Agua',
    color: Colors.blue,
    icono: 'assets/icons/Agua.png',
    entrenadores: entrenadoresAgua,
  ),
  PokemonType(
    nombre: 'Planta',
    color: Colors.green,
    icono: 'assets/icons/Planta.png',
    entrenadores: entrenadoresPlanta,
  ),
  PokemonType(
    nombre: 'Eléctrico',
    color: Colors.yellow,
    icono: 'assets/icons/Electrico.png',
    entrenadores: entrenadoresElectrico,
  ),
  PokemonType(
    nombre: 'Hielo',
    color: Colors.cyan,
    icono: 'assets/icons/Hielo.png',
    entrenadores: entrenadoresHielo,
  ),
  PokemonType(
    nombre: 'Lucha',
    color: Colors.orange,
    icono: 'assets/icons/Lucha.png',
    entrenadores: entrenadoresLucha,
  ),
  PokemonType(
    nombre: 'Veneno',
    color: Colors.purple,
    icono: 'assets/icons/Veneno.png',
    entrenadores: entrenadoresVeneno,
  ),
  PokemonType(
    nombre: 'Tierra',
    color: Colors.brown,
    icono: 'assets/icons/Tierra.png',
    entrenadores: entrenadoresTierra,
  ),
  PokemonType(
    nombre: 'Volador',
    color: Colors.lightBlue,
    icono: 'assets/icons/Volador.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Psíquico',
    color: Colors.pink,
    icono: 'assets/icons/Psiquico.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Bicho',
    color: Colors.lightGreen,
    icono: 'assets/icons/Bicho.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Roca',
    color: Colors.grey,
    icono: 'assets/icons/Roca.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Fantasma',
    color: Colors.deepPurple,
    icono: 'assets/icons/Fantasma.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Dragón',
    color: Colors.indigo,
    icono: 'assets/icons/Dragon.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Siniestro',
    color: Colors.black,
    icono: 'assets/icons/Siniestro.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Acero',
    color: Colors.blueGrey,
    icono: 'assets/icons/Acero.png',
    entrenadores: [],
  ),
  PokemonType(
    nombre: 'Hada',
    color: Colors.pinkAccent,
    icono: 'assets/icons/Hada.png',
    entrenadores: [],
  ),
];
