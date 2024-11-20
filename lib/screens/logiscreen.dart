// screens/login_screen.dart


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/auth_cubit.dart';
import '../cubits/auth_state.dart';
import '../widgets/button.dart';
import '../widgets/inputs.dart';
import 'main_menu.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade300, Colors.blueAccent.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade700,
                    ),
                  ),
                  SizedBox(height: 20),
                  InputField(
                    controller: _usernameController,
                    label: 'Usuario',
                    // icon: Icons.person,
                  ),
                  SizedBox(height: 15),
                  InputField(
                    controller: _passwordController,
                    label: 'Contraseña',
                    obscureText: true,
                    // icon: Icons.lock,
                  ),
                  SizedBox(height: 30),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      if (state is AuthLoading) {
                        return CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                        );
                      }
                      return CustomButton(
                        text: 'Ingresar',
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenuScreen()));
                          // BlocProvider.of<AuthCubit>(context).login(
                          //   _usernameController.text,
                          //   _passwordController.text,
                          // );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
