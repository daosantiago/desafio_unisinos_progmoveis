import 'package:desafio_unisinos/components/bottom_menu.dart';
import 'package:desafio_unisinos/components/menus/main_menu.dart';
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
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 120),
                  height: 250,
                  width: 100,
                  child: Text("HOME", style: TextStyle(fontSize: 30)),
                ),
                // MainMenu(parentContext: context),
                MainMenu(),
                const Spacer(),
                BottomMenu(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



