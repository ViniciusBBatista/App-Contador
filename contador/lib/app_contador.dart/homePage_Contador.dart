import 'package:flutter/material.dart';

class AppContador extends StatefulWidget {
  const AppContador({super.key});

  @override
  State<AppContador> createState() => _AppContador();
}

class _AppContador extends State<AppContador> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpyt => count == 0;
  bool get isfull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isfull ? "Lotado" : "Pode Entrar",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpyt ? null : decrement,
                style: TextButton.styleFrom(
                  backgroundColor:
                      isEmpyt ? Colors.white.withOpacity(0.3) : Colors.white,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Saiu",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 25),
              TextButton(
                onPressed: isfull ? null : increment,
                style: TextButton.styleFrom(
                  backgroundColor:
                      isfull ? Colors.white.withOpacity(0.3) : Colors.white,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Entrou",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
