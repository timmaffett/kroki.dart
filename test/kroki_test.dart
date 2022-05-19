import 'package:kroki/kroki.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    //final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      //expect(awesome.isAwesome, isTrue);
    });
  });
}

/*
logo
Creates diagrams from textual descriptions!
Kroki provides a unified API with support for BlockDiag (BlockDiag, SeqDiag, ActDiag, NwDiag, PacketDiag, RackDiag), BPMN, Bytefield, C4 (with PlantUML), Ditaa, Erd, Excalidraw, GraphViz, Mermaid, Nomnoml, Pikchr, PlantUML, Structurizr, SvgBob, UMLet, Vega, Vega-Lite, WaveDrom... and more to come!

Examples#
Here's a list of example to get you inspired.

DIAGRAM

Block diagram BlockDiag
Sequence diagram SeqDiag
Sequence diagram Mermaid
Activity diagram ActDiag
Network diagram NwDiag
Packet diagram PacketDiag
Rack diagram RackDiag
Entity Relationship Diagram Erd
UML diagram Nomnoml
Use case diagram PlantUML
Work Breakdown Structure PlantUML
Mind Map PlantUML
State machine UMlet
Digital Timing diagram (waveform) WaveDrom
BPMN BPMN
Bytefield Bytefield
Gantt diagram Mermaid
Syntax diagram Pikchr
GRAPH

Object Oriented Graph GraphViz
Commit Graph Pikchr
C4

Context diagram PlantUML
Container diagram PlantUML
Container diagram Structurizr
Component diagram PlantUML
VISUALIZATION

Word Cloud Vega
Diverging Stacked Bar Chart Vega-Lite
DRAWING

Conjugate prior relationships Ditaa
Connected servers SvgBob
Ascii Art SvgBob
Impossible trident Pikchr

*/
class KrokiExample {
  final String name;
  final String shortname;
  final String exampleSource;
  final String exampleUri;
  final String endPoint;
  KrokiExample(this.name, this.shortname, this.exampleSource, this.exampleUri, this.endPoint); 
}

class  KrokiTest {



