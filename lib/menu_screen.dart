import 'package:flutter/material.dart';
import 'package:students_dmc/first_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/students.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StudentsDMC()),
                  );
                },
                icon: const Icon(
                  Icons.navigate_next,
                  color: Colors.amber,
                  size: 200,
                  shadows: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 20,
                        offset: Offset(0, 3)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
