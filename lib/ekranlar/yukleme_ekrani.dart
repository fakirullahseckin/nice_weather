import 'package:clima/ekranlar/konum_ekrani.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/hava_durumu.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'sehir_secme_ekrani.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    konumBul();
  }

  void konumBul() async {
    var havaDatasi = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        konumHavasi: havaDatasi,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.red,
        ),
      ),
    );
  }
}
