import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:monks_helper/app/controller/home_controller.dart';
import 'package:monks_helper/app/model/mantra.dart';
import 'package:monks_helper/app/view/component/custom_text_form_field.dart';
import 'package:monks_helper/theme/app_theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final formKey = GlobalKey<FormState>();
  final formKeyBottom = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextTheme appTheme = AppTheme.mainThemeText;
    HomeController controller = context.watch<HomeController>();
    controller.getDatabase();
    if (controller.mantra == null) {
      controller.mantra = controller.mantraList![0];
    }
    _dialog() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              content: Form(
                key: formKey,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'New Mantra',
                          style: AppTheme.mainThemeText.headline6,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          label: 'Mantra Name',
                          obscureText: false,
                          initialValue: 'Mantra',
                          onSaved: (text) {
                            controller.addingMantra!.name = text;
                          },
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Este campo não pode ser nulo';
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          label: 'Buddha\'s Name',
                          obscureText: false,
                          initialValue: 'Buddha',
                          onSaved: (text) {
                            controller.addingMantra!.buddhaName = text;
                          },
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Este campo não pode ser nulo';
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          label: 'Goal',
                          obscureText: false,
                          initialValue: '10000',
                          keyboard: TextInputType.number,
                          onSaved: (text) {
                            controller.addingMantra!.goal = int.parse(text!);
                          },
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Este campo não pode ser nulo';
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          label: 'Repeats',
                          obscureText: false,
                          initialValue: '108',
                          keyboard: TextInputType.number,
                          onSaved: (text) {
                            controller.addingMantra!.qtdR = int.parse(text!);
                          },
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Este campo não pode ser nulo';
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          label: 'Mantra Desctiption',
                          obscureText: false,
                          initialValue: 'AOM',
                          onSaved: (text) {
                            controller.addingMantra!.mantraDesc = text;
                          },
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Este campo não pode ser nulo';
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Color'),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 212, 212, 212),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        controller.getRgb(0, 93, 168);
                                      },
                                      icon: Icon(
                                        Icons.circle,
                                        color: Color.fromARGB(255, 0, 93, 168),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.getRgb(255, 255, 255);
                                      },
                                      icon: Icon(
                                        Icons.circle,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.getRgb(214, 0, 0);
                                      },
                                      icon: Icon(
                                        Icons.circle,
                                        color: Color.fromARGB(255, 214, 0, 0),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.getRgb(0, 171, 40);
                                      },
                                      icon: Icon(
                                        Icons.circle,
                                        color: Color.fromARGB(255, 0, 171, 40),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.getRgb(234, 255, 0);
                                      },
                                      icon: Icon(
                                        Icons.circle,
                                        color: Color.fromARGB(255, 234, 255, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text('Symbol'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\vajra.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\vajra.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\jewel.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\jewel.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\lotus.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\lotus.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\doubleVajra.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\doubleVajra.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\dharma-wheel.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\dharma-wheel.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\buddhaMeditation.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\buddhaMeditation.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (() {
                                          controller.addingMantra!.symbol = 'lib\\assets\\images\\buddha.png';
                                        }),
                                        child: Image.asset(
                                          'lib\\assets\\images\\buddha.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 300,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.red),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel'),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: ElevatedButton(
                                onPressed: () {
                                  formKey.currentState!.save();
                                  controller.addMantra(controller.addingMantra!);
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                                style: ElevatedButton.styleFrom(primary: Colors.green),
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
    }

    _bottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Observer(builder: (_) {
            return Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: IconButton(
                      iconSize: 40,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_double_arrow_down_rounded,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          controller.mantra!.name!,
                          style: AppTheme.mainThemeText.headline6,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LinearPercentIndicator(
                              barRadius: Radius.circular(20),
                              width: MediaQuery.of(context).size.width * 0.7,
                              lineHeight: 20,
                              percent: controller.percent!,
                              backgroundColor: Colors.grey,
                              progressColor: Color.fromARGB(
                                255,
                                controller.mantra!.rgb!.r,
                                controller.mantra!.rgb!.g,
                                controller.mantra!.rgb!.b,
                              ),
                              center: Text('${controller.percentValue!.round().toString()}%'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Buddha\'s Name:   ${controller.mantra!.buddhaName}',
                                  style: AppTheme.mainThemeText.bodyText1,
                                ),
                                Text(
                                  'Goal:   ${controller.mantra!.goal}',
                                  style: AppTheme.mainThemeText.bodyText1,
                                ),
                                Text(
                                  'Replays:   ${controller.mantra!.acc}',
                                  style: AppTheme.mainThemeText.bodyText1,
                                ),
                                Text(
                                  'Mantra description:   ${controller.mantra!.mantraDesc}',
                                  style: AppTheme.mainThemeText.bodyText1,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
        },
      );
    }

    _dialogGoal() {
      showDialog(
        context: context,
        builder: (context) {
          return FittedBox(
            child: AlertDialog(
              title: Text('Congratulations, you\'ve complited your goal!'),
              content: Column(
                children: [
                  Text('Up your goal to continue or create another one'),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('ok')),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Monk\'s helper'),
        backgroundColor: Colors.black,
      ),
      drawer: Observer(builder: (_) {
        return Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 120,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.bottomRight,
                    color: Color.fromARGB(255, 33, 33, 33),
                    child: const Text(
                      'Mantras',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      constraints: BoxConstraints.expand(
                        height: MediaQuery.of(context).size.height * 0.7,
                      ),
                      child: ListView.builder(
                          itemCount: controller.mantraList!.length,
                          itemBuilder: (context, index) {
                            return Observer(builder: (_) {
                              return RadioListTile(
                                title: Text(controller.mantraList![index].name!),
                                value: controller.mantraList![index],
                                activeColor: Colors.indigo,
                                groupValue: controller.mantra,
                                onChanged: (value) {
                                  controller.selectMantra(value as Mantra);
                                  controller.cleanCounter();
                                },
                              );
                            });
                          })),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    _dialog();
                  },
                  icon: const Icon(Icons.add, size: 50),
                  label: const Text(
                    'ADD NEW MANTRA',
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(elevation: 1.0, primary: Color.fromARGB(255, 33, 33, 33)),
                ),
              )
            ],
          ),
        );
      }),
      body: Observer(builder: (_) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                (controller.percentValue! < 100) ? controller.riseCounter() : _dialogGoal();
              },
              child: Container(
                color: Color.fromARGB(255, controller.mantra!.rgb!.r, controller.mantra!.rgb!.g, controller.mantra!.rgb!.b),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          controller.mantra!.name!,
                          style: appTheme.headline1,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Image.asset(
                            controller.mantra!.symbol!,
                            fit: BoxFit.scaleDown,
                            color: Colors.black,
                          ),
                        ),
                        Text(controller.counter.toString(), style: appTheme.headline2),
                      ],
                    ),
                    // Container(
                    //   height: 85,
                    //   padding: EdgeInsets.only(right: 45, bottom: 45),
                    //   width: double.infinity,
                    //   alignment: AlignmentDirectional.bottomEnd,
                    //   child: IconButton(
                    //     onPressed: () {
                    //       _bottomSheet();
                    //     },
                    //     icon: Icon(
                    //       Icons.arrow_circle_up_sharp,
                    //       size: 80,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: IconButton(
                iconSize: 80,
                onPressed: () {
                  _bottomSheet();
                },
                icon: Icon(
                  Icons.arrow_circle_up_sharp,
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: IconButton(
                iconSize: 40,
                onPressed: () {
                  controller.cleanCounter();
                },
                icon: Icon(
                  Icons.replay,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
