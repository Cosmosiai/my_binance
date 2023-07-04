import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children:[
                ElevatedButton(
                  onPressed: null, child: Text('Login'), style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.yellow
                )
                ),
                ElevatedButton(onPressed: null, child: Text('Registration'),style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.grey
                ),)
              ],
            )
          ],
        ),

      ),
    );
  }
}
