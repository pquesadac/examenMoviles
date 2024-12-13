import 'package:flutter/material.dart';
import 'package:examen_qcpablo/screens/singin_screen_qcp.dart';

class HomeScreenQCP extends StatelessWidget {
  const HomeScreenQCP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 120),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInScreenQCP()
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                
              ),
              child: const Text('Sign In'),
            ),
            
            const SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: null, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, 
                minimumSize: const Size(200, 50),
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}