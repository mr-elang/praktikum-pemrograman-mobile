class Queue<T> {
  final List<T> _items = [];

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;

  void enqueue(T item) {
    _items.add(item);
  }

  T pop() {
    if (isEmpty) {
      throw StateError('Tidak bisa pop dari queue yang kosong.');
    }

    return _items.removeAt(0);
  }

  @override
  String toString() => _items.join(' -> ');
}

void main() {
  final antrian = Queue<String>();

  print('Antrian awal: $antrian \n');
  for (final nama in ['Elang', 'Inas', 'Faqih']) {
    print('$nama masuk ke antrian.');
    antrian.enqueue(nama);
    print('Antrian sekarang: $antrian \n');
  }

  print('\nProses pop dari antrian:\n');
  for (var i = 0; i < 2; i++) {
    final nama = antrian.pop();
    print('$nama keluar dari antrian.');
    print('Antrian sekarang: $antrian \n');
  }
}