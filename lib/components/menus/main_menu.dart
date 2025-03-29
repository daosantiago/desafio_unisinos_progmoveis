import 'package:flutter/material.dart';
import 'package:desafio_unisinos/components/generic_menu.dart';
import 'package:desafio_unisinos/screens/materials_screen.dart';
import 'package:desafio_unisinos/screens/user_form_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key,});

  @override
  Widget build(BuildContext context) {
    return GenericMenu(
      options: [
        MenuOption(
          icon: Icons.search,
          label: 'CADASTRAR MATERIAL',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) =>  MaterialsScreen()),
            );
          },
        ),
        MenuOption(
          icon: Icons.person,
          label: 'CADASTRAR USUÁRIO',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) =>  UserFormScreen()),
            );
          },
        ),
        MenuOption(
          icon: Icons.update,
          label: 'ATUALIZAR DADOS',
          onPressed: () {},
        ),
        MenuOption(
          icon: Icons.delete_outline,
          label: 'DELETAR USUÁRIO',
          onPressed: () {},
        ),
      ],
    );
  }
}
