// ignore_for_file: dead_code

void main() {
  int usia = 18;
  bool memilikiSIM = true;

  if (usia >= 18) {
    if (memilikiSIM) {
      print("Anda dapat mengemudi.");
    } else {
      print("Anda dapat mengajukan izin mengemudi.");
    }
  } else {
    print("Maaf, Anda belum mencapai usia yang memenuhi syarat.");
  }
}