import 'package:flutter/material.dart';
import 'package:game_mini_2/data/app_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("helo:D"),),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
            color: AppColors.gray7,
            border: Border.all(),
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.all(5),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.secondary3),
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    child: Icon(Icons.play_arrow, color: AppColors.secondary3),
                  )),
              Text("aaa",
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(top: 6, right: 16),
                width: 120,
                child: LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 20,
                  restartAnimation: false,
                  percent: 0.2,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  clipLinearGradient: true,
                  // linearGradient:
                ),
              ),
            ],
          ),
        ),

        ),
      );
  }
}
