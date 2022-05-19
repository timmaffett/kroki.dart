# Kroki.dart

[![Pub](https://img.shields.io/pub/v/kroki.svg)](https://pub.dartlang.org/packages/kroki)
[![pub points](https://badges.bar/kroki/pub%20points)](https://pub.dev/packages/kroki/score)
[![popularity](https://badges.bar/kroki/popularity)](https://pub.dev/packages/kroki/score)
[![likes](https://badges.bar/kroki/likes)](https://pub.dev/packages/kroki/score)
[![License](https://img.shields.io/badge/License-BSD%203.0-blue.svg)](/LICENSE)


[![GitHub contributors](https://img.shields.io/github/contributors/timmaffett/kroki.dart)](https://github.com/timmaffett/kroki.dart/graphs/contributors)
[![GitHub forks](https://img.shields.io/github/forks/timmaffett/kroki.dart)](https://github.com/timmaffett/kroki.dart)
[![GitHub stars](https://img.shields.io/github/stars/timmaffett/kroki.dart?)](https://github.com/timmaffett/kroki.dart)

This is a simple class to package up and send requests to the [Kroki.io](https://kroki.io) web service.

A live editor to editing diagrams that Kroki supports can be found at [niolesk.top](https://niolesk.top/#https://kroki.io/mermaid/svg/eNpNzr0OgjAcBPCdp7hRB-QNNHz4MTipG2EopWkbsH9SWwyK725hMM6_u8tJy3qFWxEBaYnUjGQEKsTxdsqZgRJdjwnZCkeCI0jtlK83nO7J6F_eCa6S1lKrsQ4L2dxD_saJnnOak3FW1yG2wyd4vnhR4iJ6sk4bidrLB6qf7UucaRC4KmZn1o1g_34IH5uBOFvKVfQFDfY57w==)

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/timmaffett/kroki.dart/issues).

-----------------------------------

### Example with package:markdown

Here is an example of using the Kroki package with package:markdown to support fenced code blocks that contain diagrams.

~~~dart
import 'package:kroki/kroki.dart';
import 'package:markdown/markdown.dart' as markdown;

final Kroki kroki = Kroki();

class DiagramTransfomer extends markdown.CodeBlockTransformer {
  @override
  markdown.Node? transformCodeBlock(
      String codeBlockType, String rawCodeBlock, markdown.BlockParser parser) {
    final markdown.AsyncText asyncText = markdown.AsyncText(
        kroki.convertDiagram(codeBlockType, rawCodeBlock), parser,
        uncompletedFutureTextValue:
            rawCodeBlock // fall back to showing diagram source
        );
    return asyncText;
  }

  DiagramTransfomer() :
    super(handledCodeBlockTypes:KrokiDiagramEndpoints.supportedEndpoints);
}

final diagramTransformingFencedCodeBlock =
    markdown.TransformableFencedCodeBlockSyntax([DiagramTransfomer()]);

main() {
    final finalHtml = await markdown.markdownToHtmlWithAsyncTransforms(markdownSource,
      blockSyntaxes: [diagramTransformingFencedCodeBlock],
      extensionSet: markdown.ExtensionSet.gitHubWeb);
}   

final String markdownSource = r'''
# Example mermaid diagram

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
''';

 
~~~
