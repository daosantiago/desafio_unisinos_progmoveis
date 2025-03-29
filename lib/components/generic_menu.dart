import 'package:desafio_unisinos/components/menu_buttom.dart';
import 'package:flutter/material.dart';

class MenuOption {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  MenuOption({
    required this.icon,
    required this.label,
    required this.onPressed,
  });
}

class GenericMenu extends StatelessWidget {
  final List<MenuOption> options;

  const GenericMenu({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: options.map((option) {
        return MenuButton(
          icon: option.icon,
          label: option.label,
          onPressed: option.onPressed,
        );
      }).toList(),
    );
  }
}
