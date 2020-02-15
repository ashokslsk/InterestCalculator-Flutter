import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Interest Calaculator',
      home: InterestForm(),
    )
  );
}

class InterestForm extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InterestFormState();
  }

}

class _InterestFormState extends State<InterestForm> {

  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;
  var _currentItemSelected = 'Rupees';

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult ='';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Interest Calaculator'),
      ),

      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),

            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: principalController,
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal e.g. 12000',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(_minimumPadding)
                      )
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: roiController,
                  decoration: InputDecoration(
                      labelText: 'Interest',
                      hintText: 'Enter interest in persent % e.g. 12%',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(_minimumPadding)
                      )
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(child: TextField(
                      keyboardType: TextInputType.number,
                      controller: termController,
                      decoration: InputDecoration(
                          labelText: 'Term',
                          hintText: 'Term in years',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  _minimumPadding)
                          )
                      ),
                    )),
                    Container(width: _minimumPadding * 5,),
                    Expanded(child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: _currentItemSelected,
                      onChanged: (String newValueSelected) {
                        //code to play
                        _onDropdownItemSelected(newValueSelected);
                      },
                    ))
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text('Calculate'),
                        onPressed: () {
                          // Click listner
                          setState(() {
                            this.displayResult = _calculateTotalReturns();

                          });
                        },
                      ),
                    ),

                    Container(width: _minimumPadding * 5,),
                    Expanded(
                      child: RaisedButton(
                        child: Text('Reset'),
                        onPressed: () {
                          // Click listner
                        },
                      ),
                    )
                  ],
                )),
            Padding(padding: EdgeInsets.all(_minimumPadding * 2),
              child: Text(this.displayResult),),
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetIamge = AssetImage('images/money.png');
    Image image = Image(image: assetIamge, width: 250.0, height: 250.0,);
    return Container(
      child: image, margin: EdgeInsets.all(_minimumPadding * 10),);
  }


  void _onDropdownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double results = principal+(principal*roi*term)/100;
    String strResult = 'After $term years, your investment will be worth $results $_currentItemSelected';

    return strResult;
  }
}