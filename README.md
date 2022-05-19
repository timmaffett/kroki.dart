# Kroki.dart

This is a simple class to package up and send requests to the [Kroki.io](https://kroki.io) web service.

A live editor to editing diagrams that Kroki supports can be found at [niolesk.top](https://niolesk.top/#https://kroki.io/mermaid/svg/eNpNzr0OgjAcBPCdp7hRB-QNNHz4MTipG2EopWkbsH9SWwyK725hMM6_u8tJy3qFWxEBaYnUjGQEKsTxdsqZgRJdjwnZCkeCI0jtlK83nO7J6F_eCa6S1lKrsQ4L2dxD_saJnnOak3FW1yG2wyd4vnhR4iJ6sk4bidrLB6qf7UucaRC4KmZn1o1g_34IH5uBOFvKVfQFDfY57w==)

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

  DiagramTransfomer() {
    handledCodeBlockTypes = KrokiDiagramEndpoints.supportedEndpoints;
  }
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
