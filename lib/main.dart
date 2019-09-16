import 'package:flutter/material.dart';
import 'questions.dart';
import 'quizbrain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("INTEGER QUIZZY"),
          )
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper=[];
  Quizb qb=Quizb();
  
  
  int questionnumber=0;
  @override
  Widget build(BuildContext context) {
    int count=0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(qb.bank[questionnumber].questiontext,textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white),),
            )
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  int k=qb.bank[questionnumber].answers;
                  if (k==0)
                  {
                    scorekeeper.add(Icon(Icons.check,color:Colors.green));
                    count=count+1;
                  }
                  else
                  {
                    scorekeeper.add(Icon(Icons.close,color:Colors.red));
                  }
                  setState(() {
                   questionnumber=questionnumber+1; 
                   Icon(
                     Icons.check,
                   );
                  });
                },
                child: Center(
                  child: Text("A.  0",style:TextStyle(fontSize: 15.0,color: Colors.white),),
                ),
                color: Colors.blue,
                padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 10.0),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  int k=qb.bank[questionnumber].answers;
                  if (k==1)
                  {
                    scorekeeper.add(Icon(Icons.check,color:Colors.green));
                    count=count+1;
                  }
                  else
                  {
                    scorekeeper.add(Icon(Icons.close,color:Colors.red));
                  }
                  setState(() {
                   questionnumber=questionnumber+1; 
                  });

                },
                child: Center(
                  child: Text("B.  1",style:TextStyle(fontSize: 15.0,color: Colors.white),),
                ),
                color: Colors.blue,
                padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 10.0),
              ),

            )
          ],
        ),
        SizedBox(
          height: 8.30,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  int k=qb.bank[questionnumber].answers;
                  if (k==2)
                  {
                    scorekeeper.add(Icon(Icons.check,color:Colors.green));
                    count=count+1;
                  }
                  else
                  {
                    scorekeeper.add(Icon(Icons.close,color:Colors.red));
                  }
                  setState(() {
                   questionnumber++; 
                  });
                },
                child: Center(
                  child: Text("C.  2",style:TextStyle(fontSize: 15.0,color: Colors.white),),
                ),
                color: Colors.blue,
                padding:EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 12.0),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  int k=qb.bank[questionnumber].answers;
                  if (k==3)
                  {
                    scorekeeper.add(Icon(Icons.check,color:Colors.green));
                    count=count+1;
                  }
                  else
                  {
                    scorekeeper.add(Icon(Icons.close,color:Colors.red));
                  }
                  setState(() {
                    questionnumber=questionnumber+1;
                  });

                },
                child: Center(
                  child: Text("D.  3",style:TextStyle(fontSize: 15.0,color: Colors.white),),
                ),
                color: Colors.blue,
                padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 12.0),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
          width: double.infinity,
        ),
        Row(
          children: scorekeeper,
          
        ),
        
        SizedBox(
          height: 10.0,
        )
      ],
    );
    
  }
}
