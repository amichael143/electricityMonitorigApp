import 'package:charts_flutter/flutter.dart' as charts;
import 'package:emcs/src/screens/widgets/chart_task.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:emcs/src/screens/mainsidedrawer.dart';
import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {
  final Widget child;
  DashBoard({Key key, this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoard> {

  List<charts.Series<Task,String>> seriesPieData;

  generateData(){
    var pieData = [
      Task('Work', 37.8, Colors.deepOrange),
      Task('Work', 23.8, Colors.blue),
      Task('Work', 13.8, Colors.green),
      Task('Work', 9.7, Colors.indigo),
    ];

    seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Task task, _)=>task.task,
        measureFn: (Task task, _)=>task.taskValue,
        colorFn: (Task task, _)=>charts.ColorUtil.fromDartColor(task.colorValue),
        id: 'Daily Task',
        labelAccessorFn: (Task row,_)=>'${row.taskValue}',
        )
    );
  }

  void initState(){
    super.initState();
    seriesPieData = List<charts.Series<Task,String>>();
    generateData();
  }

  Widget build(context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('DashBoard'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.solidChartBar),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartPie),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartLine),
              )
              ]
            ),
        ),
        drawer: MainSideDrawer(),
        //Display of chart
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Time spent on Daily Task'),
                      //SizedBox(height: 4.0,),
                      Expanded(
                        child: charts.PieChart(
                          seriesPieData,
                          animate: true,
                          animationDuration: Duration(seconds: 5),
                          behaviors: [charts.DatumLegend(
                            outsideJustification: charts.OutsideJustification.endDrawArea,
                            horizontalFirst: false,
                            desiredMaxRows: 2,
                            //cellPadding: EdgeInsets.only(right: 4.0, bottom:4.0),
                            entryTextStyle: charts.TextStyleSpec(
                              color: charts.MaterialPalette.purple.shadeDefault,
                              fontSize: 11,
                            ),
                          ),],
                          defaultRenderer: charts.ArcRendererConfig(
                            //arcWidth: 100,
                            arcRendererDecorators: [
                              charts.ArcLabelDecorator(
                                labelPosition: charts.ArcLabelPosition.inside
                              )
                            ]
                          ),
                        ),  
                      )
                    ] 
                  ),
                )
              ),
            )
          ]
        ),
        extendBody: true,
      ),
    );
  }
}