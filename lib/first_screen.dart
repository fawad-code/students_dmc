import 'package:flutter/material.dart';

class StudentsDMC extends StatefulWidget {
  const StudentsDMC({super.key});

  @override
  State<StudentsDMC> createState() => _StudentsDMCState();
}

class _StudentsDMCState extends State<StudentsDMC> {
  var formKey = GlobalKey<FormState>(); //Form Key
  late int eng, math, sci, urdu, draw;
  var obtMarks = '';
  var percentage = '';
  var grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        centerTitle: true,
        title: const Text(
          'Students DMC',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 30),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'English Marks',
                  hintText: 'Enter Marks',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //validator
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Enter Marks';
                  } else {
                    eng = int.parse(text);
                    return null;
                  }
                }, // Validator
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Maths Marks',
                  hintText: 'Enter Marks',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //validator
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Enter Marks';
                  } else {
                    math = int.parse(text);
                    return null;
                  }
                }, // Validator
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Science Marks',
                  hintText: 'Enter Marks',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),

                //validator
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Enter Marks';
                  } else {
                    sci = int.parse(text);
                    return null;
                  }
                }, // Validator
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Urdu Marks',
                  hintText: 'Enter Marks',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //validator
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Enter Marks';
                  } else {
                    urdu = int.parse(text);
                    return null;
                  }
                }, // Validator
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Drawing Marks',
                  hintText: 'Enter Marks',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //validator
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'Enter Marks';
                  } else {
                    draw = int.parse(text);
                    return null;
                  }
                }, // Validator
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade600),
                    onPressed: (){
                      formKey.currentState?.reset();
                      obtMarks = '';
                      percentage = '';
                      grade = '';
                      setState(() {

                      });
                    },

                    child: const Text(
                      'Clear',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        int obt = eng + math + urdu + sci + draw;
                        double per = obt * 100 / 500;

                        if ( per >= 80){
                          grade = 'A1';
                        }
                        else if (per >= 70)
                        {
                          grade = 'A';
                        }
                        else if (per >= 60)
                        {
                          grade = 'B';
                        }
                        else if (per >= 40)
                        {
                          grade = 'C';
                        }
                        else {
                          grade = 'Fail';
                        }
                        setState(() {
                          obtMarks = obt.toString();
                          percentage = per.toString();
                        });
                      }
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Marks Obtained: $obtMarks',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Percentage: $percentage',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Grade: $grade',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
