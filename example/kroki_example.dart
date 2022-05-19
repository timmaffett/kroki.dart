import 'dart:io';
import 'package:kroki/kroki.dart';

void main() async {
  final Kroki kroki = Kroki();

  // Send every sample to kroki and print SVGs
  int count = 0;
  for (final sample in KrokiSampleDiagrams.samples) {
    print('Convert example $count endpoint ${sample.diagramType}:');
    final svg =
        await kroki.convertDiagram(sample.diagramType, sample.diagramSource);
    print('''
SVG = 
$svg
''');
    print('---------------------------------------------------------');
    count++;
  }

  print('----------------------------------------------');
  print('----------------------------------------------');
  print('----------------------------------------------');

  //  Create a markdown file with all the sample diagrams
  List<String> markdownLines = [];

  for (final sample in KrokiSampleDiagrams.samples) {
    markdownLines.add('''
## [${sample.name}](${sample.url})
----------------------------------
```${sample.diagramType}
${sample.diagramSource}
```
''');
  }

  print(markdownLines.join('\n'));

  exit(0);
}
