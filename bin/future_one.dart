import 'dart:async';

const data = "I'm expensive data";

Future<String> makeDataCall() async {
  var data = await getData();
  return data;
}

String getData() {
  return data;
}

void main() {
  var theFuture = makeDataCall();
  theFuture.then((value) {
    print(value);
  });
}