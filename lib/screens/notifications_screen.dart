import 'package:desafio_unisinos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
final List<String> notifications = [
"O material desejado está disponível",
"Seu pedido saiu para entrega",
"Sua solicitação foi aceita",
];

@override
Widget build(BuildContext context) {
return Scaffold(
    appBar: AppBar(
    title: Text("ARA TUBOS"),
    backgroundColor: AppColors.mainColor,
    ),
    body: Column(
    children: [
        SizedBox(height: 20),
        Text(
        "NOTIFICAÇÕES",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Expanded(
        child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: notifications.length,
            itemBuilder: (context, index) {
            return Card(
                color: Colors.orange.shade200,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                leading: Icon(Icons.notifications, color: Colors.white),
                title: Text(
                    notifications[index],
                    style: TextStyle(color: Colors.white),
                ),
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

void main() {
runApp(MaterialApp(
home: NotificationsScreen(),
));
}
