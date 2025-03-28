import 'package:flutter/material.dart';

class MaterialsScreen extends StatelessWidget {
  final List<Map<String, String>> materials = [
    {"image": "assets/images/pipe1.png", "name": "Solicitar"},
    {"image": "assets/images/pipe2.png", "name": "Solicitar"},
    {"image": "assets/images/pipe3.png", "name": "Solicitar"},
    {"image": "assets/images/pipe4.png", "name": "Solicitar"},
    {"image": "assets/images/pipe5.png", "name": "Solicitar"},
    {"image": "assets/images/pipe6.png", "name": "Solicitar"},
  ];

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Pedido Confirmado"),
        content: Text("Seu pedido foi enviado com sucesso!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ARA TUBOS"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("MATERIAIS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: materials.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Image.asset(materials[index]["image"]!, fit: BoxFit.cover),
                    ),
                    ElevatedButton(
                      onPressed: () => _showConfirmationDialog(context),
                      child: Text(materials[index]["name"]!),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Pedidos"),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: "Serviços"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Galeria"),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MaterialsScreen(),
  ));
}
