import 'package:desafio_unisinos/components/task.dart';
import 'package:desafio_unisinos/data/task_inherited.dart';
import 'package:desafio_unisinos/screens/form_screen.dart';
import 'package:desafio_unisinos/screens/user_form_screen.dart';
import 'package:desafio_unisinos/theme/app_colors.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(
            "assets/images/bg.png",
            opacity: const AlwaysStoppedAnimation(.9),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.maxFinite,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.mainColor,
            leading: Container(),
            title: Text('ARA   TUBOS'),
          ),
          body: Container(
            color: AppColors.background,
            /*child: ListView(
              padding: EdgeInsets.only(top: 8, bottom: 70),
              children: TaskInherited.of(context).taskList,
            ),*/
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 120),
                  height: 250,
                  width: 100,
                  child: Text("HOME", style: TextStyle(fontSize: 30)),
                ),
                _MenuButton(
                  icon: Icons.search,
                  label: 'CADASTRAR MATERIAL',
                  onPressed: () {},
                ),
                _MenuButton(
                  icon: Icons.person,
                  label: 'CADASTRAR USUÁRIO',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (newContext) => UserFormScreen(),
                      ),
                    );
                  },
                ),
                _MenuButton(
                  icon: Icons.update,
                  label: 'ATUALIZAR DADOS',
                  onPressed: () {},
                ),
                _MenuButton(
                  icon: Icons.delete,
                  label: 'DELETAR USUÁRIO',
                  onPressed: () {},
                ),
                const Spacer(),
                _BottomMenu(),
              ],
            ),
          ),
          /*floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (newContext) => FormScreen(taskContext: context),
                ),
              );
            },
            child: Icon(Icons.add),
          ),*/
        ),
      ],
    );
  }
}

class _MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _MenuButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColor,
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 40), // margem da esquerda
            Icon(icon),
            const SizedBox(width: 20), // espaço entre ícone e texto
            Expanded(child: Text(label, style: const TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}

class _BottomMenu extends StatelessWidget {
  const _BottomMenu({super.key});

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
          children: const [
            _BottomMenuItem(icon: Icons.person),
            _BottomMenuItem(icon: Icons.build),
            _BottomMenuItem(icon: Icons.chat),
            _BottomMenuItem(icon: Icons.assignment),
          ],
        ),
      ),
    );
  }
}

class _BottomMenuItem extends StatelessWidget {
  final IconData icon;

  const _BottomMenuItem({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}
