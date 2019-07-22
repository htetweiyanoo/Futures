import 'dart:async';

const data = "I'm expensive data";

Future<void> makeDataCall() async {
  try {
    var data = await getData();
    throw Exception(
      "Error occurred in fetching data"
    );
  } catch(e) {
    print(e.toString());
  }

  print(data);
}

String getData() {
  return data;
}

void main(List<String> args) {
  makeDataCall();
}