class ListModeli {
  final int id;
  final String name;
  final String musician;
  final String image;
  final Duration progress;
  final Duration total;

  ListModeli({
    required this.id,
    required this.name,
    required this.musician,
    required this.image,
    required this.progress,
    required this.total,
  });
}

class ListData {
  List<ListModeli> _royxat = [
    ListModeli(
      id: 0,
      name: "Dernière danse",
      musician: "Indila",
      image:
          "https://m.media-amazon.com/images/M/MV5BYTZjYjlkN2QtNWQyNC00ZjhhLTg1NWUtMzY3MTkwYjQ1MzAyXkEyXkFqcGdeQXVyNjE0ODc0MDc@._V1_.jpg",
      progress: Duration(milliseconds: 0000),
      total: Duration(milliseconds: 335000),
    ),
    ListModeli(
      id: 1,
      name: "Onam",
      musician: "Sardor Rahimxon",
      image:
          "https://is4-ssl.mzstatic.com/image/thumb/Music125/v4/84/92/e3/8492e353-ad06-7e0f-3508-1c4b420eb459/artwork.jpg/1200x1200bf-60.jpg",
      progress: Duration(milliseconds: 0000),
      total: Duration(milliseconds: 341000),
    ),
    ListModeli(
      id: 2,
      name: "Javob ber",
      musician: "Rayhon",
      image:
          "https://p2.music.126.net/t_ywFWjpyPpPh6JuvDA7Jg==/109951164311324909.jpg",
      progress: Duration(milliseconds: 0000),
      total: Duration(milliseconds: 335000),
    ),
  ];

  List<ListModeli> get royxat {
    return _royxat;
  }
}
