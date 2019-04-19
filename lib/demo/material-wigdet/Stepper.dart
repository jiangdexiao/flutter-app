/**
 * 
 * Stepper({
 *  currentStep → int - 步骤位置。
    onStepCancel → VoidCallback - 点击 cancel 时触发。
    onStepContinue → VoidCallback - 点击 continue 时触发。
    onStepTapped → ValueChanged - 状态改变时触发。
    steps → List - 步骤内容。
    type → StepperType - 摆放方向，默认是垂直的，可以设置为水平的。
 * })
*/

import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      body: new Column(
        children: <Widget>[
          new Stepper(
            currentStep: 0, // <-- 激活的下标
            onStepCancel:(){
              print('onStepCancel');
            },
            onStepContinue: (){
              print('onStepContinue');
            },
            onStepTapped: (val){
              print('onStepTapped$val');
            },
            type: StepperType.vertical,
            steps: <Step>[
              new Step(
                title: new Text('第一步'),
                content: new Text('第一步内容'),
                state: StepState.complete,
                isActive: true,
                subtitle: new Text('第一步小标题'),
              ),
              new Step(
                title: new Text('第二步'),
                content: new Text('第二步内容'),
              ),
              new Step(
                title: new Text('第三步'),
                content: new Text('第三步内容'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
