
const data = "I'm expensive data";

void getDataA() {
  print("dataA");
}

void getDataB() {
  print("dataB");
}

String getDataC() {
  return "dataC";
}

void printMyData(String data) {
  print(data);
}

main() async {
  await getDataA();
  await getDataB();
  printMyData(await getDataC());
}