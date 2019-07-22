
import 'dart:async';

const data = "I'm expensive data";

String getData(data) {
  return data;
}

Future<String> getDataA() async {
  var data = await getData("dataA");
  return data;
}

Future<String> getDataB() async {
  var data = await getData("dataB");
  return data;
}

Future<String> getDataC() async {
  var data = await getData("dataC");
  return data;
}

void printMyData(List<String> data) {
  print(data);
}

main() async {
  await Future.wait([getDataA(), getDataB(), getDataC()])
      .then((List responses) => printMyData(responses))
      .catchError((error){});
}
