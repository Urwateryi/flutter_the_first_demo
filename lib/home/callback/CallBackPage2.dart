import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Lecture {
  String name;
  String date;
  String time = '';
  String loc = '';
  String desc = '';
}

Future<http.Response> createLecture(String name,String date,String time,String loc,String desc) async {
  return http.get(
      'https://svg25118.herokuapp.com/API?command=addCourse&course=$name&loc=$loc&desc=$desc');
}

class CallBackPage2 extends StatefulWidget {
  CallBackPage2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CallBackPage2State createState() => new _CallBackPage2State();
}

class _CallBackPage2State extends State<CallBackPage2> {
  Lecture newLecture = new Lecture();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  final TextEditingController _datePicker = new TextEditingController();
  final TextEditingController _timePicker = new TextEditingController();

  Future _chooseDate(BuildContext context, String initialDateString) async {
    var now = new DateTime.now();
    var initialDate = convertToDate(initialDateString) ?? now;
    initialDate = (initialDate.year >= 1900 && initialDate.isBefore(now) ? initialDate : now);

    var result = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2100)
    );

    if (result == null) return;

    setState(() {
      _datePicker.text = new DateFormat.yMd().format(result);
    });
  }

  Future _chooseTime(BuildContext context) async {
    var now = new TimeOfDay.now();

    var result = await showTimePicker(
      context: context,
      initialTime: new TimeOfDay(hour: now.hour, minute: 0),
    );

    if (result == null) return;

    setState(() {
      _timePicker.text = result.toString().substring(10,15);
    });
  }

  DateTime convertToDate(String input) {
    try
    {
      var d = new DateFormat.yMd().parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }

  bool isValidDob(String _date) {
    if (_date.isEmpty) return false;
    var d = convertToDate(_date);
    return d != null && d.isAfter(new DateTime.now().subtract(new Duration(days: 1))); // Cannot create old lectures
  }

  void _submitForm() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event

      print('Form save called, newContact is now up to date...');
      print('Course: ${newLecture.name}');
      print('Date: ${newLecture.date}');
      print('Time: ${newLecture.time}');
      print('Location: ${newLecture.loc}');
      print('Description: ${newLecture.desc}');
      print('========================================');
      print('Submitting to back end...');
      createLecture(newLecture.name, newLecture.date, newLecture.time, newLecture.loc, newLecture.desc);
      print('TODO - we will write the submission part next...');
    }
  }

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Please enter the Course Name (E.G. TEST1234)',
                      labelText: 'Course',
                    ),
                    validator: (val) => val.isEmpty ? 'Name is required' : null,
                    onSaved: (val) => newLecture.name = val,
                  ),
                  new Row(children: <Widget>[
                    new Expanded(
                        child: new TextFormField(
                          decoration: new InputDecoration(
                            icon: const Icon(Icons.calendar_today),
                            hintText: 'Please enter the date',
                            labelText: 'Date',
                          ),
                          controller: _datePicker,
                          keyboardType: TextInputType.datetime,
                          validator: (val) => isValidDob(val) ? null : 'Not a valid date',
                          onSaved: (val) => newLecture.date = val,
                        )),
                    new IconButton(
                      icon: new Icon(Icons.search),
                      tooltip: 'Choose date',
                      onPressed: (() {
                        _chooseDate(context, _datePicker.text);
                      }),
                    )
                  ]),
                  new Row(children: <Widget>[
                    new Expanded(
                        child: new TextFormField(
                          decoration: new InputDecoration(
                            icon: const Icon(Icons.access_time),
                            hintText: 'Please enter the time',
                            labelText: 'Time',
                          ),
                          controller: _timePicker,
                          keyboardType: TextInputType.datetime,
                          validator: (val) => val.isEmpty ? 'Time is required' : null,
                          onSaved: (val) => newLecture.time = val,
                        )),
                    new IconButton(
                      icon: new Icon(Icons.search),
                      tooltip: 'Choose time',
                      onPressed: (() {
                        _chooseTime(context);
                      }),
                    )
                  ]),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_on),
                      hintText: 'Please enter a location (E.G. CT202)',
                      labelText: 'Location',
                    ),
                    validator: (val) => val.isEmpty ? 'Location is required' : null,
                    onSaved: (val) => newLecture.loc = val,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.description),
                      hintText: 'Please enter a description (optional)',
                      labelText: 'Description',
                    ),
                    //validator: (val) => val.isEmpty ? 'Location is required' : null,
                    onSaved: (val) => newLecture.desc = val,
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        onPressed: _submitForm,
                      )),
                ],
              ))),
    );
  }
}