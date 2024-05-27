// ignore_for_file: dead_code

void main() {
  double totalPembelian = 150.0;
  bool pelangganLoyal = true;
  double diskon;

  if (totalPembelian > 100.0) {
    if (pelangganLoyal) {
      diskon = totalPembelian * 0.2; // Diskon 20% untuk pelanggan loyal
    } else {
      diskon = totalPembelian * 0.1; // Diskon 10% untuk pelanggan non-loyal
    }
    print(
        "Anda memenuhi syarat untuk diskon sebesar \$${diskon.toStringAsFixed(2)}");
  } else {
    print("Maaf, Anda tidak memenuhi syarat untuk diskon.");
  }
}
