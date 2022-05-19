// Copyright (c) 2022, Tim Maffett.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
library kroki;

import 'dart:convert';

import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

/// `KrokiDiagramEndpoints`
/// Contains a list [supportedEndpoints] and constants for all
/// Kroki diagram endpoints.
///
/// Support Diagram Types by Endpoint Name and links to homepages.
/// `BlockDiag️`    https://github.com/blockdiag/blockdiag
/// `BPMN`        https://github.com/bpmn-io/bpmn-js
/// `Bytefield️`      https://github.com/Deep-Symmetry/bytefield-svg/
/// `SeqDiag️`      https://github.com/blockdiag/seqdiag
/// `ActDiag️`      https://github.com/blockdiag/actdiag
/// `NwDiag️`        https://github.com/blockdiag/nwdiag
/// `PacketDiag️`      https://github.com/blockdiag/nwdiag
/// `RackDiag️`          https://github.com/blockdiag/nwdiag
/// `C4 with PlantUML`   https://github.com/RicardoNiepel/C4-PlantUML
/// `Ditaa️`         http://ditaa.sourceforge.net
/// `Erd️`           https://github.com/BurntSushi/erd
/// `Excalidraw️`    https://github.com/excalidraw/excalidraw
/// `GraphViz`      https://www.graphviz.org/
/// `Mermaid`       https://github.com/knsv/mermaid
/// `Nomnoml`       https://github.com/skanaar/nomnoml
/// `Pikchr️`        https://github.com/drhsqlite/pikchr
/// `PlantUML`      https://github.com/plantuml/plantuml
/// `Structurizr`    https://github.com/structurizr/dsl
/// `Svgbob`        https://github.com/ivanceras/svgbob
/// `UMlet`         https://github.com/umlet/umlet
/// `Vega️`          https://github.com/vega/vega
/// `Vega-Lite️`     https://github.com/vega/vega-lite
/// `WaveDrom`       https://github.com/wavedrom/wavedrom
///
class KrokiDiagramEndpoints {
  static const String blockdiag = 'blockdiag';
  static const String seqdiag = 'seqdiag';
  static const String actdiag = 'actdiag';
  static const String nwdiag = 'nwdiag';
  static const String packetdiag = 'packetdiag';
  static const String rackdiag = 'rackdiag';
  static const String vega = 'vega';
  static const String vegalite = 'vegalite';
  static const String excalidraw = 'excalidraw';
  static const String bpmn = 'bpmn';
  static const String ditaa = 'ditaa';
  static const String erd = 'erd';
  static const String pikchr = 'pikchr';
  static const String plantuml = 'plantuml';
  static const String graphviz = 'graphviz';
  static const String bytefield = 'bytefield';
  static const String wavedrom = 'wavedrom';
  static const String c4plantuml = 'c4plantuml';
  static const String svgbob = 'svgbob';
  static const String mermaid = 'mermaid';
  static const String nomnoml = 'nomnoml';
  static const String structurizr = 'structurizr';
  static const String umlet = 'umlet';
  static const String dot = 'dot';
  static const String diagramsDotNet = 'diagramsnet';

  static const List<String> supportedEndpoints = [
    blockdiag,
    seqdiag,   //
    actdiag,   //
    nwdiag,    // these all other types for `blockdiag` 
    packetdiag,//
    rackdiag,  //
    vega,
    vegalite,
    excalidraw,
    bpmn,
    ditaa,
    erd,
    pikchr,
    plantuml,
    graphviz,
    dot,   // alternate for `graphviz`
    bytefield,
    wavedrom,
    c4plantuml,
    svgbob,
    mermaid,
    nomnoml,
    structurizr,
    umlet,
    diagramsDotNet,  // endpoint not on public kroki.io site as of 5/19/22
  ];
}

/// The [Kroki] class provides the [convertDiagram] method which will
/// package up the diagram source contained within the [diagramSource]
/// parameter and send it to the Kroki webservice endpoint corresponding
/// to the [diagramType] parameter.
/// It returns a future which will become the SVG for the converted diagram
/// once the future is completed.
/// If the specified [diagramType] is not supported or if an error occurs at
/// the endpoint then a text error message will be returned.
class Kroki {
  final http.Client _client;

  /// Base URI for the kroki endpoint that will be used to convert the
  /// diagram source.  Defaults to the public Kroki web service, however
  /// this parameter allows the use of alternate, or in house installations
  /// of the Kroki web service.
  String krokiApiUrl;

  /// Defaults to false, will cache all diagram request results so that we don't
  /// ask endpoint to keep converting an unchanged file. SIMPLE caching, need
  /// to use redis for real world use.  This is used for live editing markdown
  /// example, etc. - where we repeatedly convert the all diagrams regardless when
  /// markdown changes.
  bool cacheRequests;

  /// Rudimentary cache to prevent hammering kroki.io with same requests,
  /// replace with Redis for real world use.
  Map<String, String> cache = {};

  Kroki({
    http.Client? client,
    this.krokiApiUrl = 'https://kroki.io/',
    this.cacheRequests = false,
  }) : _client = client ?? http.Client();

  String? _getEndpointFromDiagramType(String diagramType) {
    diagramType = diagramType.toLowerCase();
    if (KrokiDiagramEndpoints.supportedEndpoints
        .contains(diagramType)) {
      return diagramType;
    }
    return null;
  }

  Future<String> convertDiagram(
      String diagramType, String diagramSource) async {
    final String? endpoint = _getEndpointFromDiagramType(diagramType);
    if (endpoint == null)
      return 'Unsupported Kroki Diagram Endpoint "$diagramType"';

    final String md5 = cacheRequests ? generateMd5(diagramSource) : '';
    if (cacheRequests && cache.containsKey(md5)) {
      return cache[md5]!;
    }

    final stringBytes = utf8.encode(diagramSource);
    final gzipBytes = ZLibEncoder().encode(stringBytes, level: 9);
    final compressedString = base64Url.encode(gzipBytes);

    final theuri = Uri.parse('$krokiApiUrl/$endpoint/svg/$compressedString');

    return await _client.get(theuri).then((http.Response response) {
      if (response.statusCode == 404) {
        return 'ERROR - Kroki returned status code 404 contentNotFound for endpoint $diagramType';
      } else if (response.statusCode == 403) {
        return 'ERROR - Kroki returned status code 403 rateLimitExceeded for endpoint $diagramType';
      } else if (response.statusCode != 200) {
        return 'ERROR - Kroki returned status code ${response.statusCode} error unknown for endpoint $diagramType';
      }
      if (cacheRequests) {
        cache[md5] = response.body;
      }
      return response.body;
    });
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
