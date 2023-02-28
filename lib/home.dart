import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

 List<String> country = ["India","UAE","USA"];
 List<String> indiaSate = ["Kerala","Asam","Delhi","Goa","Panjab"];
 List<String> uaeSate = ["Dubai","Sharjah","Ajman","RAK","Abudhabi"];
 List<String> usaSate = ["Kalifornia","miomifalls","washingdon","chicago","walley"];

 String? selectedCountry;
 String? selectedstate;
 List<String> state =[];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter DropDown"),
      backgroundColor: Colors.cyan,),
      body: SafeArea(child: 
    Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.cyan
        )
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
          DropdownButton(
            hint: Text('Select Country'),
            style: GoogleFonts.patuaOne(
              textStyle:TextStyle(
                color: Colors.amber
              )
            ),
            iconSize: 20,
            value: selectedCountry,
            items: country.map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
              )).toList(),          
             onChanged:(country){ 
             if(country == 'USA'){
              state = usaSate;
             }else if(country=='UAE'){
              state =uaeSate;
             }else if(country=="India"){
              state =indiaSate;
             }else{
              state =[];
             }
             setState(() {
               selectedCountry =country;
               selectedstate = null;
             });
  },
           ),
           const SizedBox(width:10),  
         DropdownButton(
          hint: Text('Select State'),
            style: GoogleFonts.patuaOne(
              textStyle:TextStyle(
                color: Colors.amber
              )
            ),
            iconSize: 20,
            value: selectedstate,
            items: state.map((value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
              )).toList(),          
             onChanged:(state){
             setState(() => selectedstate = state);
             }
           ),
        ]),
      ),
    ))
    );
  }
}