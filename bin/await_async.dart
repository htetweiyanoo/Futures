import 'dart:async';

const data = "I'm expensive data";

Future<void> makeDataCall() async {
  var data = await getData();
  print(data);
}

String getData() {
  return data;
}

main(List<String> arguments) {
  makeDataCall();
}
