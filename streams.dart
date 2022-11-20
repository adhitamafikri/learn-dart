Stream<String> getName() {
  // return Stream.value('Something');
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Yaaaaa ${value}';
  });
}

void handleStream() async {
  await for (final name in getName()) {
    print('Value from the stream: ${name}');
  }
  print('Stream ended');
}

void main() {
  print('streams');

  handleStream();
}
