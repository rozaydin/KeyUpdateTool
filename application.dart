import 'dart:io';
import 'dart:convert';

class Namer {
  String _name;

  Namer(String name) {
    this._name = name;
  }

  @override
  String toString() {
    return "name: $_name";
  }
}

void main(List<String> args) {
  final client = new HttpClient();
  client.findProxy = (Uri uri) {
    print("I am called!");
    return "PROXY 194.138.0.5:9400";
  };

  client
      .getUrl(Uri.parse("https://reqres.in/api/users"))
      .then((HttpClientRequest request) {
    return request.close();
  }).then((HttpClientResponse response) {
    // Process the response.

    

    response.transform(Utf8Decoder()).transform(JsonDecoder()).listen( (Object map) {
      Map<String, Object> _map = map;
      print("called!");
      print("${_map['per_page']}");
      return null;
    });

    
  });

  final namer = new Namer("Ridvan Ozaydin");

  print(namer.toString());
  print("Hello World!");
}
