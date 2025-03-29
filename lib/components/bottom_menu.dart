import 'package:desafio_unisinos/screens/notifications_screen.dart';
import 'package:desafio_unisinos/screens/profile_screen.dart';
import 'package:desafio_unisinos/screens/task_screen.dart';
import 'package:desafio_unisinos/screens/tools_screen.dart';
import 'package:desafio_unisinos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // EXEMPLO de botões já com navegação
            _BottomMenuItem(
              icon: Icons.person,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfileScreen()),
                );
              },
            ),
            _BottomMenuItem(
              icon: Icons.build,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ToolsScreen()),
                );
              },
            ),
            _BottomMenuItem(
              icon: Icons.chat,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => NotificationsScreen()),
                );
              },
            ),
            _BottomMenuItem(
              icon: Icons.assignment,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TaskScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomMenuItem extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _BottomMenuItem({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Chama a função ao clicar
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
