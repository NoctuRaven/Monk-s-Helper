import 'package:mobx/mobx.dart';
import 'package:monks_helper/app/model/rgb.dart';
import 'package:monks_helper/repository/mockData.dart';
import '../model/mantra.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  ObservableList<Mantra> mantraList = MockData.mantraList.asObservable();

  Mantra? addingMantra = Mantra(
    id: 1,
    name: 'Mantra 1',
    buddhaName: 'Buda 1',
    symbol: 'lib\\assets\\images\\buddhaMeditation.png',
    mantraDesc: 'AOM',
    qtdR: 10,
    acc: 0,
    goal: 10000,
    rgb: Rgb(r: 0, g: 218, b: 7),
  );

  getRgb(int r, g, b) {
    addingMantra!.rgb = Rgb(r: r, g: g, b: b);
  }

  @observable
  double? percent = 0.0;
  @observable
  double? percentValue = 0.0;

  @observable
  Mantra? mantra;

  @observable
  int counter = 0;

  @action
  getPercent() {
    double newPercent;
    double newPercentValue;
    if (mantra!.goal! != 0) {
      newPercent = (mantra!.acc! / mantra!.goal!);
      newPercentValue = (mantra!.acc! / 100) * mantra!.goal!;

      if (newPercent >= 1) {
        percent = 1;
      } else {
        percent = newPercent;
      }
      if (newPercentValue >= 100) {
        percentValue = 100;
      } else {
        percentValue = newPercentValue;
      }
      print(percentValue);
      print('Percent up');
    }
  }

  @action
  fulfillReplays() {
    if (mantra!.qtdR! < counter && counter > 0) {
      mantra!.acc = counter + mantra!.acc! - 1;
      counter = 0;
      getPercent();
      updateMantra(mantra!);
      print('fulfillReplay trigger');
    }
  }

  @action
  cleanCounter() {
    counter = 0;
  }

  @action
  riseCounter() {
    counter++;
    fulfillReplays();
  }

  @action
  selectMantra(Mantra newMantra) {
    mantra = newMantra;
    getPercent();
  }

  @action
  addMantra(Mantra newMantra) {
    mantraList.add(
      Mantra().copyWith(
        id: newMantra.id,
        buddhaName: newMantra.buddhaName,
        goal: newMantra.goal,
        mantraDesc: newMantra.mantraDesc,
        name: newMantra.name,
        qtdR: newMantra.qtdR,
        rgb: newMantra.rgb,
        acc: newMantra.acc,
        symbol: newMantra.symbol,
        percentBar: newMantra.percentBar,
        percentValue: newMantra.percentValue,
      ),
    );
  }

  @action
  updateMantra(Mantra newMantra) {
    int index = mantraList.indexOf(mantraList.firstWhere((element) => element.id == newMantra.id));
    mantraList[index] = Mantra().copyWith(
      id: newMantra.id,
      buddhaName: newMantra.buddhaName,
      goal: newMantra.goal,
      mantraDesc: newMantra.mantraDesc,
      name: newMantra.name,
      qtdR: newMantra.qtdR,
      rgb: newMantra.rgb,
      acc: newMantra.acc,
      symbol: newMantra.symbol,
      percentBar: newMantra.percentBar,
      percentValue: newMantra.percentValue,
    );

    // mantraList[index] = newMantra;
  }

  @action
  deleteMantra(Mantra newMantra) {
    int index = mantraList.indexOf(mantraList.firstWhere((element) => element.id == newMantra.id));
    mantraList.removeAt(index);
  }
}
