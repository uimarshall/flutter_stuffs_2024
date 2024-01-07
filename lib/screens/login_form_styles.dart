import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LoginFormStyles extends StatefulWidget {
  const LoginFormStyles({Key? key}) : super(key: key);

  @override
  _LoginFormStylesState createState() => _LoginFormStylesState();
}

class _LoginFormStylesState extends State<LoginFormStyles> {
  TextEditingController dateInputController = TextEditingController();
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }
  // @override
  // void initState() {
  //   super.initState();
  //   dateController.text = "";
  // }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter TextFormFields"),
      ),
      body: SingleChildScrollView(child: buildTextFields()),
    );
  }

  Widget buildTextFields() => Padding(
        padding: const EdgeInsets.all(35),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTextField1(),
              heightSpacer(15),
              buildTextField2(),
              heightSpacer(15),
              buildTextField3(),
              heightSpacer(15),
              buildTextField4(),
              heightSpacer(15),
              buildTextField5(),
              heightSpacer(15),
              buildDatePicker(),
              heightSpacer(15),
              buildCheckboxListTile("I agree to the terms and conditions"),
              buildCheckboxListTile("Lets go!"),
            ],
          ),
        ),
      );

  Widget buildTextField1() => TextFormField(
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.person,
            color: Colors.teal,
          ),
          hintText: 'Enter your Name',
          hintStyle: TextStyle(color: Colors.teal)));

  Widget buildTextField2() => TextFormField(
        decoration: const InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.purple,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.orange,
          ),
          hintText: "Enter your Name",
          hintStyle: TextStyle(color: Colors.orange),
        ),
      );

  Widget buildTextField3() => TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          prefixIcon: const Icon(Icons.person, color: Colors.blue),
          hintText: "Enter your Name",
          hintStyle: const TextStyle(color: Colors.blue),
          filled: true,
          fillColor: Colors.blue[50],
        ),
      );

  Widget buildTextField4() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.green,
          ),
          filled: true,
          fillColor: Colors.green[50],
          labelText: "Enter your Name",
          labelStyle: const TextStyle(color: Colors.green),
        ),
      );

  Widget buildTextField5() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(5.5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.red,
          ),
          filled: true,
          fillColor: Colors.red[50],
          labelText: "Enter your Name",
          labelStyle: const TextStyle(color: Colors.red),
        ),
      );

  Widget buildDatePicker() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(5.5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          prefixIcon: const Icon(
            Icons.calendar_today,
            color: Colors.red,
          ),
          filled: true,
          fillColor: Colors.red[50],
          labelText: "Enter your DOB",
          labelStyle: const TextStyle(color: Colors.red),
        ),
        controller: dateInputController,
        // readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2050));

          if (pickedDate != null) {
            String formattedDate = DateFormat("yyyy-MM-dd").format(pickedDate);
            setState(() {
              dateInputController.text = formattedDate.toString();
            });
            // dateInputController.text = pickedDate.toString();
          }
        },
      );

  CheckboxListTile buildCheckboxListTile(
    String title,
  ) {
    return CheckboxListTile(
      title: Text(title),
      value: agree,
      onChanged: (newValue) {
        setState(() {
          agree = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.red,
      checkColor: Colors.white,
      overlayColor: MaterialStateProperty.all(Colors.red),
    );
  }

  Widget heightSpacer(double myHeight) => SizedBox(height: myHeight);
}
