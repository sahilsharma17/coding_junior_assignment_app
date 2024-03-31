import 'package:flutter/material.dart';
import 'problem_data.dart'; 

class CodingTestHomePage extends StatefulWidget {
  final int problemIndex;

  CodingTestHomePage({required this.problemIndex});
  @override
  _CodingTestHomePageState createState() => _CodingTestHomePageState();
}

class _CodingTestHomePageState extends State<CodingTestHomePage> {
  TextEditingController _codeController = TextEditingController();
  String _selectedLanguage = 'Java'; // Default selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${problems[widget.problemIndex].title}', // Display problem title in the app bar
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 30,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlueAccent],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Problem Statement',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Problem:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        problems[widget.problemIndex]
                            .problem, // Display the problem dynamically
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Constraints:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        problems[widget.problemIndex]
                            .constraints, // Display the constraints dynamically
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Example:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        problems[widget.problemIndex]
                            .example, // Display the example dynamically
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Code Editor',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.blue, width: 2.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Icon(Icons.code, color: Colors.blue),
                      SizedBox(width: 5.0),
                      DropdownButton<String>(
                        value: _selectedLanguage,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedLanguage = newValue!;
                          });
                        },
                        icon: Icon(Icons.arrow_drop_down,
                            color: Colors.black), // Custom dropdown icon
                        iconSize: 24.0,
                        elevation: 16,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0), // Dropdown menu text style
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        dropdownColor:
                            Colors.white, // Dropdown menu background color
                        items: <String>['Java', 'JavaScript', 'Python', 'C++']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _codeController,
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write your code here...',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Mock code submission functionality
                    print('Code submitted!');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Code submitted successfully!'),
                      ),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    // Reset code editor
                    setState(() {
                      _codeController.clear();
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Code editor reset!'),
                      ),
                    );
                  },
                  child: Icon(Icons.refresh, color: Colors.white),
                  backgroundColor: Colors.amber,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Plagiarism Warning: Any form of plagiarism will result in consequences.',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
