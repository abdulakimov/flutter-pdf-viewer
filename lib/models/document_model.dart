class Document {
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;

  Document(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<Document> doc_list = [
    Document(
        "The impact of artificial intelligence",
        "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf",
        "28-03-2018",
        40),
  ];
}
