import 'dart:async';

const data = "I'm expensive data";

Future<String> makeDataCall() async {
  var data = await getData();
  throw Exception("Error occured in making data call");
}

String getData() {
  return data;
}

void main() {
  var theFuture = makeDataCall();
  theFuture.then((value) {
    print(value);
  }).catchError((error){
    print(error);
  });
}