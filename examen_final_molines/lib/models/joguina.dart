// Exemple de JSON:

/*
[
    {
        "id": 1,
        "nom": "Terreneitor",
        "descripcio": "Todoterreno",
        "foto": "https://www.bing.com/ck/a?!&&p=9b5a47b88b82391ae4aafcd3e231ea1f647e2ca7f42f4e52e01d17659c35dc5cJmltdHM9MTc0MDM1NTIwMA&ptn=3&ver=2&hsh=4&fclid=302d017e-913e-658d-2081-154690386420&u=a1L2ltYWdlcy9zZWFyY2g_cT1pbWdhdGdlcyZGT1JNPUlRRlJCQSZpZD1BMDY0OEZCOTYxNjNERkM0MDVGNjIwQTFEMzA3M0UzOTg4MTY4NzUy&ntb=1",
        "model": "232",
        "marca": "Corte"
    }
]
*/

//Classe Joguina on mapetja la informació de la base de dades

class Joguina {
  final String id;
  final String nom;
  final String descripcio;
  final String foto;
  final String model;
  final double marca;

  Joguina({
    required this.id,
    required this.nom,
    required this.descripcio,
    required this.foto,
    required this.model,
    required this.marca,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'descripcio': descripcio,
      'foto': foto,
      'model': model,
      'marca': marca,
    };
  }

  factory Joguina.fromMap(Map<String, dynamic> map) {
    return Joguina(
      id: map['id'],
      nom: map['nom'],
      descripcio: map['descripcio'],
      foto: map['foto'],
      model: map['model'],
      marca: map['marca'],
    );
  }
}
