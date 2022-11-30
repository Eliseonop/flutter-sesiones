import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 40, 140),
        title: Text('Terribly easy app', style: GoogleFonts.acme()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.only(bottom: 55),
                  color: const Color.fromARGB(255, 46, 40, 140),
                  height: 165,
                  width: double.infinity,
                  child: const Text('My Account',  style: TextStyle(color: Colors.white, fontSize: 35),),
                ),
                Positioned(
                  top: size.height*0.1135,
                  left: size.width*0.329,
                  child: Container(
                    width: 140,
                    height: 144,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 46, 40, 140),
                    ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/im.jpeg',
                      ),
                      backgroundColor: Colors.blueGrey,
                      maxRadius: 60,
                                 ),
                  ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Login',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.security_outlined),
                ),
                obscureText: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 27, top: 15),
              alignment: AlignmentDirectional.centerEnd,
              child: GestureDetector(
                onTap: (){print('Olvidaste contraseña');}, 
                child: const Text('Forget password?')),
            ),
            const SizedBox(height: 70,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              height: size.height*0.078,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 36, 24, 171)),
                child: const Text('Sign in', style: TextStyle(fontSize: 20),),
              ),
            )
          ]
        ),
      ),
    );
  }
}