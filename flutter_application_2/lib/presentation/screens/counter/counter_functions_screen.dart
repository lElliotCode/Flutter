import 'package:flutter/material.dart';

void main() => runApp(const CounterFunctionsScreen());

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Counter Functions Screen')),
        actions: [
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () => {
              setState(() {
                clickCounter = 0;
              }),
            },
          ),

          IconButton(
            onPressed: () => {
              setState(() {
                clickCounter += 10;
              }),
            },
            icon: Icon(Icons.add_circle_outline_rounded),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),

            Text(
              clickCounter != 1 ? 'Clicks' : 'Click',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () => {
              setState(() {
                clickCounter++;
              }),
            },
          ),

          const SizedBox(width: 16),

          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () => {
              setState(() {
                clickCounter = 0;
              }),
            },
          ),

          const SizedBox(width: 16),

          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () => {
              if (clickCounter == 0)
                {clickCounter = 0}
              else
                {
                  setState(() {
                    clickCounter--;
                  }),
                },
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressed, child: Icon(icon));
  }
}
