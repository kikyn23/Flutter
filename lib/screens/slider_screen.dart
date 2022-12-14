import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnable,
            //     onChanged: (value) {
            //       _sliderEnable = value ?? true;
            //       setState(() {});
            //     }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: Text(_sliderEnable == (true)
                    ? 'Bloquear  Slider'
                    : 'Desbloquear Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })),

            SwitchListTile(
                activeColor: AppTheme.primary,
                title: Text(_sliderEnable == (true)
                    ? 'Bloquear  Slider'
                    : 'Desbloquear Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value;
                    })),

            Image(
              image: const NetworkImage(
                  'https://9to5fortnite.com/es/wp-content/uploads/2022/08/Godzilla-vs-kong-Final-Fight-Didnt-End-Their-Rivalry-.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