  void makeTest() {
    List<KrokiExample> test = [

  
KrokiExample(
'Block diagram',
'BlockDiag',
r'''blockdiag {
  blockdiag -> generates -> "block-diagrams";
  blockdiag -> is -> "very easy!";

  blockdiag [color = "greenyellow"];
  "block-diagrams" [color = "pink"];
  "very easy!" [color = "orange"];
}
''',
'GET https://kroki.io/blockdiag/svg/eNpdzEEKgzAQheF9TjFm7wmKXkRcTO0jBGNGJqUllN5dowuDy8f_8cwzyDS_PDv6GbpG25NDhPIbqQx7pLY05SXZxw37U32gmcApN7uoyTBJEKWOrFMgZoQgXzvuN_fniq4-zqepfqsuytGhiL_ZAMihQIU=',
'blockdiag' ),

KrokiExample(
'Sequence diagram',
'SeqDiag',
r'''seqdiag {
  browser  -> webserver [label = "GET /index.html"];
  browser <-- webserver;
  browser  -> webserver [label = "POST /blog/comment"];
  webserver  -> database [label = "INSERT comment"];
  webserver <-- database;
  browser <-- webserver;
}''',
'GET https://kroki.io/seqdiag/svg/eNorTi1MyUxMV6jmUlBIKsovL04tUtC1UyhPTQKyyoCc6JzEpNQcBVsFJXfXEAX9zLyU1Aq9jJLcHKVYayQ9Nrq6CE3WhA0L8A8GmpaUk5-un5yfm5uaVwIxD6EWqDElsSQxKbE4FUmfp1-wa1CIAg49IFfANOFxXS0A68hQUg==',
'seqdiag'),

KrokiExample(
'Activity diagram',
'ActDiag',
r'''actdiag {
  write -> convert -> image

  lane user {
    label = "User"
    write [label = "Writing reST"];
    image [label = "Get diagram IMAGE"];
  }
  lane actdiag {
    convert [label = "Convert reST to Image"];
  }
}''',
'GET https://kroki.io/actdiag/svg/eNrjquZSUCgvyixJVdC1U0jOzytLLSoBMTNzE9NTuYCSOYl5qQqlxalFCiClCiCBpNQcBVsFpVCgoBJEDGJCNFwqHMjPzEtXKEoNDlGKtYYoAhuJpMg9tUQhJTMxvSgxV8HT19HdFaKyFmZpYnIJSBpmL8xxCAOcoSIgWxRK8hU8QRbADKnlAgCssECm',
'actdiag' ),

KrokiExample(
'Network diagram',
'NwDiag',
r'''nwdiag {
  network dmz {
    address = "210.x.x.x/24"

    web01 [address = "210.x.x.1"];
    web02 [address = "210.x.x.2"];
  }
  network internal {
    address = "172.x.x.x/24";

    web01 [address = "172.x.x.1"];
    web02 [address = "172.x.x.2"];
    db01;
    db02;
  }
}''',
'GET https://kroki.io/nwdiag/svg/eNrjyitPyUxMV6jmUlDISy0pzy_KVkjJrQLzQSAxJaUotbhYwVZBycjQQK8CBPWNTJS4oPLlqUkGhgrRWJQZKsVaIykywqrICKKoFsn2zLyS1KK8xBxsTjA0N0I4wRq3G2Dq8LoBpsgIoSgFaBAS2wjitlouAESTS2A=',
'nwdiag'),

KrokiExample(
'Packet diagram',
'PacketDiag',
r'''packetdiag {
  colwidth = 32;
  node_height = 72;

  0-15: Source Port;
  16-31: Destination Port;
  32-63: Sequence Number;
  64-95: Acknowledgment Number;
  96-99: Data Offset;
  100-105: Reserved;
  106: URG [rotate = 270];
  107: ACK [rotate = 270];
  108: PSH [rotate = 270];
  109: RST [rotate = 270];
  110: SYN [rotate = 270];
  111: FIN [rotate = 270];
  112-127: Window;
  128-143: Checksum;
  144-159: Urgent Pointer;
  160-191: (Options and Padding);
  192-223: data [colheight = 3];
}''',
'GET https://kroki.io/packetdiag/svg/eNptkU9Pg0AQxe9-ijnqYRN2QSgYD6bGPzFpCW1jTGPMyk5hQ9mtsMjB-N0dIGk8cH2_mXkzb04yr9ApLQv4uQDI7bHXypVwC764IcFYhR8l6qJ0pEWkkegxfp3AxnZNjpDaxg2VPGQ-T-AeW6eNdNqaM_IFC31qwK8ODbWsuvoTm4GEAYtp1F1eGdsfURU1GvePxyGLYxoqnYT14dDiZOXRBh71Zdhi841qEsMEdtkj7BvrpENaV0Te-4Qi8li-zKJFAunmaRaRc7bZziHu0Tlvq1lEITw8zyPBuKBVXrVRth8lsWA8oGyWJeZV29WjGAQUMJnvmmKII7XauCkPHtLlMTlcrk9DxC1IoyCVSmlTXI0VsWBC0EQ1ZLanh56_59MWv39OCoi9',
'packetdiag'),

KrokiExample(
'Rack diagram',
'RackDiag',
r'''rackdiag {
  16U;
  1: UPS [2U];
  3: DB Server;
  4: Web Server;
  5: Web Server;
  6: Web Server;
  7: Load Balancer;
  8: L3 Switch;
}''',
'GET https://kroki.io/rackdiag/svg/eNorSkzOTslMTFeo5lJQMDQLtQZRVgqhAcEK0UahsSCusZWCi5NCcGpRWWoRiG9ipRCemoQkYIouYIYuYG6l4JOfmKLglJiTmJcMEbMAihkrBJdnliRnWHPVAgDhXSWB',
'rackdiag'),

KrokiExample(
'Object Oriented Graph',
'GraphViz',
r'''digraph "unix" {
  graph [ fontname = "Helvetica-Oblique",
          fontsize = 36,
          label = "\n\n\n\nObject Oriented Graphs\nStephen North, 3/19/93",
          size = "6,6" ];
  node [ shape = polygon,
         sides = 4,
         distortion = "0.0",
         orientation = "0.0",
         skew = "0.0",
         color = white,
         style = filled,
         fontname = "Helvetica-Outline" ];
  "5th Edition" [sides=9, distortion="0.936354", orientation=28, skew="-0.126818", color=salmon2];
  "6th Edition" [sides=5, distortion="0.238792", orientation=11, skew="0.995935", color=deepskyblue];
  "PWB 1.0" [sides=8, distortion="0.019636", orientation=79, skew="-0.440424", color=goldenrod2];
  LSX [sides=9, distortion="-0.698271", orientation=22, skew="-0.195492", color=burlywood2];
  "1 BSD" [sides=7, distortion="0.265084", orientation=26, skew="0.403659", color=gold1];
  "Mini Unix" [distortion="0.039386", orientation=2, skew="-0.461120", color=greenyellow];
  Wollongong [sides=5, distortion="0.228564", orientation=63, skew="-0.062846", color=darkseagreen];
  Interdata [distortion="0.624013", orientation=56, skew="0.101396", color=dodgerblue1];
  "Unix/TS 3.0" [sides=8, distortion="0.731383", orientation=43, skew="-0.824612", color=thistle2];
  "PWB 2.0" [sides=6, distortion="0.592100", orientation=34, skew="-0.719269", color=darkolivegreen3];
  "7th Edition" [sides=10, distortion="0.298417", orientation=65, skew="0.310367", color=chocolate];
  "8th Edition" [distortion="-0.997093", orientation=50, skew="-0.061117", color=turquoise3];
  "32V" [sides=7, distortion="0.878516", orientation=19, skew="0.592905", color=steelblue3];
  V7M [sides=10, distortion="-0.960249", orientation=32, skew="0.460424", color=navy];
  "Ultrix-11" [sides=10, distortion="-0.633186", orientation=10, skew="0.333125", color=darkseagreen4];
  Xenix [sides=8, distortion="-0.337997", orientation=52, skew="-0.760726", color=coral];
  "UniPlus+" [sides=7, distortion="0.788483", orientation=39, skew="-0.526284", color=darkolivegreen3];
  "9th Edition" [sides=7, distortion="0.138690", orientation=55, skew="0.554049", color=coral3];
  "2 BSD" [sides=7, distortion="-0.010661", orientation=84, skew="0.179249", color=blanchedalmond];
  "2.8 BSD" [distortion="-0.239422", orientation=44, skew="0.053841", color=lightskyblue1];
  "2.9 BSD" [distortion="-0.843381", orientation=70, skew="-0.601395", color=aquamarine2];
  "3 BSD" [sides=10, distortion="0.251820", orientation=18, skew="-0.530618", color=lemonchiffon];
  "4 BSD" [sides=5, distortion="-0.772300", orientation=24, skew="-0.028475", color=darkorange1];
  "4.1 BSD" [distortion="-0.226170", orientation=38, skew="0.504053", color=lightyellow1];
  "4.2 BSD" [sides=10, distortion="-0.807349", orientation=50, skew="-0.908842", color=darkorchid4];
  "4.3 BSD" [sides=10, distortion="-0.030619", orientation=76, skew="0.985021", color=lemonchiffon2];
  "Ultrix-32" [distortion="-0.644209", orientation=21, skew="0.307836", color=goldenrod3];
  "PWB 1.2" [sides=7, distortion="0.640971", orientation=84, skew="-0.768455", color=cyan];
  "USG 1.0" [distortion="0.758942", orientation=42, skew="0.039886", color=blue];
  "CB Unix 1" [sides=9, distortion="-0.348692", orientation=42, skew="0.767058", color=firebrick];
  "USG 2.0" [distortion="0.748625", orientation=74, skew="-0.647656", color=chartreuse4];
  "CB Unix 2" [sides=10, distortion="0.851818", orientation=32, skew="-0.020120", color=greenyellow];
  "CB Unix 3" [sides=10, distortion="0.992237", orientation=29, skew="0.256102", color=bisque4];
  "Unix/TS++" [sides=6, distortion="0.545461", orientation=16, skew="0.313589", color=mistyrose2];
  "PDP-11 Sys V" [sides=9, distortion="-0.267769", orientation=40, skew="0.271226", color=cadetblue1];
  "USG 3.0" [distortion="-0.848455", orientation=44, skew="0.267152", color=bisque2];
  "Unix/TS 1.0" [distortion="0.305594", orientation=75, skew="0.070516", color=orangered];
  "TS 4.0" [sides=10, distortion="-0.641701", orientation=50, skew="-0.952502", color=crimson];
  "System V.0" [sides=9, distortion="0.021556", orientation=26, skew="-0.729938", color=darkorange1];
  "System V.2" [sides=6, distortion="0.985153", orientation=33, skew="-0.399752", color=darkolivegreen4];
  "System V.3" [sides=7, distortion="-0.687574", orientation=58, skew="-0.180116", color=lightsteelblue1];
  "5th Edition" -> "6th Edition";
  "5th Edition" -> "PWB 1.0";
  "6th Edition" -> LSX;
  "6th Edition" -> "1 BSD";
  "6th Edition" -> "Mini Unix";
  "6th Edition" -> Wollongong;
  "6th Edition" -> Interdata;
  Interdata -> "Unix/TS 3.0";
  Interdata -> "PWB 2.0";
  Interdata -> "7th Edition";
  "7th Edition" -> "8th Edition";
  "7th Edition" -> "32V";
  "7th Edition" -> V7M;
  "7th Edition" -> "Ultrix-11";
  "7th Edition" -> Xenix;
  "7th Edition" -> "UniPlus+";
  V7M -> "Ultrix-11";
  "8th Edition" -> "9th Edition";
  "1 BSD" -> "2 BSD";
  "2 BSD" -> "2.8 BSD";
  "2.8 BSD" -> "Ultrix-11";
  "2.8 BSD" -> "2.9 BSD";
  "32V" -> "3 BSD";
  "3 BSD" -> "4 BSD";
  "4 BSD" -> "4.1 BSD";
  "4.1 BSD" -> "4.2 BSD";
  "4.1 BSD" -> "2.8 BSD";
  "4.1 BSD" -> "8th Edition";
  "4.2 BSD" -> "4.3 BSD";
  "4.2 BSD" -> "Ultrix-32";
  "PWB 1.0" -> "PWB 1.2";
  "PWB 1.0" -> "USG 1.0";
  "PWB 1.2" -> "PWB 2.0";
  "USG 1.0" -> "CB Unix 1";
  "USG 1.0" -> "USG 2.0";
  "CB Unix 1" -> "CB Unix 2";
  "CB Unix 2" -> "CB Unix 3";
  "CB Unix 3" -> "Unix/TS++";
  "CB Unix 3" -> "PDP-11 Sys V";
  "USG 2.0" -> "USG 3.0";
  "USG 3.0" -> "Unix/TS 3.0";
  "PWB 2.0" -> "Unix/TS 3.0";
  "Unix/TS 1.0" -> "Unix/TS 3.0";
  "Unix/TS 3.0" -> "TS 4.0";
  "Unix/TS++" -> "TS 4.0";
  "CB Unix 3" -> "TS 4.0";
  "TS 4.0" -> "System V.0";
  "System V.0" -> "System V.2";
  "System V.2" -> "System V.3";
}''',
'GET https://kroki.io/graphviz/svg/eNqFWEtv3DYQvvtXCLr6EXL4RuEe0hRpgbYJ4MYJEPQgr2ivallyJG2cbdH_3tGbpKSNTzaHmhl-8_rGZ2n2UCXP-yg-FNm3OPr3LIr6g89RdF8WTZE82eg6in-x-VfbZLvk8t1dnn052PgCr_Z36uyf9g6T_VGe3Nm8_eYMf97d_W13TfSuymzR2DR62yqvz24a-7y3RfRHWTX7i4i9ouaVYYPOQV8sL2Qc_fUDnhVlaluP6n3y3Iqey_z4UBbj9dTWeMj7P9OsblBrVhatDnJFBq1l50KyFNSP9sU_2ZV5WeHRyz5r7HCpOeat5fssz206v30Fn0OTZ4UdPI9Fs49-TrPWbBx97ny9NheOl9do2DDJBI8vXCevQV90vl3Hl-SKgtRU443Ot-s6yZ_KAnoTcsWECE0A08pAYILS0QT6YIRhYrKQWvtcPx7v8oPtrbz_-DqiCNFoQYcWCDWSycCCMs4jOCcc-GTiocxTW1Rl2r_jt5tPGwDhp9JoUDRECFyEjODdA3vld4cqP76Uo_KYRq9v3kzOqwU8UhC9iICc4eGESWE832mv-fesyKIPXfl8DhBhhukQEddnLikFMiutrC2ONs_Ll071xxJ_LTDRH7bDClrI0G_JHBtEguZyjmtSPdY26Ux1Rn7FuqzSpElC7yVwQlmgWjiQUBQbR3OZPtiqTZgBmBaTV3_eROxU1ihGmQ6tcPcBGhCmObDNHr_PLcxZCY5-GeoXBighgX7GHf2KGpDGA6jMs6-2g4j1ZtRKiVGyCIbRnKowGGJGjFHMIjWZ2u1L_CVphgrTnpGgAIxRxCyiQbxAU0pn5c2h-nIos9oOT2Bwu53-WmlBw0ylZvYcYTRk7g51Y23ehrpXfqt-30KldV0S4CYMATi1Jb2-UCRfj0MG5U2VfbukND6hXjJGF1VGiYM6XgCxWgG8s_PJYqZuZOhl-71C9EPo3TpWkiiYK2FXVkk-1cD7_FCfb0OvtOaLAmBu2xTQlvDpBDUrCbowhZUmTVgLwslPIbBDG_8dgwE41T_b7KNEyrBBa-50Cxw_ju67PCl2e5t2gywdbFzpwUqgHJjhEA4v7igngmHpTcrz7GHfDNOLjrrNum7NGdOh48otLNn2uTl_ki-H5CmpcMYPPYh50Ky0BUE1hLBTd7oLhsU7T_fcIia7fXaPDKM3wT0TYoG-UsAWXQ7cLkcwhZRfBBjd4mHEh1_RDexBUrVooNpJGsIRfh_7fohNquEkQm0QiGKLFuF1N0OwTiDwHzFK-WiEfc8IaVEOjShnoBktCNDVMIDXkBgscZKcAwm1g0OwGFGaySX7YS6_gu3qlZwYtV1hXRvSXMwx3h2TIX0-3LwduFvQe4Q2fFFXTmdGBqO1dIp2ZIM_ve4oT0Tjbc7GOLabU9qVVETMaX-fVfauynaPs9Ow5jSq7dq5F0YXB8mVFE473idVU9lDbbnvPJwoWpyHPeFeH1pdRZFT5G2ywk5YMQaAhaMFnLkLQlLisNqsxt2Le_zq_PwE--GCL7oylS4jYZgDk_4n_PpYlfVEr968x-kb3Rzr6PZEpEEqJcPc584IRu4O7oBMUtu4TBFDzRah7przkNFbjR8tUxHiAz7_XMt8RoQwIW9WzigkmJp09rjvlZUdJhVq5Q7rXGMlyAQJPdnRBAgntLsqe6rHfo-AN_YpunVsLJZGbFVCyM2Vpe0HYHAB2e75kxXYziDsiVQs6InLzxmSIwEb9IQHltgJCiG1EiqMifC2YE2oE5R-zI9UlK4s3Jc_-uvx-o1xtV1u0yjFtXT1fNgo12XzTrgqnxe7VfG0kvn7WavY3amW0nEbWkpUCIIKXdbfvdFuEKsSpP_rX8z8fVXe8e6NL0fePK4XK-p0-JEJnzBQmlYGc7TAOR0Yp08_V2x5spFLzntVB49zNt_l8yl3Tq-c7JmoVy-BDYnnqydZhG5iXL1G5n4Hizcim_H_wzPXxJpkJBM-awnTb-YcrWSmC0vZOOdDXuF-B3E4uF0pi8OB65TK-fmq1JtsPt8YnWLuU9gkCSpw_hfEqtQbQidvTBaG4RLO-FAUPMgVjeOpPXdGyWK0eHKIF0PBk7co_3f2P7OJU2Y=',
'graphvis'),

KrokiExample(
  'Commit Graph',
'Pikchr',
r'''scale = 0.8
fill = white
linewid *= 0.5
circle "C0" fit
circlerad = previous.radius
arrow
circle "C1"
arrow
circle "C2"
arrow
circle "C4"
arrow
circle "C6"
circle "C3" at dist(C2,C4) heading 30 from C2
arrow
circle "C5"
arrow from C2 to C3 chop
C3P: circle "C3'" at dist(C4,C6) heading 30 from C6
arrow right from C3P.e
C5P: circle "C5'"
arrow from C6 to C3P chop

box height C3.y-C2.y \
    width (C5P.e.x-C0.w.x)+linewid \
    with .w at 0.5*linewid west of C0.w \
    behind C0 \
    fill 0xc6e2ff thin color gray
box same width previous.e.x - C2.w.x \
    with .se at previous.ne \
    fill 0x9accfc
"trunk" below at 2nd last box.s
"feature branch" above at last box.n

circle "C0" at 3.7cm south of C0
arrow
circle "C1"
arrow
circle "C2"
arrow
circle "C4"
arrow
circle "C6"
circle "C3" at dist(C2,C4) heading 30 from C2
arrow
circle "C5"
arrow
circle "C7"
arrow from C2 to C3 chop
arrow from C6 to C7 chop

box height C3.y-C2.y \
    width (C7.e.x-C0.w.x)+1.5*C1.radius \
    with .w at 0.5*linewid west of C0.w \
    behind C0 \
    fill 0xc6e2ff thin color gray
box same width previous.e.x - C2.w.x \
    with .se at previous.ne \
    fill 0x9accfc
"trunk" below at 2nd last box.s
"feature branch" above at last box.n
''',
'GET https://kroki.io/pikchr/svg/eNrlU8tygjAU3ecr7rBRW80gCLSd6So_4Ad0E2KQTJE4SRD8-14QRLTT6bIzZZX7Ouck92AFLyS8g09fSKaKAo91rpwkhSplrXbw1NYiIpQR2Ogx34NMuT42fIcDRyNPSleWYqgqS7gxuh4n1t59JnjIbB4ysTeeQw-4g52ybs6CJdssIJdIVe4h9CEz-gAsuJ-PesShDk4DC0Hk-khYuH2DEX12A79Zsvgb-LgHM2qfuz4XbqkkLLqFimZT1vjCur3QklQ3CN1BsJCeVyygZ_gggB8-tcthjnBU0mbFfFrTZvE8bGFowh5at2pxJ09DsZbWgc6gHeo7U5mrcoeZPu5W6zcilkGWgcMiCF1oA3vDz50uyw-yV3HdJyqBFb5dq2UiwcpWw7WvlFOaVy5EJojnTFV-eiim0J3oACUVHMUiIbXEyyR3lZGQGl6KHLeQ6lOHfG0qycR5WAppIg5gdYU6ujv_LbuNmeQHAz56JPm9RZKJQ9ZoBLbuf73_65MvEC93wQ==',
'pikchr'),

KrokiExample(
'Entity Relationship Diagram',
'Erd',
r'''[Person]
*name
height
weight
+birth_location_id

[Location]
*id
city
state
country

Person *--1 Location
GET https://kroki.io/erd/svg/eNrjig5ILSrOz4vl0spLzE3lykjNTM8o4SqHUNpJmUUlGfE5-cmJJZn5efGZKVxc0T5QHlALkJ-cWVLJVVySWJLKlZxfmldSVMnFBTFSQUtX11ABppoLAK1IJCs=
Person
name
height
weight
birth_location_id
Location
id
city
state
country
1
0..N
Hand-drawn like diagrams#
Excalidraw
{
  "type": "excalidraw",
  "version": 2,
  "source": "https://excalidraw.com",
  "elements": [
    {
      "type": "rectangle",
      "version": 175,
      "versionNonce": 279344008,
      "isDeleted": false,
      "id": "2ZYh24ed28FJ0yE-S3YNY",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 580,
      "y": 140,
      "strokeColor": "#000000",
      "backgroundColor": "#15aabf",
      "width": 80,
      "height": 19.999999999999996,
      "seed": 521916552,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "Be1y2yzhV3Zd4nwCro__8"
      ]
    },
    {
      "type": "rectangle",
      "version": 180,
      "versionNonce": 164784376,
      "isDeleted": false,
      "id": "bO0OVt6m7LowYpq22ePCA",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 660,
      "y": 140,
      "strokeColor": "#000000",
      "backgroundColor": "#4c6ef5",
      "width": 120,
      "height": 19.999999999999996,
      "seed": 1303206904,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "KaCO9-QjUenSyCuuanoTo"
      ]
    },
    {
      "type": "rectangle",
      "version": 183,
      "versionNonce": 27181704,
      "isDeleted": false,
      "id": "jz0Huq9-s6pNxDw0RqHcR",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 780,
      "y": 140,
      "strokeColor": "#000000",
      "backgroundColor": "#fab005",
      "width": 180,
      "height": 19.999999999999996,
      "seed": 861962120,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "74ifmqmu0vN0NK0_0FwPm"
      ]
    },
    {
      "type": "rectangle",
      "version": 192,
      "versionNonce": 2123008504,
      "isDeleted": false,
      "id": "UnmNTmwJtm6moubcGtSgB",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 960,
      "y": 140,
      "strokeColor": "#000000",
      "backgroundColor": "#fa5252",
      "width": 80,
      "height": 19.999999999999996,
      "seed": 277814520,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "1v60NED2criGG-wo9-oQL"
      ]
    },
    {
      "type": "rectangle",
      "version": 202,
      "versionNonce": 1823814024,
      "isDeleted": false,
      "id": "of76J4WOJHnHi0L61Vst_",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 1040,
      "y": 140,
      "strokeColor": "#000000",
      "backgroundColor": "#be4bdb",
      "width": 180,
      "height": 19.999999999999996,
      "seed": 1496796808,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "jjuPzyRneMv3f65lps_6a"
      ]
    },
    {
      "type": "rectangle",
      "version": 193,
      "versionNonce": 1234602744,
      "isDeleted": false,
      "id": "SlvbjeV-9lXbcrlKib-hj",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 1220,
      "y": 140,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 60,
      "height": 19.999999999999996,
      "seed": 1938865656,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "5QQzhw_uqk_rBaW2wMriT"
      ]
    },
    {
      "type": "text",
      "version": 81,
      "versionNonce": 1188901129,
      "isDeleted": false,
      "id": "vrdt3JfbD2Xwz4K4TWScI",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 840,
      "y": -60,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 190,
      "height": 45,
      "seed": 1499217288,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "JavaScript",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    },
    {
      "type": "arrow",
      "version": 343,
      "versionNonce": 1369065096,
      "isDeleted": false,
      "id": "Be1y2yzhV3Zd4nwCro__8",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 597.5075333823274,
      "y": 299,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 40,
      "height": 139,
      "seed": 666255096,
      "groupIds": [],
      "strokeSharpness": "round",
      "boundElementIds": [],
      "startBinding": {
        "focus": -0.41953339688473495,
        "gap": 1,
        "elementId": "UxgtvUBaIPnDWJZ9kUQH8"
      },
      "endBinding": {
        "focus": -0.11111111111111113,
        "gap": 1,
        "elementId": "2ZYh24ed28FJ0yE-S3YNY"
      },
      "points": [
        [
          0,
          0
        ],
        [
          -17.507533382327438,
          -59
        ],
        [
          22.492466617672562,
          -139
        ]
      ],
      "lastCommittedPoint": null,
      "startArrowhead": null,
      "endArrowhead": "arrow"
    },
    {
      "type": "text",
      "version": 81,
      "versionNonce": 690339976,
      "isDeleted": false,
      "id": "UxgtvUBaIPnDWJZ9kUQH8",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 580,
      "y": 300,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 94,
      "height": 45,
      "seed": 84626568,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "Be1y2yzhV3Zd4nwCro__8"
      ],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "Fetch",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    },
    {
      "type": "rectangle",
      "version": 60,
      "versionNonce": 897215480,
      "isDeleted": false,
      "id": "-Lq0agjWQ31TR_Av5Z4HW",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 520,
      "y": -60,
      "strokeColor": "#000000",
      "backgroundColor": "transparent",
      "width": 820,
      "height": 540,
      "seed": 495165432,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "jjuPzyRneMv3f65lps_6a"
      ]
    },
    {
      "type": "arrow",
      "version": 537,
      "versionNonce": 1626949112,
      "isDeleted": false,
      "id": "KaCO9-QjUenSyCuuanoTo",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 721.0588599991052,
      "y": 60.17790458606555,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 1.0588599991051524,
      "height": 79.82209541393445,
      "seed": 637565832,
      "groupIds": [],
      "strokeSharpness": "round",
      "boundElementIds": [],
      "startBinding": null,
      "endBinding": {
        "focus": 0,
        "gap": 1,
        "elementId": "bO0OVt6m7LowYpq22ePCA"
      },
      "points": [
        [
          0,
          0
        ],
        [
          -1.0588599991051524,
          39.82209541393445
        ],
        [
          -1.0588599991051524,
          79.82209541393445
        ]
      ],
      "lastCommittedPoint": null,
      "startArrowhead": null,
      "endArrowhead": "arrow"
    },
    {
      "type": "text",
      "version": 112,
      "versionNonce": 358083143,
      "isDeleted": false,
      "id": "4hEOdlcwK6AHyVhjc-MXS",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 660,
      "y": 20,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 103,
      "height": 45,
      "seed": 352116984,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "Parse",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    },
    {
      "type": "arrow",
      "version": 534,
      "versionNonce": 983577992,
      "isDeleted": false,
      "id": "74ifmqmu0vN0NK0_0FwPm",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 841.6574209245741,
      "y": 219,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 43.15128973100309,
      "height": 59.174989629909305,
      "seed": 1853344392,
      "groupIds": [],
      "strokeSharpness": "round",
      "boundElementIds": [],
      "startBinding": {
        "focus": 0.09211398277003865,
        "gap": 1,
        "elementId": "K4so-arfr0JX0NJx8vd7T"
      },
      "endBinding": {
        "focus": -0.2163077865936296,
        "gap": 1,
        "elementId": "jz0Huq9-s6pNxDw0RqHcR"
      },
      "points": [
        [
          0,
          0
        ],
        [
          -1.6574209245741258,
          1
        ],
        [
          41.493868806428964,
          -58.174989629909305
        ]
      ],
      "lastCommittedPoint": null,
      "startArrowhead": null,
      "endArrowhead": "arrow"
    },
    {
      "type": "text",
      "version": 118,
      "versionNonce": 1185705864,
      "isDeleted": false,
      "id": "K4so-arfr0JX0NJx8vd7T",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 640,
      "y": 220,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 366,
      "height": 45,
      "seed": 765854200,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "74ifmqmu0vN0NK0_0FwPm"
      ],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "Compile and Optimize",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    },
    {
      "type": "arrow",
      "version": 791,
      "versionNonce": 1724761848,
      "isDeleted": false,
      "id": "1v60NED2criGG-wo9-oQL",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 960,
      "y": 320,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 80,
      "height": 160,
      "seed": 1764571528,
      "groupIds": [],
      "strokeSharpness": "round",
      "boundElementIds": [],
      "startBinding": {
        "focus": -0.1637630662020906,
        "gap": 1,
        "elementId": "dviXudWNxiHYQMZfqHWsH"
      },
      "endBinding": {
        "focus": 0.07692307692307691,
        "gap": 1,
        "elementId": "UnmNTmwJtm6moubcGtSgB"
      },
      "points": [
        [
          0,
          0
        ],
        [
          80,
          -40
        ],
        [
          40,
          -160
        ]
      ],
      "lastCommittedPoint": null,
      "startArrowhead": null,
      "endArrowhead": "arrow"
    },
    {
      "type": "text",
      "version": 194,
      "versionNonce": 473574648,
      "isDeleted": false,
      "id": "dviXudWNxiHYQMZfqHWsH",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 720,
      "y": 320,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 484,
      "height": 45,
      "seed": 1988297464,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "1v60NED2criGG-wo9-oQL"
      ],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "Re-optimize and Deoptimize",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    },
    {
      "type": "arrow",
      "version": 708,
      "versionNonce": 185615496,
      "isDeleted": false,
      "id": "jjuPzyRneMv3f65lps_6a",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 1140,
      "y": 80,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 20,
      "height": 60,
      "seed": 1767688328,
      "groupIds": [],
      "strokeSharpness": "round",
      "boundElementIds": [],
      "startBinding": {
        "focus": -0.3021784319542362,
        "gap": 14.800415739789742,
        "elementId": "qhkjvI1VmWZdnKvU5QKZK"
      },
      "endBinding": {
        "focus": 0.15789473684210528,
        "gap": 1,
        "elementId": "of76J4WOJHnHi0L61Vst_"
      },
      "points": [
        [
          0,
          0
        ],
        [
          -20,
          20
        ],
        [
          0,
          60
        ]
      ],
      "lastCommittedPoint": null,
      "startArrowhead": null,
      "endArrowhead": "arrow"
    },
    {
      "type": "text",
      "version": 213,
      "versionNonce": 2105884296,
      "isDeleted": false,
      "id": "qhkjvI1VmWZdnKvU5QKZK",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 1080,
      "y": 20.19958426021026,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 139,
      "height": 45,
      "seed": 2115494904,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "jjuPzyRneMv3f65lps_6a"
      ],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "Execute",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    },
    {
      "type": "arrow",
      "version": 707,
      "versionNonce": 543827960,
      "isDeleted": false,
      "id": "5QQzhw_uqk_rBaW2wMriT",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 1220,
      "y": 240,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 20,
      "height": 80,
      "seed": 2059564936,
      "groupIds": [],
      "strokeSharpness": "round",
      "boundElementIds": [],
      "startBinding": {
        "focus": 0.7391304347826086,
        "gap": 2,
        "elementId": "C6fyzTg2FHAmrRYfC_THm"
      },
      "endBinding": {
        "focus": 0.3333333333333333,
        "gap": 1,
        "elementId": "SlvbjeV-9lXbcrlKib-hj"
      },
      "points": [
        [
          0,
          0
        ],
        [
          20,
          -40
        ],
        [
          20,
          -80
        ]
      ],
      "lastCommittedPoint": null,
      "startArrowhead": null,
      "endArrowhead": "arrow"
    },
    {
      "type": "text",
      "version": 227,
      "versionNonce": 2002374136,
      "isDeleted": false,
      "id": "C6fyzTg2FHAmrRYfC_THm",
      "fillStyle": "hachure",
      "strokeWidth": 1,
      "strokeStyle": "solid",
      "roughness": 1,
      "opacity": 100,
      "angle": 0,
      "x": 1160,
      "y": 220,
      "strokeColor": "#000000",
      "backgroundColor": "#868e96",
      "width": 58,
      "height": 45,
      "seed": 1651025144,
      "groupIds": [],
      "strokeSharpness": "sharp",
      "boundElementIds": [
        "5QQzhw_uqk_rBaW2wMriT"
      ],
      "fontSize": 36,
      "fontFamily": 1,
      "text": "GC",
      "baseline": 32,
      "textAlign": "left",
      "verticalAlign": "top"
    }
  ],
  "appState": {
    "viewBackgroundColor": "#ffffff",
    "gridSize": 20
  }
}''',
'GET https://kroki.io/excalidraw/svg/eNrVm1tT4koXhu_nV1h8twO7z4e58zioM3hARd01ZQUSIBoSTAKIU_Pfv05kk4OJBiVjjFVi0t3pTudhvWutbn9_2dio-fOxUfu2UTMeeppl6q42q30Nrk8N1zMdWxWh8NxzJm4vrDn0_bH37Z9_ohaNnjN6amVYxsiwfU_V-1edb2z8Dn_H-nGNnq_ZA8sIG4RFUVeQ0_TVlmOH3SIuMSEAiGUF09tR3fmGrkr7muUZUUlwqYaur4aIGDoSewdgvltv46vWVdRr37Sstj-3np5J6w0nbmxMnu86d0bH1P1hMK7U9WU7z1EzELVynclgaBuel2jjjLWe6c-DawAsrz5NwreN6MqDOqMiOg9bEJDqe9uxHDfo-38gPKLeu1rvbqCGYOtRHUg1rduP6swWTxTrZmiYg6Ef9CUbMnGwqGsjnGaKoISMUrQsCPob7-vhC_-VnqWh5o4Xs1HzgpPYWINh7j7Rsmi-KFKFWwaco_nj8AJf68SebbvOzY2oLcp_hZ9_vr4Fr9hTp_CCjHBBMGeF8eoegaMLn434D2d2Nb5HyDje3qw6XoytFy_SY0afPscLojfxBTHACDAJSLmAHWrbR7J-cntu2O359mSi2c6ZsxbAcL79ggLy2IO9xtftI2hO7mXdY-PWw84MnN43e6dV54uv2Xz1tS4AWXy9zX4JBiVDcThLwYsTsz-6H03AtAVah-AG7M2OR-vAS6JcvCDCShzpCoCd26PW2Wh24I_YyJl0e9_99mCr6oBJtm7AKKJoXfqIOBeQ0LL5glMGWrs7qOea37_XZ46sOyc_1sAXArl8QYGwejSAivPl9Dk7IJ2jg6bdNMEPBi88_6bqfEFA1gtY1yBdvbs2CwaJZFwyEfODS0Hs9nZy_Dg_tY2fU9xn1Bp7N0xbiwnLVUhlwQgDiJPiiLWtaffWuKhL67Lbc61Ds1sf3lYeMYTWi5hgwpDsOWLsbYRJLASj6qdcwujJyeNwdjO5v7txt7QOmv10zbNihPnGg58Fl4C5bEEhJIAQycJsTV3dxwf97g66nD2SQ3LWaff2q86WSFmvOisHLSgz2CI0w1pJBDkSpVirqHnfsf22-RjMB2aJq3vayLTmifkM6VEdHGhTra0kdOzH58AzLNMOb4QSLTYtcxAwVrOMfhI-3-xp1rLYd8a1F-HVXNeZZdGLSb5pxComYhTI4uFpdgxd9eyH5A0KOMUYK39DSUECZiRlKTCTLDuJZRpmxhiiiXdQmOVwIAVZ9nzN9bdMWzftgSr5HVnMvtObBJXroEGgDCZJOQKCcEzk8psXjEobx19AlJXbf3L7Hwb-9HxL2z-2dzoH1_Lu_KS5TK78WQ7DsPXXBgFTBy4-iOzc3LNBjB0znkwMjuivjQie8GT596-vmbXrMAUXFvH2dSpfuwNCDSIRUSBAzjiiDCVuoJiJ7vAldaeapXn-tjMamb760h4HD6aey55YVvLNbwbmYWhoerpUvZB42cKOrFknlZlRVMkV0mDZOH2yLCsG5cikJEVUUhCGlLslPjKp-j4p3TP83vCvquiLQQbLTfMKyRGkJPb6X-O7_uMeaIPbzgmGZ6c3m1N6TZqdyvON1uoG-q5me2PNVVhlZEqyUr00HtI8Ua5ECjJKMKps4JrrmVHM89cNEJNEqsiiMFHZyeeqJ3YRbAAqBA1iRghiK0Dz8AvXgJxLQKhgyk-ltJygIzECSFGGdeWyIVR8LSlRaozJc2PLMFexrXgLhu_w4tJK_qJrBYr7UdmLUGX7UbnvIThw-g288348_35V9rHiFiFlM7ByPwSGsXDvNZNBhrtHutWbHbLN5vxieNur_7xsf7a1RlRSKgLgIk4WpghCJgWpYCbiWHM9oxpJCIpJHrZSYKqMvCyudNnrYJVPocEGo5wok4OI-oRJiGFJOQjcgBQi5Z9iNUQMZIZPJZXIEikkQ1ICicHzdJtQwS0hWKKPTlGAhpo9qAy2QJyr5xFshQzFIfGcuub2XXBwCVoHD2Kq87M3ZSgQZBhwrnqXWM0aKz6G7NX30oU1AR6iiQQFfK29ApdINdVCAEYUSowk8xsizc9nUVLxQlqfcuU8sOJLRtlwVV1KU2l9VJKWYsaKaClXDjRVnH7oNor3Sa5ie2xaxoZm6xtHY98cBTeohAJzmb-KxRHhDApSfBNk9laBT7bJA5eEe-YSPHuWuYCcKXus4hJRgcy_UjSuRI0xBJRQgBUkTZ-alxO903owm1cnP6_7982O11xdVpW0cyYRjn7DFRYfMvcclSurIlG9Tl5tQJINFBGfRChlru9OuPLdCVvBcGTTUvks1d8xHEQUSuxDKQSSwbx_5H6w9wnlqVF3FvoYiuWO4VRLLkG-dygog5SssGienTyu-n4imPIORTnQZ-X5M8WSqwgEV0IsMUAw2NYPpXJXcXy59j-hIg0BAIGUY8lV8E1QnnLdD-9up_vwYtS51u3D6Tk9Obw-fIt6qr6EVPaYCYKCRLoorp7ZOypLDkpRoj56tUGi-meRTgTzN-7DIDtN0ApmJJuVyu98Fel8bQNKSdWjM_U1AoiVk77FsoiUIhhYclL6f4a8vHz4PindfTB6E78yupm7pkkJFojHg7DXgM_ey_nZ9uEi8veEUzwTTgSopIxIzD4-eavUEGJAMOFCffnF8yAzVya3WX_-eDZAe83NkXt61d--OWuO3iKTOHUUV8nsTeHlqiRaNcZMNRCfRSdRrtVAACDMCcTFdTIblsq72-zvJGOj7P-LMSajSpspJOQjt-u_Txi_b5ejiV8WI6tp43Hb13xjaWxqU9OYbWX9P1h4LO6uZtLUF08TOr5_vvz5PwWZbjk=',
'excalidraw'),

KrokiExample(
'Word Cloud',
'Vega',
r'''{
  "$schema": "https://vega.github.io/schema/vega/v5.json",
  "width": 800,
  "height": 400,
  "padding": 0,

  "data": [
    {
      "name": "table",
      "values": [
        "Declarative visualization grammars can accelerate development, facilitate retargeting across platforms, and allow language-level optimizations. However, existing declarative visualization languages are primarily concerned with visual encoding, and rely on imperative event handlers for interactive behaviors. In response, we introduce a model of declarative interaction design for data visualizations. Adopting methods from reactive programming, we model low-level events as composable data streams from which we form higher-level semantic signals. Signals feed predicates and scale inversions, which allow us to generalize interactive selections at the level of item geometry (pixels) into interactive queries over the data domain. Production rules then use these queries to manipulate the visualization’s appearance. To facilitate reuse and sharing, these constructs can be encapsulated as named interactors: standalone, purely declarative specifications of interaction techniques. We assess our model’s feasibility and expressivity by instantiating it with extensions to the Vega visualization grammar. Through a diverse range of examples, we demonstrate coverage over an established taxonomy of visualization interaction techniques.",
        "We present Reactive Vega, a system architecture that provides the first robust and comprehensive treatment of declarative visual and interaction design for data visualization. Starting from a single declarative specification, Reactive Vega constructs a dataflow graph in which input data, scene graph elements, and interaction events are all treated as first-class streaming data sources. To support expressive interactive visualizations that may involve time-varying scalar, relational, or hierarchical data, Reactive Vega’s dataflow graph can dynamically re-write itself at runtime by extending or pruning branches in a data-driven fashion. We discuss both compile- and run-time optimizations applied within Reactive Vega, and share the results of benchmark studies that indicate superior interactive performance to both D3 and the original, non-reactive Vega system.",
        "We present Vega-Lite, a high-level grammar that enables rapid specification of interactive data visualizations. Vega-Lite combines a traditional grammar of graphics, providing visual encoding rules and a composition algebra for layered and multi-view displays, with a novel grammar of interaction. Users specify interactive semantics by composing selections. In Vega-Lite, a selection is an abstraction that defines input event processing, points of interest, and a predicate function for inclusion testing. Selections parameterize visual encodings by serving as input data, defining scale extents, or by driving conditional logic. The Vega-Lite compiler automatically synthesizes requisite data flow and event handling logic, which users can override for further customization. In contrast to existing reactive specifications, Vega-Lite selections decompose an interaction design into concise, enumerable semantic units. We evaluate Vega-Lite through a range of examples, demonstrating succinct specification of both customized interaction methods and common techniques such as panning, zooming, and linked selection."
      ],
      "transform": [
        {
          "type": "countpattern",
          "field": "data",
          "case": "upper",
          "pattern": "[\\w']{3,}",
          "stopwords": "(i|me|my|myself|we|us|our|ours|ourselves|you|your|yours|yourself|yourselves|he|him|his|himself|she|her|hers|herself|it|its|itself|they|them|their|theirs|themselves|what|which|who|whom|whose|this|that|these|those|am|is|are|was|were|be|been|being|have|has|had|having|do|does|did|doing|will|would|should|can|could|ought|i'm|you're|he's|she's|it's|we're|they're|i've|you've|we've|they've|i'd|you'd|he'd|she'd|we'd|they'd|i'll|you'll|he'll|she'll|we'll|they'll|isn't|aren't|wasn't|weren't|hasn't|haven't|hadn't|doesn't|don't|didn't|won't|wouldn't|shan't|shouldn't|can't|cannot|couldn't|mustn't|let's|that's|who's|what's|here's|there's|when's|where's|why's|how's|a|an|the|and|but|if|or|because|as|until|while|of|at|by|for|with|about|against|between|into|through|during|before|after|above|below|to|from|up|upon|down|in|out|on|off|over|under|again|further|then|once|here|there|when|where|why|how|all|any|both|each|few|more|most|other|some|such|no|nor|not|only|own|same|so|than|too|very|say|says|said|shall)"
        },
        {
          "type": "formula", "as": "angle",
          "expr": "[-45, 0, 45][~~(random() * 3)]"
        },
        {
          "type": "formula", "as": "weight",
          "expr": "if(datum.text=='VEGA', 600, 300)"
        }
      ]
    }
  ],

  "scales": [
    {
      "name": "color",
      "type": "ordinal",
      "domain": {"data": "table", "field": "text"},
      "range": ["#d5a928", "#652c90", "#939597"]
    }
  ],

  "marks": [
    {
      "type": "text",
      "from": {"data": "table"},
      "encode": {
        "enter": {
          "text": {"field": "text"},
          "align": {"value": "center"},
          "baseline": {"value": "alphabetic"},
          "fill": {"scale": "color", "field": "text"}
        },
        "update": {
          "fillOpacity": {"value": 1}
        },
        "hover": {
          "fillOpacity": {"value": 0.5}
        }
      },
      "transform": [
        {
          "type": "wordcloud",
          "size": [800, 400],
          "text": {"field": "text"},
          "rotate": {"field": "datum.angle"},
          "font": "Helvetica Neue, Arial",
          "fontSize": {"field": "datum.count"},
          "fontWeight": {"field": "datum.weight"},
          "fontSizeRange": [12, 56],
          "padding": 2
        }
      ]
    }
  ]
}''',
'GET https://kroki.io/vega/svg/eNqlWN2O3LYVvvdTEJMCYxez643tdWMDuTCQoilQtEXSxhfOXnBEzoiNJCokNVrZ2iCvkdfrk_T7DjU_mt0N0haYESXy8PD8fudIn54otfhdLEpb68VbtShTauPb5893dqsvty6V3frS-eeZQGaf764v_xV9s1hxa-9MKrHxi6sreS6t25YJE6-miVYb45otZvDMCaMTT_qAe6U-yRWzja4tz096XVlhLdM7XXU2Hshl7itbVDro5HZW7VzsdOU-4sk3aht0XesQVaEbpYvCVhZ0Vhm7s5Vva9ukldrowlUucT7YpMPWJsgH8uBjVG2l08aHOq6UbozSVeV7Velm2-mtvajISPk2uXo6M16qr32P6bBS9tZF4WUelXDPKSodrGqDg7iuGlThm8KGxhrVw-bTJmWbwtN4WZZgQQgerm7txBznNkmVWIWmUUFw5ZqE1UKW17bUO-cDhPxzg_2xhcB2pXpLsuBNV1ilVe0NtdrM5D7wwYnGRrdthD29N9cJzN8ZmgSK1zaV3kCQ4GucN4nRBi-eEU1wdj4Php3sKVrAIvCbr1sfGQL5oJjApJ749aUrSu6nf1SJOLNh4hARnE1yhaKcuoJI3-YbtbGwaRuscQU8HsWQsdAVFYTTIhVYTayzs7uokldb20B96GhnFo0IKbEJOCWVSqumkNgol2yNbR42CIN62rpbW8Vn3O1nLH7sbHCQxON44SCaGl9r11yqv4tXxOqhq0AGigYyWd7E424whcqu7SoGMtnMnPLvn3-BhG1r4U5E1qX6h58HPjmKLUoEIP2S2SMOYXMIkHNobRmDuo1yjKGLmKjmoBBi6y28BE668g1Cq-0kTE8jKba2cBvaX-xGU53EVrJF2TioBae9h0wxWqSh70IOE1FkY3V0awo_iND2Fh6N0e04sR7AjyIkpyUIXcpJZG-TbcTBtBZN9B3g62HIgIHK4LstgkAZx8CAkZCrluLaW1238IUEr7G12IhmLOhDTSL6EvaykfjlYgkTJX3rG18P5DA_8xH1D6gHjHvPrIFDkN3f7NOI0gMJVBwiQ02HokTMFQkWh3YIR-TZzpkcM2rjQkwq-HWHgUZjbgVb0iRgxsRKBMTzvJ-ghzt-MwQg3QCkYnzJVMiIeybxY2Gwmqt1GndaDtgwFeGctoQYU366pu2SrK6Qw0jQiQA5SU0myD6Veo8ssBCSOyudw1jMcwHpEGwZZQS4BXQQfAXDETkTu7b1IR0jbg4HcyDMXqg1A3LnK1rZ1fZip8NA5oQdjTKBBBF6Xa0UzFk6sKMvsTwpN7ONZMCZSZibZkAqchPSLdiLPiAYEPtAqA2xKXQNT2d6SCKwjvC4Fgu8XRMYkPM0bzb5hQk4Ez7WsRSnIgiNi0UHE609EooR5Cp7katR11zIAbNqSMyp3FTGwPk8eCfEyYgFi3ZVEkRYA2ZK5OEPcEZnBOBoS9dk3KYfgHtn5Q1TLAUEOGa4yPjVSzmE7H1wWydWbnxzEWbxlnPosZQjycVfYE-mGwvNVGYmsMiy2YZ1KgImWmfm0T3DuJ19uGgeDqFd165hcUKEauNycBxOAzPxuisQ4TnH6cCzHmEqF9K0THVUGCHwtxbOltSt9GADEwBUNWzvLnbO9vQy-p6BAEfg1DDYqbpzxL5U_4xsNrLGw1l5zHU4MuwmIRj5h6opjcjMvIc15Si90muC6wSOtLOxGzFOzv7c8cAKBdORhav1rknHsgIInlq3Y9lXm67JHHOHVFRdzOAr_Rrg61jWW-AVSjii7aM9t7GoBeV30jDGGSCJmPs0tznnCEk4EJuYWlwEzh38W_mtK1h47DwWmGOoJl1CS5CmBI9DwwINmRBw9sfORRJLXAksSFU8NoM8StjvW5tOXEbYYKkKqBJiik0XwDYo5DhOO6A5fARB4QaUDiTWoa895NC8pK9O5D9pkAD-EgFsNB6qJdIZsfF17Elt09WgYOt36OaAVCm3BZYvAvTk8aR0KNgPFOpjlRaXdEUBr6f7WZpxbdLezovHvpmdimc9q9bkWTIGWt00Eocfva8PvTo88APYHaxxuZiA5ubwagPhmkj8mr3dfDrckWRo5aWo8ADzVifI1pxAFig2zlaGJPJWNVsqdJTNqGA2zJf2rLD64fvv--XNp5eruzkJLNL2Phi-ey2eurG2Yz3gx_Iy9nbs4ogyyb_cYHpn4zj4jv8gl5iv3DAcSUo7lq7GP3KU1cg5G_iPcuGkS_jFMRe0EVE68FLz4kK-RpmZ-PbAilGCHVfPf81LtCBypMSy9Li4clbXI6ZRisZeYzeAY1zzZxtc4McRr04QC2ulNnzgnPH44TDjDG4407uqGnvfVQZqyIAkGwu5Y3hCi2VN_ZeBSi4jtV1SryVP5Sx14-iWOJCUGLCym1Z2XDGyYMjBCAdDEpMpDAggBSkwYBHXmIderkKF0cVmmagzB6gtg82PZX6k1nk0HKhtHuXqZLL3-QodeYOCnof9RKGna-NTNgWfa2QZx8pSdfqDFij9MvtuKa63spTHHr1qHqbHgTS-x1WPMDLoMJhx3cHIm9EHOK7QHX0bR3Y_FeOhsqPfjHD-ehiRbSMr3KjXHpv0VvPNAdtST78TkMYJVkbT8b0Ia9gEjhskDLftGCNA3BGk7HXHrsXPN7BQTw4jGePRbyARoBaCGO7kUeMEt5QcFGhbROWssKiblaWqVHQE9EPDYSRKjcDectzYfqwpUO0huBduEa-cI-FobDx-YaTZfVMNI0WKmqvUiybzfoRQA2blj2jUjgGFk54tDvl_t_p1PCJq4Y1wsVILLQCh2e3PAYQdswDMxavrlbpaqVfXNx9--ukpUA_vuk-fqd-rl89u_o8z-_yl6cFD3eYpALGrLxPq8JdfLr_745_eLVfq9RXkeHl1darqHpef7J9u8mcqKePx8Q9Vha_8EVYPYgIy2XMeF_KLPZY-7b987b9xnaA3xVwcLLCQgsajF5-Za_3mxRck_uz19YvizZXcvnn55vrNHxb3hGYH_YDMe-HkmMMpDN8H5DqKIW0PNx4dgjkkwmxKTXzJ6RGFhAi97zbbQT7qiQ0ztzndGnUL5dPOSXXVlhqJ6ooz8g0AWEjFYSeeuWfeh0IN1RHa23OFyPRvrS5cGmZifP4wk5KZ_lt5XF1e390Lv7v_pS1gfS4q35mz0o1Ohpv5SZafYW9W_7Wvgk-TVWYdBhIqZ_qZC9ArkuJrVmJ2rOqvtkNL9y64k0w4kH6b5bvHWrqcB1i_339SvrdjgoC7B4_4Zp9En79YqevXN2cd0P6r9Itfg4Ind_8BeFv4-A==',
'vega'),

KrokiExample(
'Diverging Stacked Bar Chart',
'Vega-Lite',
r'''{
  "$schema": "https://vega.github.io/schema/vega-lite/v4.json",
  "description": "A diverging stacked bar chart for sentiments towards a set of eight questions, displayed as percentages with neutral responses straddling the 0% mark",
  "data": {
    "values": [
      {"question": "Question 1", "type": "Strongly disagree", "value": 24, "percentage": 0.7},
      {"question": "Question 1", "type": "Disagree", "value": 294, "percentage": 9.1},
      {"question": "Question 1", "type": "Neither agree nor disagree", "value": 594, "percentage": 18.5},
      {"question": "Question 1", "type": "Agree", "value": 1927, "percentage": 59.9},
      {"question": "Question 1", "type": "Strongly agree", "value": 376, "percentage": 11.7},
      {"question": "Question 2", "type": "Strongly disagree", "value": 2, "percentage": 18.2},
      {"question": "Question 2", "type": "Disagree", "value": 2, "percentage": 18.2},
      {"question": "Question 2", "type": "Neither agree nor disagree", "value": 0, "percentage": 0},
      {"question": "Question 2", "type": "Agree", "value": 7, "percentage": 63.6},
      {"question": "Question 2", "type": "Strongly agree", "value": 11, "percentage": 0},
      {"question": "Question 3", "type": "Strongly disagree", "value": 2, "percentage": 20},
      {"question": "Question 3", "type": "Disagree", "value": 0, "percentage": 0},
      {"question": "Question 3", "type": "Neither agree nor disagree", "value": 2, "percentage": 20},
      {"question": "Question 3", "type": "Agree", "value": 4, "percentage": 40},
      {"question": "Question 3", "type": "Strongly agree", "value": 2, "percentage": 20},
      {"question": "Question 4", "type": "Strongly disagree", "value": 0, "percentage": 0},
      {"question": "Question 4", "type": "Disagree", "value": 2, "percentage": 12.5},
      {"question": "Question 4", "type": "Neither agree nor disagree", "value": 1, "percentage": 6.3},
      {"question": "Question 4", "type": "Agree", "value": 7, "percentage": 43.8},
      {"question": "Question 4", "type": "Strongly agree", "value": 6, "percentage": 37.5},
      {"question": "Question 5", "type": "Strongly disagree", "value": 0, "percentage": 0},
      {"question": "Question 5", "type": "Disagree", "value": 1, "percentage": 4.2},
      {"question": "Question 5", "type": "Neither agree nor disagree", "value": 3, "percentage": 12.5},
      {"question": "Question 5", "type": "Agree", "value": 16, "percentage": 66.7},
      {"question": "Question 5", "type": "Strongly agree", "value": 4, "percentage": 16.7},
      {"question": "Question 6", "type": "Strongly disagree", "value": 1, "percentage": 6.3},
      {"question": "Question 6", "type": "Disagree", "value": 1, "percentage": 6.3},
      {"question": "Question 6", "type": "Neither agree nor disagree", "value": 2, "percentage": 12.5},
      {"question": "Question 6", "type": "Agree", "value": 9, "percentage": 56.3},
      {"question": "Question 6", "type": "Strongly agree", "value": 3, "percentage": 18.8},
      {"question": "Question 7", "type": "Strongly disagree", "value": 0, "percentage": 0},
      {"question": "Question 7", "type": "Disagree", "value": 0, "percentage": 0},
      {"question": "Question 7", "type": "Neither agree nor disagree", "value": 1, "percentage": 20},
      {"question": "Question 7", "type": "Agree", "value": 4, "percentage": 80},
      {"question": "Question 7", "type": "Strongly agree", "value": 0, "percentage": 0},
      {"question": "Question 8", "type": "Strongly disagree", "value": 0, "percentage": 0},
      {"question": "Question 8", "type": "Disagree", "value": 0, "percentage": 0},
      {"question": "Question 8", "type": "Neither agree nor disagree", "value": 0, "percentage": 0},
      {"question": "Question 8", "type": "Agree", "value": 0, "percentage": 0},
      {"question": "Question 8", "type": "Strongly agree", "value": 2, "percentage": 100}
    ]
  },
  "transform": [
    {
      "calculate": "if(datum.type === 'Strongly disagree',-2,0) + if(datum.type==='Disagree',-1,0) + if(datum.type =='Neither agree nor disagree',0,0) + if(datum.type ==='Agree',1,0) + if(datum.type ==='Strongly agree',2,0)",
      "as": "q_order"
    },
    {
      "calculate": "if(datum.type === 'Disagree' || datum.type === 'Strongly disagree', datum.percentage,0) + if(datum.type === 'Neither agree nor disagree', datum.percentage / 2,0)",
      "as": "signed_percentage"
    },
    {"stack": "percentage", "as": ["v1", "v2"], "groupby": ["question"]},
    {
      "joinaggregate": [
        {
          "field": "signed_percentage",
          "op": "sum",
          "as": "offset"
        }
      ],
      "groupby": ["question"]
    },
    {"calculate": "datum.v1 - datum.offset", "as": "nx"},
    {"calculate": "datum.v2 - datum.offset", "as": "nx2"}
  ],
  "mark": "bar",
  "encoding": {
    "x": {
      "field": "nx",
      "type": "quantitative",
      "axis": {
        "title": "Percentage"
      }
    },
    "x2": {"field": "nx2"},
    "y": {
      "field": "question",
      "type": "nominal",
      "axis": {
        "title": "Question",
        "offset": 5,
        "ticks": false,
        "minExtent": 60,
        "domain": false
      }
    },
    "color": {
      "field": "type",
      "type": "nominal",
      "legend": {
        "title": "Response"
      },
      "scale": {
        "domain": ["Strongly disagree", "Disagree", "Neither agree nor disagree", "Agree", "Strongly agree"],
        "range": ["#c30d24", "#f3a583", "#cccccc", "#94c6da", "#1770ab"],
        "type": "ordinal"
      }
    }
  }
}''',
'GET https://kroki.io/vegalite/svg/eNq9WE1v4zYQve-vGDAt3KKKrG_bC-QQIL0W3fYYGAtaomVuZMkRaW-MbP77jmhZlk3FklynOTgUOZx58x7FIfX6CYD8IsIFW1LyGchCypX4PBxuWEzNmMvFembybLgzUL23CZdsuPHMbyJLiVHMj5gIc76SHDvQxz1EfMPymKcxCEnDJxbBjOYQLmguYZ7lIFgq-RJ_BMjsO80jARQ7JWRzYDxeSHheM1H4EwY6E6uEbtEJFbBieYjzaMwEfEd4kLK1zGkCORMrNMdugc9RlBTR5YKB9Sssaf5UIqWySPMV2_i0oQmGwedH9QzwSvZxizy-lG2wiQFEbles6P1X5lkaJ9sCF41zxopB5QlHHQ8fDhixxzJHb0YP9w9NXiea24lp93L7F0OyWA7KN6SoQRN8Xw9kj02_V6T7U6f2xBmdevUn5qSX14p1DbM7CjTMdjvpTndNGyhxerl_-BCv3SS1tAXZK4impiZl4JrBZWRrWG27N1j3chmdfs4frkKu21_B_wpck1B7x70Lab4GVK-zgP3J9vq_hE77buf1l1Bb14Hp9grT_hp6rjm-jGsNrbafuqN2VvwP1NFv01Hj12vfS_3-MrqXLBf_fHHUyA6C9uLldxNSL-YdfAedhbxkVQe9pezr9MJNtYuUwVkpJ9ohpy_0M4echtNC6-s--sBXcnT90ji6wr7q9IvSXhrH1mUsX4GP8QfKN76-fOP_42w6PqvetTjusFtY1pvyPMVfFYTgrTMVeLldVvfJ1zI2CWkSrhMqVRQ-_w1voeulWYSFu7s7GGjiDoxbx7B-hz_gyBqNBw8HE7vBBB0O3id_YFjNc-4G97tx-73xY3IGRoGP7NkltLhFk-evWR6xnKjekvrOJFSJwY8f0IGh0uYgyzvI4SwfmhcYQlNqgscpi77WFsFRkkR95ygMaxZGOfmRbNRdduOQKf6L82y9mm3VQLUop6d0fct4SmMEGe8o23-iOJgoszlnSdQM0KjbZStltF4ed--Sy-ZzwSSpBt7K1rQioRnzMQVHAu9o3dhwWzJcxthzQtIXcnamc2amQwqECh1R33awd0bz3SceloZZxNP48JnnpWrWCUMAVXr7HeB5TVPJJZV8w2or4IWLmovCnstETfj7ZD3suStTIwgVJ9aDOvu0ybYRVsWuBi7Nlrgkkk64vpx6gUplPJcY9RnhU-FkThPBav0Y6s8XiakVJzCrNhBlS8rT_YzGpMMsyfLG5FQq7YklLGZp9E5q_5Qf-irCq2kC1xE7nlWhfWyuoPXSd75mVcXmpEpMa9xgBVDV4ZHchK4VOeq-dTN3qT9WF-ibUP2p5sQLg4iqpj0aWXR25GlPDe6nippjnoua8-ntJ7dCWRo=',
'vegalite'),

KrokiExample(
  'Conjugate prior relationships',
'Ditaa',
r'''
                          +-------------+
                          |             |
                          | Exponential |
                          |             |
                          +-------------+
                                 |
                          lambda |
                                 v
+-------------+           +-------------+           +-------------+
|             |   tau     |             |   lambda  |             |
|  Lognormal  |---------->|    Gamma    |<----------| Poisson     |
|             |           |             |---+       |             |
+-------------+           +-------------+   |       +-------------+
      |                         ^ ^         | beta
      |                   tau   | |         |
      | tau                     | +---------+
      |                   +-------------+
      +------------------>|             |
                          |     Normal  |
                          |             |----+
                          +-------------+    |
                                     ^       | mu
                                     |       |
                                     +-------+
''',
'GET https://kroki.io/ditaa/svg/eNqVU80KwjAMvvcpei--gXgTLyI-gZDhkMHaiuvEQx7ebmO29jfLTl3S5PtpGM-G2PkhWL4S_0_FyuPnqVWrTAd9pZLak46T0KwH2dwhmL4p6vPfLICcJ1OgiZFcBsaUdI5VJKo9n_VD6Ze0bnB07Q9z5QmkhLly71LIr7obBq1cj4xtQcbjE-LYogcWbc8bd7OfQ9a0BgpXFinRyyH_la86x09WkPCEnFjqt2cDcbOmuKxW0jertjQJb5DwyBfJ14lypN1AAtMENsG-et_GDg==',
'ditaa'),

KrokiExample(
  'Sequence diagram',
'Mermaid',
r'''sequenceDiagram
    participant Alice
    participant Bob
    Alice->John: Hello John, how are you?
    loop Healthcheck
        John->John: Fight against hypochondria
    end
    Note right of John: Rational thoughts prevail...
    John-->Alice: Great!
    John->Bob: How about you?
    Bob-->John: Jolly good!
''',
'GET https://kroki.io/mermaid/svg/eNpljzFuwzAMRXefgtlrZzcKBymCtMjQoTegZdYiwoqqTLfw7SMrSDKEi4j_H6nPaqLfmYKjA-OY8KeCXBGTseOIwWAv7OhJfdO-aMWtu5P60MIHiSis_Qt4_QdMBIvOu0KKaswEinnnyZ2LuNbK3zYcefQGOCKHycAvUZ3XMCTGglMYyvupRpAKq99wHf1CYw0oYF7n7Ezw2qdtFxP9IUvTNNX9s7orsVt4T4S2eRhdPiufsUbvdbZH-KzXt4wnFVlgVB021QUIImOl',
'mermaid'),

KrokiExample(
  'UML diagram',
'Nomnoml',
r'''[Pirate|eyeCount: Int|raid();pillage()|
  [beard]--[parrot]
  [beard]-:>[foul mouth]
]

[<abstract>Marauder]<:--[Pirate]
[Pirate]- 0..7[mischief]
[jollyness]->[Pirate]
[jollyness]->[rum]
[jollyness]->[singing]
[Pirate]-> *[rum|tastiness: Int|swig()]
[Pirate]->[singing]
[singing]<->[rum]

[<start>st]->[<state>plunder]
[plunder]->[<choice>more loot]
[more loot]->[st]
[more loot] no ->[<end>e]

[<actor>Sailor] - [<usecase>shiver me;timbers]
''',
'GET https://kroki.io/nomnoml/svg/eNpdULFqwzAQ3fUVGpOCQ7eCY7R06hAodBQazvbFVpGlcHdqCfjja2FMnIKGp3fv3eOdsp-eQHDGO76nHKXWH1FmAt8fjuebDwEGPBxnpbVtEah3VWVvQJTE7bja2GvKQU8py-iUU8o20LIQdGIuQJB7JNfUi3nNc2oDlX49nd7s5LkbPV6XwXcK4R6R2VXmIX9iKU__KfZxWN5usdEvRTgLsPgiW7vxrx8Ox71u591Qs4UsRViAxLAUZfkImlvIsTRSdkNl1o3Jd2imRKhDKheyD1xinhkdky42jL3B9WSdJDJf4EMipyttm8zYAaPh0f8g6QnP4qcWiZ36A9RWnDM=',
'nomnoml'),

KrokiExample(
'Use case diagram',
'PlantUML',
r'''@startuml
left to right direction
skinparam packageStyle rectangle
skinparam monochrome true
actor customer
actor clerk
rectangle checkout {
  customer -- (checkout)
  (checkout) .> (payment) : include
  (help) .> (checkout) : extends
  (checkout) -- clerk
}
@enduml
r''',
'GET https://kroki.io/plantuml/svg/eNpVkE0Kg0AMRvdziiztwh7ARfEOPUGIqQ7zSyYDldK7d6So7fLLe_kIMWNRFK3BG88PBU0gdl4UJitMalM0xdmYUTBARnI4811Xz7BhjLPnHyGkmGiRFBhUKhskTQJUi7aR7NGzOHOsAy1MLlWFl4HDhb6HbieXBs4A1xt0GdfAsYUBbCRfJ96chX3-8tMegJ_KcSr_Ja3_e8jbjI1uD_gAxEdcbw==',
'plantuml'),

KrokiExample(
  'Work Breakdown Structure',
'PlantUML',
r'''@startwbs
skinparam monochrome true
* Business Process Modelling WBS
** Launch the project
*** Complete Stakeholder Research
*** Initial Implementation Plan
** Design phase
*** Model of AsIs Processes Completed
**** Model of AsIs Processes Completed1
**** Model of AsIs Processes Completed2
*** Measure AsIs performance metrics
*** Identify Quick Wins
** Complete innovate phase
@endwbs
''',
'GET https://kroki.io/plantuml/svg/eNqNkLtOw1AMhvc8heds8ASlsEQCqdChszlxekzOsSPbAfH25CKVtZMt65P_y8EDLX4-vfGRZULDClVFUzatBGEzNS0cZ2chdziZpnW-aU-lsFzhcjw3bQuvOEvKEJlgMv2iFMu1hWetU6EgOAeOlLX0ZPBBTmgpb0QnHIwFuhWsJIHBKnAqKOvfF3K-CkwZnTZ-UwYd4Mm7mx_ym1K_UndgD3dyj7sqoc9GOzWRDWoVJRFUCuPke5R-sc_DL7zPnEa4sKz3_w5YRL9xWfY0B5J-Kf4PckyD5A==',
'plantuml'),

KrokiExample(
'Gantt',
'Mermaid',
r'''gantt
    title A Gantt Diagram
    dateFormat  YYYY-MM-DD
    section Section
    A task           :a1, 2014-01-01, 30d
    Another task     :after a1, 20d
    section Another
    Task in sec      :2014-01-12, 12d
    another task     :24d
''',
'GET https://kroki.io/mermaid/svg/eNpdTcsKwjAQvPsV8wENJLGn3ApBTz3pxeNiYg3aFNL9f8yjUnRYWHYeOxNF5gMyOPDbY8C5MLCBpkRzVRyxPy1pJgZuGWIchbVVWv2dwxJxabtyA5jWF3YYUh20VL2QKk-Ho3TNGRd--rT7DT0436SAknA_HZu7cteSCLFoW8f3v9Ilq3TL0n8DDHTvPoXCQLE=',
'mermaid'),

KrokiExample(
'Syntax diagram',
'Pikchr',
r'''$r = 0.2in
linerad = 0.75*$r
linewid = 0.25

# Start and end blocks
#
box "element" bold fit
line down 50% from last box.sw
dot rad 250% color black
X0: last.e + (0.3,0)
arrow from last dot to X0
move right 3.9in
box wid 5% ht 25% fill black
X9: last.w - (0.3,0)
arrow from X9 to last box.w


# The main rule that goes straight through from start to finish
#
box "object-definition" italic fit at 11/16 way between X0 and X9
arrow to X9
arrow from X0 to last box.w

# The LABEL: rule
#
arrow right $r from X0 then down 1.25*$r then right $r
oval " LABEL " fit
arrow 50%
oval "\":\"" fit
arrow 200%
box "position" italic fit
arrow
line right until even with X9 - ($r,0) \
  then up until even with X9 then to X9
arrow from last oval.e right $r*0.5 then up $r*0.8 right $r*0.8
line up $r*0.45 right $r*0.45 then right

# The VARIABLE = rule
#
arrow right $r from X0 then down 2.5*$r then right $r
oval " VARIABLE " fit
arrow 70%
box "assignment-operator" italic fit
arrow 70%
box "expr" italic fit
line right until even with X9 - ($r,0) \
  then up until even with X9 then to X9

# The PRINT rule
#
arrow right $r from X0 then down 3.75*$r then right $r
oval "\"print\"" fit
arrow
box "print-args" italic fit
line right until even with X9 - ($r,0) \
  then up until even with X9 then to X9
''',
'GET https://kroki.io/pikchr/svg/eNq1VLFu2zAQ3fkVB8UB2rRWZTlqIgMdHCBDAKMo0iDw4IW2aIkNTQokbbl_3yMpOXLtABnaQSB4d3z33jtSAw3fIIlTLongkmla-P1NdjXQPtLwEEkzQi7gp6XaApUFMPyWQq1eDLkgS7WHiAm2YdJGsFSigDW3_jwUqpGQJZew1moDghqLBfvYNKRQFlzD1GVXSiiNiHT1QubJxBfGDD7BhyQef04-Eqq1anog7rRVME_IRu0YaF5WFsZxjkocHcc7uwSMpbisuRAdeN6CNzA8Bz7PHeyBZ0Oc7qeKwYZyCXorGNiKWigVM2Cspr6xrbTallWAMN4lRFlzyU3VGaSWv9jKDgvmwpYrGQG3VPCVMwsQcjT6MvoKDf0NS2YbxiSq82bP85ahE5wfsU3-ZhvIzqZ397OJp4vtw4Fg0UC_nqywhZ_PCOeLEw-Rro6oHRUQBSxc3UgDEg6sTS6iySLqp9IEc15urcyJylAULkZos5WWC2A77NtwWzn7cSwDjVOBBYHAaFufq_OpE0e8F45czA5KrpI4OyD57W0_dxsIdbnrrJ-8znqudPY-Tx8fpneze3wa77U4jd92-ADXd_KmM5Iaw0vp3tZQ1fhErdKnnr6Ws319nP_nbrcm_Hh8-P70bv3j8FM5a8AiqjWX9ugmtZfIxYdUl-a_SvoDVDiU0w==',
'pikchr'),
KrokiExample(
'Mind Map',
'PlantUML',
r'''@startmindmap
skinparam monochrome true
+ OS
++ Ubuntu
+++ Linux Mint
+++ Kubuntu
+++ Lubuntu
+++ KDE Neon
++ LMDE
++ SolydXK
++ SteamOS
++ Raspbian
-- Windows 95
-- Windows 98
-- Windows NT
--- Windows 8
--- Windows 10
@endmindmap
r''',
'GET https://kroki.io/plantuml/svg/eNpVjz0LwjAQhvf8ittDQQehbh3aqR-CVXS92oDB5hLygfrvTdvBdLrn4eWOewvn0XolaVRomHtJMmhRgdKkH0-rlQBvg2AcTj3jHK5DIB8icWgkhQ-0kvyidUiihOuygk5omrebtqzm2evpO97rBb1Atd4-ozODRGJZBrf4kX47OB42lqfWXaL9Nd_YfscKEVutzX7LvUZt',
'plantuml'),

KrokiExample(
'BPMN',
'BPMN',
r'''<?xml version="1.0" encoding="UTF-8"?>
<semantic:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:semantic="http://www.omg.org/spec/BPMN/20100524/MODEL" id="_1275940932088" targetNamespace="http://www.trisotech.com/definitions/_1275940932088" exporter="Camunda Modeler" exporterVersion="1.16.0">
  <semantic:message id="_1275940932310" />
  <semantic:message id="_1275940932433" />
  <semantic:process id="_6-1" isExecutable="false">
    <semantic:laneSet id="ls_6-438">
      <semantic:lane id="_6-650" name="clerk">
        <semantic:flowNodeRef>OrderReceivedEvent</semantic:flowNodeRef>
        <semantic:flowNodeRef>_6-652</semantic:flowNodeRef>
        <semantic:flowNodeRef>_6-674</semantic:flowNodeRef>
        <semantic:flowNodeRef>CalmCustomerTask</semantic:flowNodeRef>
      </semantic:lane>
      <semantic:lane id="_6-446" name="pizza chef">
        <semantic:flowNodeRef>_6-463</semantic:flowNodeRef>
      </semantic:lane>
      <semantic:lane id="_6-448" name="delivery boy">
        <semantic:flowNodeRef>_6-514</semantic:flowNodeRef>
        <semantic:flowNodeRef>_6-565</semantic:flowNodeRef>
        <semantic:flowNodeRef>_6-616</semantic:flowNodeRef>
      </semantic:lane>
    </semantic:laneSet>
    <semantic:startEvent id="OrderReceivedEvent" name="Order received">
      <semantic:outgoing>_6-630</semantic:outgoing>
      <semantic:messageEventDefinition messageRef="_1275940932310" />
    </semantic:startEvent>
    <semantic:parallelGateway id="_6-652" name="">
      <semantic:incoming>_6-630</semantic:incoming>
      <semantic:outgoing>_6-691</semantic:outgoing>
      <semantic:outgoing>_6-693</semantic:outgoing>
    </semantic:parallelGateway>
    <semantic:intermediateCatchEvent id="_6-674" name="„where is my pizza?“">
      <semantic:incoming>_6-691</semantic:incoming>
      <semantic:incoming>_6-746</semantic:incoming>
      <semantic:outgoing>_6-748</semantic:outgoing>
      <semantic:messageEventDefinition messageRef="_1275940932433" />
    </semantic:intermediateCatchEvent>
    <semantic:task id="CalmCustomerTask" name="Calm customer">
      <semantic:incoming>_6-748</semantic:incoming>
      <semantic:outgoing>_6-746</semantic:outgoing>
    </semantic:task>
    <semantic:task id="_6-463" name="Bake the pizza">
      <semantic:incoming>_6-693</semantic:incoming>
      <semantic:outgoing>_6-632</semantic:outgoing>
    </semantic:task>
    <semantic:task id="_6-514" name="Deliver the pizza">
      <semantic:incoming>_6-632</semantic:incoming>
      <semantic:outgoing>_6-634</semantic:outgoing>
    </semantic:task>
    <semantic:task id="_6-565" name="Receive payment">
      <semantic:incoming>_6-634</semantic:incoming>
      <semantic:outgoing>_6-636</semantic:outgoing>
    </semantic:task>
    <semantic:endEvent id="_6-616" name="">
      <semantic:incoming>_6-636</semantic:incoming>
      <semantic:terminateEventDefinition />
    </semantic:endEvent>
    <semantic:sequenceFlow id="_6-630" name="" sourceRef="OrderReceivedEvent" targetRef="_6-652" />
    <semantic:sequenceFlow id="_6-632" name="" sourceRef="_6-463" targetRef="_6-514" />
    <semantic:sequenceFlow id="_6-634" name="" sourceRef="_6-514" targetRef="_6-565" />
    <semantic:sequenceFlow id="_6-636" name="" sourceRef="_6-565" targetRef="_6-616" />
    <semantic:sequenceFlow id="_6-691" name="" sourceRef="_6-652" targetRef="_6-674" />
    <semantic:sequenceFlow id="_6-693" name="" sourceRef="_6-652" targetRef="_6-463" />
    <semantic:sequenceFlow id="_6-746" name="" sourceRef="CalmCustomerTask" targetRef="_6-674" />
    <semantic:sequenceFlow id="_6-748" name="" sourceRef="_6-674" targetRef="CalmCustomerTask" />
  </semantic:process>
  <semantic:message id="_1275940932198" />
  <semantic:process id="_6-2" isExecutable="false">
    <semantic:startEvent id="_6-61" name="Hungry for pizza">
      <semantic:outgoing>_6-125</semantic:outgoing>
    </semantic:startEvent>
    <semantic:task id="SelectAPizzaTask" name="Select a pizza">
      <semantic:incoming>_6-125</semantic:incoming>
      <semantic:outgoing>_6-178</semantic:outgoing>
    </semantic:task>
    <semantic:task id="_6-127" name="Order a pizza">
      <semantic:incoming>_6-178</semantic:incoming>
      <semantic:outgoing>_6-420</semantic:outgoing>
    </semantic:task>
    <semantic:eventBasedGateway id="_6-180" name="">
      <semantic:incoming>_6-420</semantic:incoming>
      <semantic:incoming>_6-430</semantic:incoming>
      <semantic:outgoing>_6-422</semantic:outgoing>
      <semantic:outgoing>_6-424</semantic:outgoing>
    </semantic:eventBasedGateway>
    <semantic:intermediateCatchEvent id="_6-202" name="pizza received">
      <semantic:incoming>_6-422</semantic:incoming>
      <semantic:outgoing>_6-428</semantic:outgoing>
      <semantic:messageEventDefinition messageRef="_1275940932198" />
    </semantic:intermediateCatchEvent>
    <semantic:intermediateCatchEvent id="_6-219" name="60 minutes">
      <semantic:incoming>_6-424</semantic:incoming>
      <semantic:outgoing>_6-426</semantic:outgoing>
      <semantic:timerEventDefinition>
        <semantic:timeDate />
      </semantic:timerEventDefinition>
    </semantic:intermediateCatchEvent>
    <semantic:task id="_6-236" name="Ask for the pizza">
      <semantic:incoming>_6-426</semantic:incoming>
      <semantic:outgoing>_6-430</semantic:outgoing>
    </semantic:task>
    <semantic:task id="_6-304" name="Pay the pizza">
      <semantic:incoming>_6-428</semantic:incoming>
      <semantic:outgoing>_6-434</semantic:outgoing>
    </semantic:task>
    <semantic:task id="_6-355" name="Eat the pizza">
      <semantic:incoming>_6-434</semantic:incoming>
      <semantic:outgoing>_6-436</semantic:outgoing>
    </semantic:task>
    <semantic:endEvent id="_6-406" name="Hunger satisfied">
      <semantic:incoming>_6-436</semantic:incoming>
    </semantic:endEvent>
    <semantic:sequenceFlow id="_6-125" name="" sourceRef="_6-61" targetRef="SelectAPizzaTask" />
    <semantic:sequenceFlow id="_6-178" name="" sourceRef="SelectAPizzaTask" targetRef="_6-127" />
    <semantic:sequenceFlow id="_6-420" name="" sourceRef="_6-127" targetRef="_6-180" />
    <semantic:sequenceFlow id="_6-422" name="" sourceRef="_6-180" targetRef="_6-202" />
    <semantic:sequenceFlow id="_6-424" name="" sourceRef="_6-180" targetRef="_6-219" />
    <semantic:sequenceFlow id="_6-426" name="" sourceRef="_6-219" targetRef="_6-236" />
    <semantic:sequenceFlow id="_6-428" name="" sourceRef="_6-202" targetRef="_6-304" />
    <semantic:sequenceFlow id="_6-430" name="" sourceRef="_6-236" targetRef="_6-180" />
    <semantic:sequenceFlow id="_6-434" name="" sourceRef="_6-304" targetRef="_6-355" />
    <semantic:sequenceFlow id="_6-436" name="" sourceRef="_6-355" targetRef="_6-406" />
  </semantic:process>
  <semantic:collaboration id="C1275940932557">
    <semantic:participant id="_6-53" name="Pizza Customer" processRef="_6-2" />
    <semantic:participant id="_6-438" name="Pizza vendor" processRef="_6-1" />
    <semantic:messageFlow id="_6-638" name="pizza order" sourceRef="_6-127" targetRef="OrderReceivedEvent" />
    <semantic:messageFlow id="_6-642" name="" sourceRef="_6-236" targetRef="_6-674" />
    <semantic:messageFlow id="_6-646" name="receipt" sourceRef="_6-565" targetRef="_6-304" />
    <semantic:messageFlow id="_6-648" name="money" sourceRef="_6-304" targetRef="_6-565" />
    <semantic:messageFlow id="_6-640" name="pizza" sourceRef="_6-514" targetRef="_6-202" />
    <semantic:messageFlow id="_6-750" name="" sourceRef="CalmCustomerTask" targetRef="_6-236" />
  </semantic:collaboration>
  <bpmndi:BPMNDiagram id="Trisotech.Visio-_6" name="Untitled Diagram" documentation="" resolution="96.00000267028808">
    <bpmndi:BPMNPlane bpmnElement="C1275940932557">
      <bpmndi:BPMNShape id="Trisotech.Visio__6-53" bpmnElement="_6-53" isHorizontal="true">
        <dc:Bounds x="12" y="12" width="1044" height="294" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6-438" bpmnElement="_6-438" isHorizontal="true">
        <dc:Bounds x="12" y="372" width="905" height="337" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-650" bpmnElement="_6-650" isHorizontal="true">
        <dc:Bounds x="42" y="372" width="875" height="114" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-446" bpmnElement="_6-446" isHorizontal="true">
        <dc:Bounds x="42" y="486" width="875" height="114" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-448" bpmnElement="_6-448" isHorizontal="true">
        <dc:Bounds x="42" y="600" width="875" height="109" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6_OrderReceivedEvent" bpmnElement="OrderReceivedEvent">
        <dc:Bounds x="79" y="405" width="30" height="30" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-652" bpmnElement="_6-652">
        <dc:Bounds x="140" y="399" width="42" height="42" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-674" bpmnElement="_6-674">
        <dc:Bounds x="218" y="404" width="32" height="32" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6_CalmCustomerTask" bpmnElement="CalmCustomerTask">
        <dc:Bounds x="286" y="386" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-463" bpmnElement="_6-463">
        <dc:Bounds x="252" y="521" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-514" bpmnElement="_6-514">
        <dc:Bounds x="464" y="629" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-565" bpmnElement="_6-565">
        <dc:Bounds x="603" y="629" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-616" bpmnElement="_6-616">
        <dc:Bounds x="722" y="647" width="32" height="32" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-61" bpmnElement="_6-61">
        <dc:Bounds x="66" y="96" width="30" height="30" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-74" bpmnElement="SelectAPizzaTask">
        <dc:Bounds x="145" y="77" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-127" bpmnElement="_6-127">
        <dc:Bounds x="265" y="77" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-180" bpmnElement="_6-180">
        <dc:Bounds x="378" y="90" width="42" height="42" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-202" bpmnElement="_6-202">
        <dc:Bounds x="647" y="95" width="32" height="32" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-219" bpmnElement="_6-219">
        <dc:Bounds x="448" y="184" width="32" height="32" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-236" bpmnElement="_6-236">
        <dc:Bounds x="517" y="166" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-304" bpmnElement="_6-304">
        <dc:Bounds x="726" y="77" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-355" bpmnElement="_6-355">
        <dc:Bounds x="834" y="77" width="83" height="68" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Trisotech.Visio__6__6-406" bpmnElement="_6-406">
        <dc:Bounds x="956" y="95" width="32" height="32" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-640" bpmnElement="_6-640">
        <di:waypoint x="506" y="629" />
        <di:waypoint x="506" y="384" />
        <di:waypoint x="663" y="384" />
        <di:waypoint x="663" y="127" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-630" bpmnElement="_6-630">
        <di:waypoint x="109" y="420" />
        <di:waypoint x="140" y="420" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-691" bpmnElement="_6-691">
        <di:waypoint x="182" y="420" />
        <di:waypoint x="200" y="420" />
        <di:waypoint x="218" y="420" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-648" bpmnElement="_6-648">
        <di:waypoint x="754" y="145" />
        <di:waypoint x="754" y="408" />
        <di:waypoint x="630" y="408" />
        <di:waypoint x="631" y="629" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-422" bpmnElement="_6-422">
        <di:waypoint x="420" y="111" />
        <di:waypoint x="438" y="111" />
        <di:waypoint x="647" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-646" bpmnElement="_6-646" messageVisibleKind="non_initiating">
        <di:waypoint x="658" y="629" />
        <di:waypoint x="658" y="432" />
        <di:waypoint x="782" y="432" />
        <di:waypoint x="782" y="145" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-428" bpmnElement="_6-428">
        <di:waypoint x="679" y="111" />
        <di:waypoint x="726" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-748" bpmnElement="_6-748">
        <di:waypoint x="250" y="420" />
        <di:waypoint x="268" y="420" />
        <di:waypoint x="286" y="420" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-420" bpmnElement="_6-420">
        <di:waypoint x="348" y="111" />
        <di:waypoint x="366" y="111" />
        <di:waypoint x="378" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-636" bpmnElement="_6-636">
        <di:waypoint x="686" y="663" />
        <di:waypoint x="704" y="663" />
        <di:waypoint x="722" y="663" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-750" bpmnElement="_6-750">
        <di:waypoint x="328" y="386" />
        <di:waypoint x="328" y="348" />
        <di:waypoint x="572" y="348" />
        <di:waypoint x="572" y="234" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-436" bpmnElement="_6-436">
        <di:waypoint x="918" y="111" />
        <di:waypoint x="936" y="111" />
        <di:waypoint x="956" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-632" bpmnElement="_6-632">
        <di:waypoint x="335" y="555" />
        <di:waypoint x="353" y="555" />
        <di:waypoint x="353" y="663" />
        <di:waypoint x="464" y="663" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-634" bpmnElement="_6-634">
        <di:waypoint x="548" y="663" />
        <di:waypoint x="603" y="663" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-125" bpmnElement="_6-125">
        <di:waypoint x="96" y="111" />
        <di:waypoint x="114" y="111" />
        <di:waypoint x="145" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-430" bpmnElement="_6-430">
        <di:waypoint x="600" y="200" />
        <di:waypoint x="618" y="200" />
        <di:waypoint x="618" y="252" />
        <di:waypoint x="576" y="252" />
        <di:waypoint x="549" y="252" />
        <di:waypoint x="360" y="252" />
        <di:waypoint x="360" y="111" />
        <di:waypoint x="378" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-642" bpmnElement="_6-642">
        <di:waypoint x="545" y="234" />
        <di:waypoint x="545" y="324" />
        <di:waypoint x="234" y="324" />
        <di:waypoint x="234" y="404" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-424" bpmnElement="_6-424">
        <di:waypoint x="399" y="132" />
        <di:waypoint x="399" y="200" />
        <di:waypoint x="448" y="200" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-638" bpmnElement="_6-638">
        <di:waypoint x="306" y="145" />
        <di:waypoint x="306" y="252" />
        <di:waypoint x="94" y="252" />
        <di:waypoint x="94" y="405" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-426" bpmnElement="_6-426">
        <di:waypoint x="480" y="200" />
        <di:waypoint x="498" y="200" />
        <di:waypoint x="517" y="200" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-693" bpmnElement="_6-693">
        <di:waypoint x="161" y="441" />
        <di:waypoint x="161" y="556" />
        <di:waypoint x="252" y="555" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-178" bpmnElement="_6-178">
        <di:waypoint x="228" y="111" />
        <di:waypoint x="265" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-746" bpmnElement="_6-746">
        <di:waypoint x="370" y="420" />
        <di:waypoint x="386" y="420" />
        <di:waypoint x="386" y="474" />
        <di:waypoint x="191" y="474" />
        <di:waypoint x="191" y="420" />
        <di:waypoint x="218" y="420" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Trisotech.Visio__6__6-434" bpmnElement="_6-434">
        <di:waypoint x="810" y="111" />
        <di:waypoint x="834" y="111" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</semantic:definitions>
r''',
'GET https://kroki.io/bpmn/svg/eNrNXF9znLYWf8-nYPY9XiEJAZ7YmSZ2b-_cJPU0aadvHgzyLpNd2AtsbOepH6RzP1w_yZXEf5BAUJtuX9KKo6PzO_-PtM2bt4_7nfGNJmkYRxcr8wysDBr5cRBGm4vVr19-fO2s3l6-epPSvRdloX8e0PswCjNGnRpsa5SeP6bhxWqbZYfz9frh4eHsAZ3FyWYNATDXv3_88Nnfsr2vwyjNvMinq2JX0N4U7zdiV3qg_vrqiu02AbAgXl_9u9xxd9hHQ7ve3Xz8JNsX-JonvS93lGB1z_r489X1h5URBherWxPalouBiyBwnJWRecmGZp-8PU0Pnk9bHLMkTOOM-tszP96vG4pdd7nQx0OcZDS5WL339sco8IyPcUB3NKk__Vab0CTMipevDKO2Gjs-9Ta0KyIymbnXWqQYoR7pIYl9Rp2TktcmU0F6_Uj9Y-bd7RjWe2-XUiFJc9fOi-hnmoldu5Ttw8gpiLpkJWdiMTkjpsSLlc9Qf63Imxvud_HDJ6aWX-j95c9JQJNfqE_DbzS4_kaj7M1aSjjCR5wN5--18by9773d_v0xzeI9Tb546ddhLo2vXGvDusSYlLo8hN-_ewaLz_uVBhhM0LOK4ZRiME9mZkqejLv4SUcQy8SzLWIRa741TTJDAZ1F5vndgGCJMcmEkwrl9H23VJT4YiTFJ0nMxMdsE7PMLaRFoHF09aW3p4h3cdBVlYOMYpmhU2SMFrIaQhfcwUu83Y7u_uVl9MF7qiMalqgkOEJWgfZSHNWXYeyuqYW9vQcp9zQ-dPB04YYRy8V7GoTs83sv87e1XfN8UKL-64__PWxpwuIhNfZPhgjFt3_98eeYNlrI1Npo7rExmaxBGzsv4D11EWnpVK60rmozlgeFIrvJsVQpXzf84sNqTCfODJ0QHQ_hciplz_NoKfE77ys1si3NzT9qejQ9EBB8DpFZxi1FvsqTtb7ULQl0pcbPIjWxSqmLdGocvKc9T6hjMuMZMs92DhoF7SxhEu3cqBfZPLzCiEVXN077sVgK0ytS9L9HNhjQH1nZqwRFVVu2MtL4mPh5xMsqWN4I5wmhSP9rvTOg9IwykNp8haNq8sUqvoJJhy93JU2-RMmXM-nogZtaj69rqvgKZXb42tp6cNEEvkLlWnxtLNdDP3nPldyuO8ie5Hbbgv1D80lm3R1ltEYh03XGRiGoNwp1Oj_hECWmn47RhvXE93GizLPN_GNCSyf_qBu1KnN-ZoOln_1www9tltd83fC00n5bHL0UatrOc6R9Zqh2w6wpsT29I8AQzE763AbvvJQGnc7YdIBm9m-frtcL4hndNIZwcjeNoVYJ72lhWj8NAWzPsgOzUVtzcIYWXqIjrnPJjI54RDmmWyqHAIMBPGY0HVUMnqEYoqWYLGTZt6MW2dTN6a4YolIt7VBSMpk_T3Bd1VX7B7bKk65ug9uGr6kyBJ4j0yFQ9TA3LIHoSzwj0z1PS46sqiW_9jJ9iWc05Pj5GnIMSLMqs5KSelmY3ofjiWagQZ_ZdLPKqmx7zFbX0y_kWn0VK4TSA_rs2p2bqLtaJ7DCpYIgmHT4OkCbr3JWEEzafEXx0OSLp_DleVeTr3JWEEw6fBHR5qvsjAXoNl-RRfT4IqXdhHCz7aaexYRwHXktS5uvUr-CSWe2AURzLvDj3c67ixNPVHZxJVVXdMuyV5JLUPZHePDqnGJVY5cIKKMcT1ZGcWSlWQlYCT_-iNJiyPJJEPfZmRJ2RW_SHmOddmcV81Z6LFplg7_WaRhOcCz5iChlW9lfNIaHTGMkl4eDlHulon0c0ScN15VfI0h5g5b6Na4o5OlMwtu2wKzJvM4_jfhohYL4lj_TnvMX0qvQ2yTeXhz8pXrs_C1Mw_j1bWWaXxmjbEcDoyBfGUHsH_k1nWDKpUxoGu-O-X-55AzwfyCxAXQcUL4dNg--ES9NfOF6RzknRYS2d33eegcqE_a2iNcWw2ItTH-Kk_B7zKTdXayy5EibT1iBf_4uPkZBajxerExmoKf8j4cwyLbsXwFmdtzScLNlHKFbe15Xtg_eHd01O-Ku3JMBiYTRRSQWp0NCdo3JBVYNCSF7OUi35UtxF5VYnIAK91E5dgOVaeJlUYk3256t-OJ0VNghJ4NK5oHYmYOKAKBABdwFUckKYAuhhECFzHZze_F4KpDx_qsKLbB0ZEFZZEF1buA1jIeR61YAuLVKABguDIC3DT0AbFEFAJpOYQFcW6ABAC0JoF-d2-Wt-1kJioc_t0ozDaAaFHEWTgJEUlj5ohKAlUe8Bc2TACBasV5nYKrdChOcpyzongYA3pT2ALBFFQAC0EkBEI9ovcBmi8rMCouige1_PrCLe5u-_Gr95xHskpOoC72s2rsnUhcISwCx7ZNwIzHMds3AF5WZiJyW_I6k9eWLKvmRndc3F5xEfRYDbFd-vqiMAx6-XH7rJKJYXNn15GeLykKAc_2bDj4NAEiSR_miCoBl5gYwyWn0EuLGpQuAL6oLATmlCBaXkj35LXUldhA-JfnFDWqvlwNqB3ItsmQEXwebwTKMZXcHuJ1Aw_MH7-kQh1EmIgCQuhVaj9MhBw_SEYIm0TXfXKaoiGtijoaQTENoSENi_uZDFASDiMppsUf3wohcWe_lmkOIHKiFCAKgR1eOmQsjl92-8EW1pLaVpxvRuK3H6TBwhr0YAU06Ux5lL6sh8ZzYS2cQDmhI2JBryDQHEYl7Vg26ssXp0b20b8gmKr5YvCdw4rsd_U8YMR5RHN2Kn2J4WRhtBrRDLEcrW5Z0uFsAun5WRqImXc9vX9p_ZPebcCjCSHHpN-YXZeOysF_YspxhD-YMaGlmQeLo0RX3VwtnS3Fc35ZDlQ9hvRhHhOjR2c4_kgtkUwHpTAUdLy5sRBq_FpZ6McB6dOV9TZfuhb1d9pbEFwdsBJ36dnWtQYeHK59lw0l0EOFFo0LmG3jQN1xTLypcpBcV5QixeFTIXkPQUG-AUH5dZFnD3ROy0CS6seip7puXjR7xP1j0NYSHpqkiY44hqi6gl0UkfnnXvyC0hrxdz4nF06sOXXFjurCzY9nYhwfHPlIMP2IIGjJlkQ606Sw4kgiJHh12tegQAZPoTrWIY1m6wnAwGC15SVHQIThMB4u7Kl06DJYtZRDLGryhdCUetrktR8aPkm7Mx8v74B7dSydq2UUAGmrqUXGdNXYRUNKNRY-Lp5CJX0Qs6RmyJgcONTnY0ct-2NXLfuVF-9Ke4SLZ5Rgauhwj-VUNxiOVrKCzrOFGuXrttxa1ufgNfK_U24ODLtRrbMtXw8VHdyIb3Ye8GNl6oztSjeQqOnu4ApiuOY3uNC9YsawBxoMNsGPqdRHlu8_f96HW8k35t5a0Vouf5V6-avzst_GXFV3-H5kvsko=',
'bpmn'),

KrokiExample(
  'Bytefield',
'Bytefield',
r'''(defattrs :bg-green {:fill "#a0ffa0"})
(defattrs :bg-yellow {:fill "#ffffa0"})
(defattrs :bg-pink {:fill "#ffb0a0"})
(defattrs :bg-cyan {:fill "#a0fafa"})
(defattrs :bg-purple {:fill "#e4b5f7"})

(defn draw-group-label-header
  "Creates a small borderless box used to draw the textual label headers
  used below the byte labels for remotedb message diagrams.
  Arguments are the number of colums to span and the text of the
  label."
  [span label]
  (draw-box (text label [:math {:font-size 12}]) {:span    span
                                                  :borders #{}
                                                  :height  14}))

(defn draw-remotedb-header
  "Generates the byte and field labels and standard header fields of a
  request or response message for the remotedb database server with
  the specified kind and args values."
  [kind args]
  (draw-column-headers)
  (draw-group-label-header 5 "start")
  (draw-group-label-header 5 "TxID")
  (draw-group-label-header 3 "type")
  (draw-group-label-header 2 "args")
  (draw-group-label-header 1 "tags")
  (next-row 18)

  (draw-box 0x11 :bg-green)
  (draw-box 0x872349ae [{:span 4} :bg-green])
  (draw-box 0x11 :bg-yellow)
  (draw-box (text "TxID" :math) [{:span 4} :bg-yellow])
  (draw-box 0x10 :bg-pink)
  (draw-box (hex-text kind 4 :bold) [{:span 2} :bg-pink])
  (draw-box 0x0f :bg-cyan)
  (draw-box (hex-text args 2 :bold) :bg-cyan)
  (draw-box 0x14 :bg-purple)

  (draw-box (text "0000000c" :hex [[:plain {:font-weight "light" :font-size 16}] " (12)"])
            [{:span 4} :bg-purple])
  (draw-box (hex-text 6 2 :bold) [:box-first :bg-purple])
  (doseq [val [6 6 3 6 6 6 6 3]]
    (draw-box (hex-text val 2 :bold) [:box-related :bg-purple]))
  (doseq [val [0 0]]
    (draw-box val [:box-related :bg-purple]))
  (draw-box 0 [:box-last :bg-purple]))

(draw-remotedb-header 0x4702 9)

(draw-box 0x11)
(draw-box 0x2104 {:span 4})
(draw-box 0x11)
(draw-box 0 {:span 4})
(draw-box 0x11)
(draw-box (text "length" [:math] [:sub 1]) {:span 4})
(draw-box 0x14)

(draw-box (text "length" [:math] [:sub 1]) {:span 4})
(draw-gap "Cue and loop point bytes")

(draw-box nil :box-below)
(draw-box 0x11)
(draw-box 0x36 {:span 4})
(draw-box 0x11)
(draw-box (text "num" [:math] [:sub "hot"]) {:span 4})
(draw-box 0x11)
(draw-box (text "num" [:math] [:sub "cue"]) {:span 4})

(draw-box 0x11)
(draw-box (text "length" [:math] [:sub 2]) {:span 4})
(draw-box 0x14)
(draw-box (text "length" [:math] [:sub 2]) {:span 4})
(draw-gap "Unknown bytes" {:min-label-columns 6})
(draw-bottom)
r''',
'GET https://kroki.io/bytefield/svg/eNqllcuOmzAUhvd5iiPPJiyQgDDMDNt20327QixMMBfF2BRMQzri3WsM4T7MpYkUC_P59_F_znGOIYmwEEUJbhDrcUEIg1c3SikF9ICNKMIGarTDcYbdCKX8OnJRtM3lKbtMqcDYos43PN8TR3hDqypySkaO2MFj9NRyCmQQFvgqD8CrXKc4IFRPCA5JcQDwylzuoCZ9-XhUZMBrOApSi-4FeG6GRdLqcyb0Mv1LwLQaX5Mzarn6cQNeSM0SHl4bcBOSxokA0260eRQFybggYTAJ4ZKyEHARl2MEZ06rjPVMqQ3z6zPAI6BS4EKg96if9Y_v-9AJkLjlZB-yALWx7kOmVMJ3iEkn9UIWhfksvZiabNSmORaXtnj3_GSd7BdMwOt9tpsR9rVtpa7-tI1cdgaAyqW21OyWrUWNoVgXkgmpdSWrsme36afhKGs1w8KVqBENtf2WaOuwdLoX3aZldPak_BfW9mc2us8ZtSVZg-e5OcUpu9fytStTRNtBMpMCdxofEBxNS0P-yq5uS_-t8J0xdk-OtR6lRSnWK3lJfoP3B8sWc-SiEzj99-S3vbAt3uIL-YJQLJtqtsFqBwOMlap68Y7E4HdPUrw4imrwjd6WGbKfDAteBuBeqdrs2TINGwZ_tT32Y1ife0pYLBLUX1--HMsqAHO8t1Yq9izSz8vEOAf0rSKAZU9QznPIecoEBDdB2stgIs5SCspOeWu0_bpn0Mn51LlZlS2jRQkXaOfgH5U5V2Qh89U0WPtp-B8VlYVf7ML4lfXWSyhLWX9Hd38uJTiTfYXgmXb4BwBAgK8=',
'bytefield'),

KrokiExample(
'Digital Timing diagram',
'WaveDrom',
r'''{ signal: [
  { name: "clk",         wave: "p.....|..." },
  { name: "Data",        wave: "x.345x|=.x", data: ["head", "body", "tail", "data"] },
  { name: "Request",     wave: "0.1..0|1.0" },
  {},
  { name: "Acknowledge", wave: "1.....|01." }
]}
''',
'GET https://kroki.io/wavedrom/svg/eNqrVijOTM9LzLFSiOZSUKhWyEvMTbVSUErOyVbSUYCB8sQykGCBHgjUALGSQq0OsnKXxJJEhHqo8go9YxPTihpbvQqgVApQBdAOpYzUxBQgVykpP6USRJckZuaAaJC8UiyasUGphaWpxSVQk6HGGugZ6ukZ1BjqGcBcgarJMTk7L788JzUlPRWoEarJEOJ0A0OQ07liawGPW0Gr',
'wavedrom'),

KrokiExample(
  'Connected Servers',
'Svgbob',
r'''
                  .-,(  ),-.
   ___  _      .-(          )-.
  [___]|=| -->(                )      __________
  /::/ |_|     '-(          ).-' --->[_...__...°]
                  '-.( ).-'
                          \      ____   __
                           '--->|    | |==|
                                |____| |  |
                                /::::/ |__|
''',
'GET https://kroki.io/svgbob/svg/eNqFj9ENgzAMRP8zhf-SSNj8I4VFKPIiN1Rn6GQcRoBaKrgPJ9G9nO0kF5l2RaR2aokvd2fZnXJiNfyJ_owGUR3Lb1LdDj_ED_0w9AJHOPkr0DQzRsfJzczX8nnP6TpgVitB__F2vc7WcdygzGPTGAiC1nDHhrDGkuXtkeW-28aOtACrBT_p',
'svgbob'),

KrokiExample(
'Ascii Art',
'Svgbob',
r'''
  _____
 /  O__]
/  ___]
\   \
 |   |
 |   |
 /   /
 \   \
 /   /
''',
'GET https://kroki.io/svgbob/svg/eNrjUlCIBwEuBX0FBf_4-FgFLn2wEJARo6CgAMRcCjVARg2MBqtU0OdSAEvDeAAtOA3-',
'svgbob'),

KrokiExample(
  'Impossible trident',
'Pikchr',
r'''
# Impossible trident pikchr script
# https://en.wikipedia.org/wiki/Impossible_trident
# pikchr script by Kees Nuyt, license Creative Commons BY-NC-SA
# https://creativecommons.org/licenses/by-nc-sa/4.0/

scale = 1.0
eh = 0.5cm
ew = 0.2cm
ed = 2 * eh
er = 0.4cm
lws = 4.0cm
lwm = lws + er
lwl = lwm + er

ellipse height eh width ew
L1: line width lwl from last ellipse.n
line width lwm from last ellipse.s
LV: line height eh down

move right er down ed from last ellipse.n
ellipse height eh width ew
L3: line width lws right from last ellipse.n to LV.end then down eh right ew
line width lwm right from last ellipse.s then to LV.start

move right er down ed from last ellipse.n
ellipse height eh width ew
line width lwl right from last ellipse.n then to L1.end
line width lwl right from last ellipse.s then up eh
GET https://kroki.io/pikchr/svg/eNqtUD1PwzAQ3f0rTuoGxGlLWSoxQCdE1QWpEhNKnKO2GtuRzyXqv-eSuCqtSsXA9u7p7n3cCF5s44lMWSPEYCp0ERqzVToAqWCaKEagY2xonufoZGu2psHKFNKHTd5N-VHgIwnwyYkElHt4RSRY7fbxDmqj0BHCImARzRcDb613BM_v2WqRvT3BD0-VltSw09smAcrLfeZURkU-k-NcCFIFt3iEiRwL1AzG8kFZgW0Ppx2sGE7hBlALDD09Y7puiTGL9Ngy7phbwMBj3Y92GAXWtWk4vEaz0ZF1oDVV1ICtWE7m3M1hYrrLz-At1AXx4nAnnThZsRdWSCzXSenoUvnWCWE9vysMXOg54EqXXK7lvD_LSUnygg5ED8u1RFdB1OiSpT5kaM_b_CZEw_mgRrEI8Z_KnD38SpGD_6Rr89e7lHvXsOk31fIV1Q==
Context diagram#
C4 PlantUML
@startuml
!include C4_Context.puml

LAYOUT_WITH_LEGEND()

title System Context diagram for Internet Banking System

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")
System(banking_system, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, banking_system, "Uses")
Rel_Back(customer, mail_system, "Sends e-mails to")
Rel_Neighbor(banking_system, mail_system, "Sends e-mails", "SMTP")
Rel(banking_system, mainframe, "Uses")
@enduml
''',
'GET https://kroki.io/c4plantuml/svg/eNp9UstuwjAQvOcrtpxAopz6ATwatUhAUQFVPUWLWYiFYyN7U-Dv6yROAEF7y-7O7M6M03eMlvNMRU9SC5VvCEYvychophP3DsUgmgy-P1bL5Gu8fE8m8Vs8e213ooglK4LF2TFlEAiwkbizmMHWWBj7ltXEMES9l3oXsFE0J-uMbovcscnIdqFVdVA10FGYtfxwADUSzBY4JVh7VBeOklM41MyiByiEyTW7XqsTVdfa62pj4srSr_tDVnlJKXN0zTkHbOBH0hGk9oYyZGk04NrkXMiQ9vZoF1BvIMM9wQHPGQUdQUgSn7idoVQXJfFzUYNr7i-9N1nK84amUljjzJYhPokU9Y6ArgkXj_VqvfXRk98zrb8feFywseQAlarTFL4BIaYHTps0uldO2aJ2KAqYr4hF6fST1NWr3iW_cuQ8zKOSIYr9FfQ2lwXpjQtmizcInBnJXbo29u5J_2GXjqfLebXiEbMJLajre7r_638BryMW3g==',
'c4plantuml'),

KrokiExample(
'Container diagram',
'C4 PlantUML',
r'''@startuml
!include C4_Container.puml

LAYOUT_TOP_DOWN()
LAYOUT_WITH_LEGEND()

title Container diagram for Internet Banking System

Person(customer, Customer, "A customer of the bank, with personal bank accounts")

System_Boundary(c1, "Internet Banking") {
    Container(web_app, "Web Application", "Java, Spring MVC", "Delivers the static content and the Internet banking SPA")
    Container(spa, "Single-Page App", "JavaScript, Angular", "Provides all the Internet banking functionality to cutomers via their web browser")
    Container(mobile_app, "Mobile App", "C#, Xamarin", "Provides a limited subset of the Internet banking functionality to customers via their mobile device")
    ContainerDb(database, "Database", "SQL Database", "Stores user registraion information, hased auth credentials, access logs, etc.")
    Container(backend_api, "API Application", "Java, Docker Container", "Provides Internet banking functionality via API")
}

System_Ext(email_system, "E-Mail System", "The internal Microsoft Exchange system")
System_Ext(banking_system, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, web_app, "Uses", "HTTPS")
Rel(customer, spa, "Uses", "HTTPS")
Rel(customer, mobile_app, "Uses")

Rel_Neighbor(web_app, spa, "Delivers")
Rel(spa, backend_api, "Uses", "async, JSON/HTTPS")
Rel(mobile_app, backend_api, "Uses", "async, JSON/HTTPS")
Rel_Back_Neighbor(database, backend_api, "Reads from and writes to", "sync, JDBC")

Rel_Back(customer, email_system, "Sends e-mails to")
Rel_Back(email_system, backend_api, "Sends e-mails using", "sync, SMTP")
Rel_Neighbor(backend_api, banking_system, "Uses", "sync/async, XML/HTTPS")
@enduml
''',
'GET https://kroki.io/c4plantuml/svg/eNqVVdtu2zAMfc9XcNlLBrgtBuwDmhvWFkmb1enaPRm0zCRCZcmQ5LTFsH8f5dhOnBS7-MmiycPDQ1K-dB6tL3PV-yC1UGVGMP6SjI32KDXZ8yJ86s2GP-4elsnybpFM7h5vB58ay-P18iqZTb9Obyds7HnpFQM00ZBJXFvMYWUsXGtPVpOHEepnqdcQvzlPea-3IOuMHojSeZOTjWDcvvWH0JjBrMBvCFKOjuBF-g0UVSCqygYohCm1d33msYNORmzI0L4NxGfGOibQ_wQ_e8BPy3fwQmmCRcHOj5TCsCiUFOil0X023eAWI4gLG8jPv4-DbUJKbplGRY2l9FKAYDjSHlBnlbnNmzaFL4ZMspvZFYzdj_mzorMFrilkb7LGwsrCRzDU61KhDeaFNVuZkQNU6v0sq1KLQB2V9G_gDStZCelgKzGESAtcL6TWvDiyJ4xyk0pFtRzz6tBwGn-M4AlzZCW6XEDJXHrKwJWpYy51z_6FmzshtyMAGW2loGN6k3SQoccUHYU21K-BTfxtBp2zN5a5lVwjWFpL5y1yapCapzKvuhvBhp0zwJKnSljKuH0SlYvCUJFzoMyaD-TF-YlMKYpn0hnrJMO8Lq7fH5uJYTe7j-vo9hd9giQMzKl_taM9ffUDylGqxFUGhpuezflcr1XAX7L0soLmHZlLYY0zKw_TV7FBzRO2i2TYA8yawR6VMfWKd5iO9vZA2jCCdacFG9oqDhQGTE3p922O2nWNgPuhHVb17kXu3ZM6uBL2i_ngyIXcV8vlImbHrt9ujf7s0xnsynWXLrklud6k5uAa2ME1S14jVcZu25uE6N60iOAmvru9OEx-mPK_IpMRe--J7Ue-i3JPmDlYWZNXt86L5SXkO8kE5Bp4Mho3dQbMAz2OxihmWAd0FqwVxp7I0cR1OXTjShdu2DZ9PF8uaqC2mE74ydw1woT4i1qdp_msFeeSQ_nf9BvklUnz',
'c4plantuml'),

KrokiExample(
'Container diagram',
'Structurizr',
r'''
workspace "Big Bank plc" "This is an example workspace to illustrate the key features of Structurizr, via the DSL, based around a fictional online banking system." {

    model {
        customer = person "Personal Banking Customer" "A customer of the bank, with personal bank accounts." "Customer"

        enterprise "Big Bank plc" {
            supportStaff = person "Customer Service Staff" "Customer service staff within the bank." "Bank Staff"
            backoffice = person "Back Office Staff" "Administration and support staff within the bank." "Bank Staff"

            mainframe = softwaresystem "Mainframe Banking System" "Stores all of the core banking information about customers, accounts, transactions, etc." "Existing System"
            email = softwaresystem "E-mail System" "The internal Microsoft Exchange e-mail system." "Existing System"
            atm = softwaresystem "ATM" "Allows customers to withdraw cash." "Existing System"

            internetBankingSystem = softwaresystem "Internet Banking System" "Allows customers to view information about their bank accounts, and make payments." {
                singlePageApplication = container "Single-Page Application" "Provides all of the Internet banking functionality to customers via their web browser." "JavaScript and Angular" "Web Browser"
                mobileApp = container "Mobile App" "Provides a limited subset of the Internet banking functionality to customers via their mobile device." "Xamarin" "Mobile App"
                webApplication = container "Web Application" "Delivers the static content and the Internet banking single page application." "Java and Spring MVC"
                apiApplication = container "API Application" "Provides Internet banking functionality via a JSON/HTTPS API." "Java and Spring MVC" {
                    signinController = component "Sign In Controller" "Allows users to sign in to the Internet Banking System." "Spring MVC Rest Controller"
                    accountsSummaryController = component "Accounts Summary Controller" "Provides customers with a summary of their bank accounts." "Spring MVC Rest Controller"
                    resetPasswordController = component "Reset Password Controller" "Allows users to reset their passwords with a single use URL." "Spring MVC Rest Controller"
                    securityComponent = component "Security Component" "Provides functionality related to signing in, changing passwords, etc." "Spring Bean"
                    mainframeBankingSystemFacade = component "Mainframe Banking System Facade" "A facade onto the mainframe banking system." "Spring Bean"
                    emailComponent = component "E-mail Component" "Sends e-mails to users." "Spring Bean"
                }
                database = container "Database" "Stores user registration information, hashed authentication credentials, access logs, etc." "Oracle Database Schema" "Database"
            }
        }

        # relationships between people and software systems
        customer -> internetBankingSystem "Views account balances, and makes payments using"
        internetBankingSystem -> mainframe "Gets account information from, and makes payments using"
        internetBankingSystem -> email "Sends e-mail using"
        email -> customer "Sends e-mails to"
        customer -> supportStaff "Asks questions to" "Telephone"
        supportStaff -> mainframe "Uses"
        customer -> atm "Withdraws cash using"
        atm -> mainframe "Uses"
        backoffice -> mainframe "Uses"

        # relationships to/from containers
        customer -> webApplication "Visits bigbank.com/ib using" "HTTPS"
        customer -> singlePageApplication "Views account balances, and makes payments using"
        customer -> mobileApp "Views account balances, and makes payments using"
        webApplication -> singlePageApplication "Delivers to the customer's web browser"

        # relationships to/from components
        singlePageApplication -> signinController "Makes API calls to" "JSON/HTTPS"
        singlePageApplication -> accountsSummaryController "Makes API calls to" "JSON/HTTPS"
        singlePageApplication -> resetPasswordController "Makes API calls to" "JSON/HTTPS"
        mobileApp -> signinController "Makes API calls to" "JSON/HTTPS"
        mobileApp -> accountsSummaryController "Makes API calls to" "JSON/HTTPS"
        mobileApp -> resetPasswordController "Makes API calls to" "JSON/HTTPS"
        signinController -> securityComponent "Uses"
        accountsSummaryController -> mainframeBankingSystemFacade "Uses"
        resetPasswordController -> securityComponent "Uses"
        resetPasswordController -> emailComponent "Uses"
        securityComponent -> database "Reads from and writes to" "JDBC"
        mainframeBankingSystemFacade -> mainframe "Makes API calls to" "XML/HTTPS"
        emailComponent -> email "Sends e-mail using"

        deploymentEnvironment "Development" {
            deploymentNode "Developer Laptop" "" "Microsoft Windows 10 or Apple macOS" {
                deploymentNode "Web Browser" "" "Chrome, Firefox, Safari, or Edge" {
                    developerSinglePageApplicationInstance = containerInstance singlePageApplication
                }
                deploymentNode "Docker Container - Web Server" "" "Docker" {
                    deploymentNode "Apache Tomcat" "" "Apache Tomcat 8.x" {
                        developerWebApplicationInstance = containerInstance webApplication
                        developerApiApplicationInstance = containerInstance apiApplication
                    }
                }
                deploymentNode "Docker Container - Database Server" "" "Docker" {
                    deploymentNode "Database Server" "" "Oracle 12c" {
                        developerDatabaseInstance = containerInstance database
                    }
                }
            }
            deploymentNode "Big Bank plc" "" "Big Bank plc data center" "" {
                deploymentNode "bigbank-dev001" "" "" "" {
                    softwareSystemInstance mainframe
                }
            }

        }

        deploymentEnvironment "Live" {
            deploymentNode "Customer's mobile device" "" "Apple iOS or Android" {
                liveMobileAppInstance = containerInstance mobileApp
            }
            deploymentNode "Customer's computer" "" "Microsoft Windows or Apple macOS" {
                deploymentNode "Web Browser" "" "Chrome, Firefox, Safari, or Edge" {
                    liveSinglePageApplicationInstance = containerInstance singlePageApplication
                }
            }

            deploymentNode "Big Bank plc" "" "Big Bank plc data center" {
                deploymentNode "bigbank-web***" "" "Ubuntu 16.04 LTS" "" 4 {
                    deploymentNode "Apache Tomcat" "" "Apache Tomcat 8.x" {
                        liveWebApplicationInstance = containerInstance webApplication
                    }
                }
                deploymentNode "bigbank-api***" "" "Ubuntu 16.04 LTS" "" 8 {
                    deploymentNode "Apache Tomcat" "" "Apache Tomcat 8.x" {
                        liveApiApplicationInstance = containerInstance apiApplication
                    }
                }

                deploymentNode "bigbank-db01" "" "Ubuntu 16.04 LTS" {
                    primaryDatabaseServer = deploymentNode "Oracle - Primary" "" "Oracle 12c" {
                        livePrimaryDatabaseInstance = containerInstance database
                    }
                }
                deploymentNode "bigbank-db02" "" "Ubuntu 16.04 LTS" "Failover" {
                    secondaryDatabaseServer = deploymentNode "Oracle - Secondary" "" "Oracle 12c" "Failover" {
                        liveSecondaryDatabaseInstance = containerInstance database "Failover"
                    }
                }
                deploymentNode "bigbank-prod001" "" "" "" {
                    softwareSystemInstance mainframe
                }
            }

            primaryDatabaseServer -> secondaryDatabaseServer "Replicates data to"
        }
    }

    views {
        systemlandscape "SystemLandscape" {
            include *
            autoLayout
        }

        systemcontext internetBankingSystem "SystemContext" {
            include *
            animation {
                internetBankingSystem
                customer
                mainframe
                email
            }
            autoLayout
        }

        container internetBankingSystem "Containers" {
            include *
            animation {
                customer mainframe email
                webApplication
                singlePageApplication
                mobileApp
                apiApplication
                database
            }
            autoLayout
        }

        component apiApplication "Components" {
            include *
            animation {
                singlePageApplication mobileApp database email mainframe
                signinController securityComponent
                accountsSummaryController mainframeBankingSystemFacade
                resetPasswordController emailComponent
            }
            autoLayout
        }

        dynamic apiApplication "SignIn" "Summarises how the sign in feature works in the single-page application." {
            singlePageApplication -> signinController "Submits credentials to"
            signinController -> securityComponent "Validates credentials using"
            securityComponent -> database "select * from users where username = ?"
            database -> securityComponent "Returns user data to"
            securityComponent -> signinController "Returns true if the hashed password matches"
            signinController -> singlePageApplication "Sends back an authentication token to"
            autoLayout
        }

        deployment internetBankingSystem "Development" "DevelopmentDeployment" {
            include *
            animation {
                developerSinglePageApplicationInstance
                developerWebApplicationInstance developerApiApplicationInstance
                developerDatabaseInstance
            }
            autoLayout
        }

        deployment internetBankingSystem "Live" "LiveDeployment" {
            include *
            animation {
                liveSinglePageApplicationInstance
                liveMobileAppInstance
                liveWebApplicationInstance liveApiApplicationInstance
                livePrimaryDatabaseInstance
                liveSecondaryDatabaseInstance
            }
            autoLayout
        }

        styles {
            element "Person" {
                color #ffffff
                fontSize 22
                shape Person
            }
            element "Customer" {
                background #08427b
            }
            element "Bank Staff" {
                background #999999
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Existing System" {
                background #999999
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Mobile App" {
                shape MobileDeviceLandscape
            }
            element "Database" {
                shape Cylinder
            }
            element "Component" {
                background #85bbf0
                color #000000
            }
            element "Failover" {
                opacity 25
            }
        }
    }
}
''',
'GET https://kroki.io/structurizr/svg/eNrFWm1v2zgS_u5fQagf7i5wmpdNe7kF9g5O0t51kWyCKm33Ky3RNhFJ1Im0nWyR_34zJPVCSbTlONszghiWyHl5ZjgzHPLoYEQOyP2CSwJ_lEQinfKMxWTFCslFRsSMqAUjM5EkYs2zOVmL4kHmNGLyZ5iKsw9JcMHn5IJmDyRPIvgdPknFUnJNs1hGNGcB-etCqVz-fHQkVbGM1LLgfxRvgdmRXNCCHZ2enx6fHP2tn9qnTLEiY0o_QxEM-a1Ef3p_coZED45GldAu8YAEleoZYY80zRNWa0iUIDxJlkCeKqZxeGBPZMYo8GISsQlrzmOy4lQPugqvx2RKJcBIC7HM4IvMeKQAT5oQkSWAMLw3ykitzNuAfB-NCHxSEbMEfhD7iYC9SFlBfiE52ARMEtzpbyBVAnJpx4A-k3qCNR0yGpM1VwtLACbiM0KjCIRTEngHFYVRxZgh7HnBZQe0Wjj8yGWei0KFis5mDSFLiiRkxYoDmHpAgxWR9oXUM1FAnlUSo1Cao5nmcJzS6EHMZji35ncBD8mteVqymsQpz7g2H_oyuGMp7TCmDteU8mxW0BSZSjFTa_AxYzwS3FTv2j4ahEqgr9AkKQ0SwYPK_DBPFKmVbyqWqrKfHFcWGhNQIZNUuxD8YipCUT88gm4NZo64DORNekT9cKhfVPLdg0RcrzDwixseFQJnkA-P0YJmc0aYGV-56WauVKU9PCf3N2gNDCGy1g-XFxogLuiaRFQueqk75LkNBRZlG2e6DL0ho1eIFWfrHkOArXjhLpWx9qGUPjCS06eUmdXjrge9JoBnwu7onE3yPOGRIfsLmD5T4Crg_EGohxziGNIYBCLeFWLFY9dnKoVKv5ktMxtQuHpCJWqNbBgC2ddsSqYF6MsKxPZXuqJhVPBcaTUm2XyZUAwa32DchRkXdHRJxZQnqIcr_41-jKI7IpOEp1wxXGhTCfLuJb9hTWKGcQI1-J2mtOAIUoN9R2JQ2ws7qurCfcUSvtKesNCxSPFITwDjaph6xTcGBicA69GaXImynhhC8IShN18vuyLSnHtFnNx98nnEFhgROUp-DW9_O_rP_f1dSICUT6QerzWeO894dgnSFJDyddqBjJqLDOEAp51nIASp39dLaintckISBKOqcLFz1yLKVYtDPjOpmmR7hSuXYbhMwQ-efFJO7DBix7niVmDWHqeTIwWXNcONz7bX_ksEhojE1B2VEmqK2CfuZxxEylGbsdUErXS5nVHLb5wSBpMvn69fIq9kEdQyCpAtpXPNb1-T6n0TT9cXC5ZQjAPWIUyuGxOdVfBHJX2VzqywF4xm_dJVGdgJ_x9pRGPmCurLx8QM1nXSzMwDRIyf1vm9U5ptF01nWw9qNuM2MQsZVMY2tWq7agNv5fTceRJTRbHSdCPIlX1alx9IH0wyr4uhRr4bkwVkX6xWlwBEpsqoFBUsxp80MbUIk5IkYl5b7LagEThcyY6E0QKACBoCjPrFf67T-hvjKVjYLHguyZSpNWMZ1HUCi3Fds9nsbg0iu7Xx4T89pUHwFXK7LNcwWDahGehR53FZJXLACObVEvcTBE61owT_Zqom3qwgZoVI92JiyjfHUdpzzRAYW8HQ8augFyqnYg8m8kGS_y4hPKANcBIUhSxh-QK8tSbgTHJR-CKZ7OeE5WDwzdZ4Uhd5bS1wyCZyjWK_b5jXj5Q4QiPUy6LfbVq1AviL5GCmKZ_rDQHuJvnUykwCnVU9oPaWfHv4X5N4XYPtQbClql_muiIykbGU5C-yWVEOwt6GvBr7fpZallbhAUEctcFqKIJK2HpmXdwE22n664VXIO7L7cNJ11bdT3-Hzmvo7BDcX8-Oaqhup9JorXu_Hs0w0FcJtAj55B8ixIa5rYzfmtilDFOqZA0lH4U4rdcIrts1DGUlgFcXjf3CRkXdeNhrjt9vrtvWaAm-OddUs2KWJ0LHlQ_ZihciS7XWV2zFEpGnuqxxdxT1jN8EWsUOBfSuaa4EbhtxH1d1HL7xLMZa9-SYiEJvgLAmi27Dvq1Km3hzB6vpXi4AXDYmH3nBZuJxTEI6g63jGGl_iOfMt_-JSynDvnX_KYMNYhY55Vb1rDdSDKnh2kCJ6AFQuqzquUOC6mEfrdTODPHr4BKc5BQKM3IvUpDJEHAekfO3jz5aDibfnAyyEQw32WwnPXE2xBtJu3vnXtLPrwN7Xdi-GPteErZuPjmNBsFe0tiIShlcXoTH88aV22qZB60OPXImkW4X67fbV6utrg5Bw-PjE0PSM1UHU1v_m-BXaVzFvq3K9e07PAHtGiqfbZHssq6HnA5VubQwcvHbUIexLC4Ej_s0wxrrpky0G01bpeMdbNaQEauwZWmcnoD7f4y2iMGPCbTPo1dz8eH-DUHw4ODA0PsyhWpmSU7evz0-I9f3oX569oMiOOL8usH7JRG2hAUC-GZYzn8gLH9-4hkeDqdlMOyi0q9EXnAsjssEYXIMyN7mYBPOIbkzE3ZJQwjSncvnz0tEW-A59TrNRyhaxcqfl6EgF1m8E1ZhOaWL1lZ2VXBrsx0EXYP-q6OYFyL-sUnX76hmC9ZrF9gimZUGexodfZvNLMPKsljphkithGkSJuXdA9jX6AeNywjfW2eKUbIEhA7cg8ylEtf0SSxVX_FgeOhTokflaz2a70szaCDXjNsGYtcovVw6o8pezcjbPB_19q43lBaboajbzh4YqoJa7o9B1ROr971d6bu9rmHns_6Tzy3Hd96u_B6gltvz1kFhUG3cXwHN_tZW3fypwpFpEPg9qNPg6bQ_RsOP8ja1PEZDD9jcJseL7RA_ZTTlUccKeA76CU9mjfhcQpRaiLU5QrbHn_aakLlOROwtEwP5Yc-5cetSzfA2abicptiybpzWOMFyhw7cV5rwWIfcJrFWG3lAe0uyhEWKHJgOlzm8XC9Yoc8mi8zcofmXS7Ka3S_aZwZgZvYgq5MQvDJ14SoJqWIJuzRzO8Eef5VHkuCCCopIOQDD_ga66aThyQXeK2udqinxwLKO9Fv8sErmvijrNOKav66qqfsHjGHNsdGu_aMtTaDR4MbIy9f5VnxNX0B_vSaiWzfAw9oGox02fP5Nz2iH0n-0U7X7YsNI9ZQw2QIOootp1piLkH0VbCQSUZA3M_3pvJ3BIg75H4ycnnZz2QKLRkN5g9iVDPXdy64UGAHm5gbom-Pzs9O_T4dQbNxA3ELzH_ozhGZYHqGXF-E2Ez45eX8-jXdA1cO2fZtvd31exLYqObcxPPvpPI7f7c_QaYh99_gUDLJjhpBs3q_zUTRjrnTzsdrfDCFeXxDxkb58SngWDxO1cbNlM9zn76bT2bEP7mP9GcJw0-5b5DTC-0en77x3T8z_5_8B4cj34g==?view-key=Containers',
'structurizr'),
KrokiExample(
'Component diagram#',
'C4 PlantUML',
r'''@startuml
!include C4_Component.puml

LAYOUT_WITH_LEGEND()

title Component diagram for Internet Banking System - API Application

Container(spa, "Single Page Application", "javascript and angular", "Provides all the internet banking functionality to customers via their web browser.")
Container(ma, "Mobile App", "Xamarin", "Provides a limited subset ot the internet banking functionality to customers via their mobile mobile device.")
ContainerDb(db, "Database", "Relational Database Schema", "Stores user registration information, hashed authentication credentials, access logs, etc.")
System_Ext(mbs, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Container_Boundary(api, "API Application") {
    Component(sign, "Sign In Controller", "MVC Rest Controlle", "Allows users to sign in to the internet banking system")
    Component(accounts, "Accounts Summary Controller", "MVC Rest Controlle", "Provides customers with a summory of their bank accounts")
    Component(security, "Security Component", "Spring Bean", "Provides functionality related to singing in, changing passwords, etc.")
    Component(mbsfacade, "Mainframe Banking System Facade", "Spring Bean", "A facade onto the mainframe banking system.")

    Rel(sign, security, "Uses")
    Rel(accounts, mbsfacade, "Uses")
    Rel(security, db, "Read & write to", "JDBC")
    Rel(mbsfacade, mbs, "Uses", "XML/HTTPS")
}

Rel(spa, sign, "Uses", "JSON/HTTPS")
Rel(spa, accounts, "Uses", "JSON/HTTPS")

Rel(ma, sign, "Uses", "JSON/HTTPS")
Rel(ma, accounts, "Uses", "JSON/HTTPS")
@enduml
''',
'GET https://kroki.io/c4plantuml/svg/eNqlVduO2jAQfc9XTHmoQKLbl37Actl2d7UXtLC9PKGJMwS3vkS2A0VV_71jB0igq2qlIiEc-_jM8ZnjcOkDulBrlb2RRqi6IJh8WE6srqwhEy6quJTdjb49Pi-WX24W18u7q09XD9P-IMuCDIrhBywUEkuHGlbWwY0J5AwFGKP5IU0J850PpOEdjGY3MKoqJQUGaU2WTawJKA25vq9wCL05w5l3hiV1gT1e-o4b9MLJKgCagr9lrdDFlZmzG1mQB1QKwppAHgTkewGr2ojIg0qGHQQLovbBanIeNhLjHulgSznkzm49uYveoCNNR2X3NpcqiYolv6JGJ81pdVBSy0AF-Dr3XN2G_1Cjm3r7n4I2UtCJrGneL3KuP8WAOXqKWp5IYcMMh2mYizVpjKvzYB3rrPmA4KiUPriEZoXcNp3GQ1ijX_MZsGYdJuwbAMJRER9R-SGgEOQ9KFvyAwURdTU9Xl79DH2d-2gYq1xxJOgsBh0lsV92lUwSPHE0qKMHMLd1aB1KxW1tAo9YvvGYrGx1tAYtx4wr0O36WEkueha-3gB-ZcCfY4j7XpYmhbA0HGKITM4qRSll958n8EQ-tNNxdqQUJyZ56mMrIwXrj8MXe-8bDwZnldtD9Ub7IcxrzSHbvUrGMYRtlLYyrDmTnlksszQ-c7CikqOJfwnxJGrHsYw27Iftampd5eI5xoSn6T8NtYtB5BQlR0zZNHUIYo3NQ4Xeb60r2r6dyuAIrVBgQf8IEnxMiBdEjaDZDGxR0wd95DhtREpMLM03Z9_-jgPPng4OxfW2SV15Z6B2e7qdT4QFvIUtTxG7EdXdTseTzoYOV3NxEmF8x9zfvb9eLGZzBv_OskQeX5L7lB5gt_PHhyPuCOoE6kVgQupXsOlXkF2SKfi_4g-amyCN',
'c4plantuml'),

KrokiExample(
'State machine',
'UMlet',
r'''<?xml version="1.0" encoding="UTF-8"?>
<umlet_diagram>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>739</x>
            <y>16</y>
            <w>232</w>
            <h>264</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
when(spidersensor="rotate")
/block spider
        </panel_attributes>
        <additional_attributes>161;244;161;34;71;34;71;74</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.FinalState</type>
        <coordinates>
            <x>890</x>
            <y>260</y>
            <w>20</w>
            <h>20</h>
        </coordinates>
        <panel_attributes></panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>750</x>
            <y>170</y>
            <w>160</w>
            <h>137</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
after (10s)
/ block spider
        </panel_attributes>
        <additional_attributes>140;100;66;100;66;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>340</x>
            <y>420</y>
            <w>100</w>
            <h>40</h>
        </coordinates>
        <panel_attributes>wait</panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.HistoryState</type>
        <coordinates>
            <x>230</x>
            <y>440</y>
            <w>20</w>
            <h>20</h>
        </coordinates>
        <panel_attributes></panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>230</x>
            <y>416</y>
            <w>130</w>
            <h>54</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
restart
        </panel_attributes>
        <additional_attributes>20;34;110;34</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>270</x>
            <y>396</y>
            <w>90</w>
            <h>54</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
pause
        </panel_attributes>
        <additional_attributes>70;34;20;34</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.FinalState</type>
        <coordinates>
            <x>90</x>
            <y>400</y>
            <w>20</w>
            <h>20</h>
        </coordinates>
        <panel_attributes></panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>46</x>
            <y>256</y>
            <w>114</w>
            <h>164</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
after (10s)
/timeout
        </panel_attributes>
        <additional_attributes>54;144;54;34;94;34</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>230</x>
            <y>110</y>
            <w>190</w>
            <h>170</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
timeout
        </panel_attributes>
        <additional_attributes>20;150;110;150;110;20;170;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>700</x>
            <y>90</y>
            <w>180</w>
            <h>100</h>
        </coordinates>
        <panel_attributes>accept
boarding pass
--
entry/ release card
do/release spider
        </panel_attributes>
        <additional_attributes>transparentSelection=true</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>540</x>
            <y>140</y>
            <w>205</w>
            <h>100</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
[passenger booked]
        </panel_attributes>
        <additional_attributes>160;20;120;80;20;80</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>450</x>
            <y>210</y>
            <w>239</w>
            <h>190</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
[passenger not booked]
        </panel_attributes>
        <additional_attributes>219;170;99;170;99;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>670</x>
            <y>350</y>
            <w>120</w>
            <h>50</h>
        </coordinates>
        <panel_attributes>reject
boarding pass
        </panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>480</x>
            <y>130</y>
            <w>142</w>
            <h>100</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
result of search
        </panel_attributes>
        <additional_attributes>71;80;71;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>270</x>
            <y>70</y>
            <w>150</w>
            <h>40</h>
        </coordinates>
        <panel_attributes>lt=&lt;-</panel_attributes>
        <additional_attributes>130;20;20;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.ThreeWayRelation</type>
        <coordinates>
            <x>540</x>
            <y>210</y>
            <w>20</w>
            <h>20</h>
        </coordinates>
        <panel_attributes></panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>140</x>
            <y>60</y>
            <w>150</w>
            <h>420</h>
        </coordinates>
        <panel_attributes>read boarding pass
--
        </panel_attributes>
        <additional_attributes>transparentSelection=true</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>400</x>
            <y>60</y>
            <w>180</w>
            <h>90</h>
        </coordinates>
        <panel_attributes>check passenger
--
entry/start search
do/blink lamp
        </panel_attributes>
        <additional_attributes>transparentSelection=true</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.FinalState</type>
        <coordinates>
            <x>170</x>
            <y>410</y>
            <w>20</w>
            <h>20</h>
        </coordinates>
        <panel_attributes></panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>150</x>
            <y>240</y>
            <w>100</w>
            <h>40</h>
        </coordinates>
        <panel_attributes>read
passenger ID
        </panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>150</x>
            <y>330</y>
            <w>100</w>
            <h>40</h>
        </coordinates>
        <panel_attributes>identify
passenger
        </panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>160</x>
            <y>260</y>
            <w>40</w>
            <h>90</h>
        </coordinates>
        <panel_attributes>lt=&lt;-</panel_attributes>
        <additional_attributes>20;70;20;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>160</x>
            <y>100</y>
            <w>40</w>
            <h>70</h>
        </coordinates>
        <panel_attributes>lt=&lt;-</panel_attributes>
        <additional_attributes>20;50;20;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>160</x>
            <y>350</y>
            <w>40</w>
            <h>80</h>
        </coordinates>
        <panel_attributes>lt=&lt;-</panel_attributes>
        <additional_attributes>20;60;20;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.base.Relation</type>
        <coordinates>
            <x>140</x>
            <y>170</y>
            <w>78</w>
            <h>90</h>
        </coordinates>
        <panel_attributes>lt=&lt;-
[valid]
        </panel_attributes>
        <additional_attributes>39;70;39;20</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.State</type>
        <coordinates>
            <x>150</x>
            <y>150</y>
            <w>100</w>
            <h>40</h>
        </coordinates>
        <panel_attributes>check
validity
        </panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
    <element>
        <type>com.umlet.element.custom.InitialState</type>
        <coordinates>
            <x>170</x>
            <y>100</y>
            <w>20</w>
            <h>20</h>
        </coordinates>
        <panel_attributes></panel_attributes>
        <additional_attributes>transparentSelection=false</additional_attributes>
    </element>
</umlet_diagram>
''',
'GET https://kroki.io/umlet/svg/eNrdWUFv2jAYvedXRBym7lBiJ05ChEkvU7Ve1047VFNlEgNZQ4IcU8q_n51ip5SujRHNoAcwmCTye9_3vvfZWPjicZ7bD5RVWVmMerAPejYtkjLNiumo9_Pm8nzQu4jxcp5TfpdmZMrIPMY0p3Na8Bjz9YLGSTnv1xf0N_P9Malo_wfNCRdPxU59FU7KkonHEk6rGD_GoRdh5zHG6xgG2FnHeBW7noudVYxnsRsg7Mxi7GzdtCAFze8I5ywbL-VMzkdfcj48t1YzWpxViywVQGhRlWzUYyUXd_W-Ws44L5N7--lX7Ow8BJM0zeRCydY0DODQRWgoRw8NQ_UeipW9fgd2NC_vEZQsKy4mLwWy_Fqu8x8kDSKwIckNgGIJKJJAG47aI-aMFNWCMLHAa7HQRF4xmpC8ogdA3ColfIUWhgotDBRc6IVGOUEmnDL7DIJK5IC9ZxIgMIQADINADZL0Q4X_rch7SHGBXM0FUFygVqFfkYwfSfg3iL9nYmDrt4C7ngaOPn_KP0OryyD0FFzfrAoyWnHCDELuAlnUIJRDV4BDBdiLFOBoT7wLspSBaos2rNG6BwLbtoTrCo7A509nFCi78nU2Q6QKuKGpbxVwns1puTTIbV8ktrBvMYigR6jDDNeSFsJSJOgUr53NgARj3CK_oQ9qUatRToWgM-sKgSIg0vgHGj9ohZ8kCV1wa1wSedHUXpCqss7PLbEEtnZsJpYjQmEn4mcrLR313dTfXxUMZ8uu9OJrl4fPzM4340rnyq1kiRZToZpxWd7T9LdJu_uUJ-I1qD8NQFc1Q3d9rtaLKzcHTxxEe3NQlNycBxdGtVgiPXQlm6BxRl_rRluF34oGRv-IJN6WzSnZx0DLwdMUIHdPOYh2aJlzu5zYFSUsmRl0ClCKQLy7oPO2qNn5-GbdvsJtoHmvVrp7WGu4mTFKf5F169L3TPYn2Ri10DbUYINXwuu21DZJ7ZeGeBxW14IBBHYZ0E1BuxqfzKjYwuv63rQD9a5nI3LZDYzzrLi3czJfHBU9724VYNhsBj-_JBrbR_secEhJWI3hX307Rfiety980esWPJusGwpOyOvrg70XR5vIrCCYO56wuvBwhmcGE4IdmOHHwfT_F8ymedUwBx8HM-gYJto9oQ4HeyWtdftA8sxka-JFMnm97nYkTY2C_r41qjZtq4aa8fVx1eerQjymrSXDIz--c7b_o7P-At8zCQE=',
'umlet'),

    ];
  }
}
