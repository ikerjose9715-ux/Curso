import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

 int clickcounter =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:AppBar(
        title:const Text('Counter Function'),
        actions:[
           IconButton(
          icon: const Icon( Icons.refresh_rounded ), 
          onPressed: () { 
            setState(() {
              clickcounter = 0;
            });
           },),
        ]

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickcounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text('Click${clickcounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        CustomButton(
          icon:Icons.refresh_rounded,
          onPressed: () {
            setState(() {
              clickcounter = 0;
            });
          }
          ),


        const SizedBox(height: 15,),

        CustomButton(
          icon:Icons.exposure_minus_1_outlined,
          onPressed: () {
            setState(() {
              if (clickcounter == 0) return;
              clickcounter--;
            });
          }
          ), 

         const SizedBox(height: 15,),

        CustomButton(
          icon:Icons.plus_one,
          onPressed: () {
            setState(() {
              clickcounter++;
            });
          }
          ),

         
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

    final IconData icon;
    final VoidCallback? onPressed;

  const CustomButton( {
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
    //  shape: const StadiumBorder(),
            onPressed: onPressed,
            child: Icon(icon),
             );
  }
}