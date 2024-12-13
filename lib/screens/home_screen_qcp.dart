import 'package:flutter/material.dart';

class HomeScreenQCP extends StatelessWidget {
  const HomeScreenQCP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Sign In presionado');
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