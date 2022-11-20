Iterable<int> getNumberSequenceSync() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void execSyncGenerator() {
  for (final value in getNumberSequenceSync()) {
    print('from getNumber ${value}');
  }
}

void main() {
  print('generators');

  execSyncGenerator();
}
