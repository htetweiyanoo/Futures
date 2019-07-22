import 'dart:async';

import 'await_async.dart';

const data = "I'm expensive data";

Future<void> makeDataCall() async {
  var data = await getData();

}

String getData() {
  return data;
}

void main() {
  var theFuture = makeDataCall();
  theFuture.then((_) {
    print("There's nothing to be printed here. Work is already done.");
  });
}

