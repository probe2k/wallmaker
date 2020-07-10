class Required {
  String req, og, thumb;

  Required({this.req, this.og, this.thumb});

  factory Required.fromMap(Map<String, dynamic> jsonData) {
    return Required(
      req: jsonData["portrait"],
      og: jsonData["original"],
      thumb: jsonData["small"]
    );
  }
}