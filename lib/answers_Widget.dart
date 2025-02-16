
import 'package:flutter/material.dart';



class Options_Widget extends StatelessWidget {
   final VoidCallback optionText;
   final String Options;

  const Options_Widget(this.optionText,this.Options ,{super.key}  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 0, 204),
      width: double.infinity,
      margin:const EdgeInsets.all(50),
      child:   ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:const  Color.fromARGB(255, 105, 0, 253),
        ),
        onPressed: optionText,
         child:   Text(Options ,style: const TextStyle(fontSize: 22,color: Color.fromARGB(255, 255, 255, 255),
         ),
         ) ,
         
      )   
    );
  }
}
