import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/progressclass.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(color: Colors.white),
        child: GradientProgressIndicator(
          radius: 50,
          duration: 3,
          strokeWidth: 12,
          gradientStops: const [
            0.2,
            0.8,
          ],
          gradientColors: const [
            Colors.white,
            Colors.grey,
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'loading ...',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
