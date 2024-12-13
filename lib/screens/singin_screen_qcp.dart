import 'package:flutter/material.dart';
import 'package:examen_qcpablo/screens/home_screen_qcp.dart';

class SignInScreenQCP extends StatefulWidget {
  const SignInScreenQCP({Key? key}) : super(key: key);

  @override
  _SignInScreenQCPState createState() => _SignInScreenQCPState();
}

class _SignInScreenQCPState extends State<SignInScreenQCP> {
  final _formKey = GlobalKey<FormState>();
  final _usuario = TextEditingController();
  final _contrasena = TextEditingController();
  bool _contrasenahide = true;

  @override
  void dispose() {
    _usuario.dispose();
    _contrasena.dispose();
    super.dispose();
  }

  void subirForm() {
    if (_formKey.currentState!.validate()) {
      print('Usuario: ${_usuario.text}');
      print('Contraseña: ${_contrasena.text}');
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 100),
                
                const SizedBox(height: 20),

                TextFormField(
                  controller: _usuario,
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese un usuario';
                    }
                    if (value.length < 6) {
                      return 'El usuario debe tener al menos 6 caracteres';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                TextFormField(
                  controller: _contrasena,
                  obscureText: _contrasenahide,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _contrasenahide 
                          ? Icons.visibility_off 
                          : Icons.visibility
                      ),
                      onPressed: () {
                        setState(() {
                          _contrasenahide = !_contrasenahide;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una contraseña';
                    }
                    if (value.length < 6) {
                      return 'La contraseña debe tener al menos 6 caracteres';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: subirForm,
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomeScreenQCP()
            )
          );
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}