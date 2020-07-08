import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marinawave/app/utils/constants.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FuelArea extends StatefulWidget {
  @override
  _FuelAreaState createState() => _FuelAreaState();
}

class _FuelAreaState extends State<FuelArea> {
  double fuelValue = 0;
  @override
  Widget build(BuildContext context) {
    SyncfusionLicense.registerLicense(
        "NT8mJyc2IWhia31hfWN9Z2doYmF8YGJ8ampqanNiYmlmamlmanMDHmgyJzY9Nzo+Nj0nPH0nNj8/NiATND4yOj99MDw+");
    return Flexible(
      child: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        child: SfRadialGauge(axes: <RadialAxis>[
          RadialAxis(
              interval: 25,
              axisLabelStyle: GaugeTextStyle(fontSize: 18, color: kTextColor),
              labelOffset: 15,
              showTicks: true,
              minorTicksPerInterval: 1,
              canScaleToFit: true,
              tickOffset: 10,
              minimum: 0,
              maximum: 100.5,
              onAxisTapped: (value) {
                setState(() {
                  fuelValue = value;
                });
              },
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  endValue: 25,
                  color: Colors.red,
                  startWidth: 7,
                  endWidth: 15,
                ),
                GaugeRange(
                  startValue: 25,
                  endValue: 75,
                  color: Colors.orange,
                  startWidth: 15,
                  endWidth: 17,
                ),
                GaugeRange(
                  startValue: 75,
                  endValue: 100.5,
                  color: Colors.green,
                  startWidth: 17,
                  endWidth: 20,
                ),
              ],
              pointers: <GaugePointer>[
                MarkerPointer(
                  value: fuelValue,
                  animationDuration: 1500,
                  enableAnimation: true,
                  markerWidth: 25,
                  markerHeight: 25,
                  markerType: MarkerType.invertedTriangle,
                  borderWidth: 3,
                  borderColor: Colors.white70,
                  enableDragging: true,
                  onValueChanging: (ValueChangingArgs newValue) {
                    setState(() {
                      fuelValue = newValue.value;
                    });
                  },
                  onValueChanged: (double newValue) {
                    setState(() {
                      fuelValue = newValue;
                    });
                  },
                ),
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '${fuelValue.toInt()} %',
                        style: TextStyle(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "COMBUSTÍVEL",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ],
                  ),
                  angle: 90,
                  positionFactor: 0.1,
                ),
              ])
        ]),
      )),
    );
  }
}
