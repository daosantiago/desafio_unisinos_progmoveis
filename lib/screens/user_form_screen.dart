import 'package:flutter/material.dart';
import 'package:desafio_unisinos/theme/app_colors.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({super.key});

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
            width: double.infinity,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.mainColor,
            leading: Container(),
            title:  Text('ARA   TUBOS'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Text(
                  'CADASTRO',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                _InputButton(icon: Icons.email, hint: 'EMAIL'),
                _InputButton(icon: Icons.person, hint: 'NOME DE USUÁRIO'),
                _InputButton(icon: Icons.phone, hint: 'TELEFONE'),
                _InputButton(icon: Icons.badge, hint: 'CPF'),
                _InputButton(icon: Icons.lock, hint: 'SENHA', isPassword: true),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // volta pra tela anterior
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("CADASTRAR", style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _InputButton extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool isPassword;

  const _InputButton({
    required this.icon,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            prefixIcon: Icon(icon, color: Colors.black),
            suffixIcon: isPassword ? const Icon(Icons.visibility, color: Colors.black) : null,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.black),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Map<String, TextInputType> keyboardTypes = {
    'TELEFONE': TextInputType.number,
    'CPF': TextInputType.number,
    'EMAIL': TextInputType.emailAddress,
  };

  TextInputType getKeyboardType(String hint) {
    return keyboardTypes[hint] ?? TextInputType.text;
  }
}
