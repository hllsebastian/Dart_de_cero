// To parse this JSON data, do
//
//     final reqrespRespuesta = reqrespRespuestaFromJson(jsonString);

/* import 'dart:convert';

ReqrespRespuesta reqrespRespuestaFromJson(String str) => ReqrespRespuesta.fromJson(json.decode(str));

String reqrespRespuestaToJson(ReqrespRespuesta data) => json.encode(data.toJson());

class ReqrespRespuesta {

    String? greeting;
    List<String>? instructions;

    ReqrespRespuesta({
        this.greeting,
        this.instructions,
    });

    factory ReqrespRespuesta.fromJson(Map<String, dynamic> json) => ReqrespRespuesta(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
    };
} */