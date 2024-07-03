import 'package:flutter/material.dart';
import 'package:motionmind/Utils/color.dart';

class horizontal extends StatelessWidget {
  const horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextButton(onPressed: (){}, child: Text('Home',style: TextStyle(color: thirdcolor),)),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextButton(onPressed: (){}, child: Text('Work',style: TextStyle(color: thirdcolor),)),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextButton(onPressed: (){}, child: Text('Personal',style: TextStyle(color: thirdcolor),)),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextButton(onPressed: (){}, child: Text('School',style: TextStyle(color: thirdcolor),)),
            ),

          ],
        ),
      ),
    );
  }
}
