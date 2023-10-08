// Creado por Crystian Enrique Suarez Cuevas <200527>
// 04-10-2023
// Asignatura: Desarrollo Movil Integral
// Grado: 10° Grupo: A
// Profesor MTI. Marco Antorio Ramirez Hernandez
import 'package:flutter/material.dart';
import 'package:dmi_moviedb_practica9_200527_flutter/common/HttpHandler.dart';
import 'package:dmi_moviedb_practica9_200527_flutter/model/Media.dart';
import 'package:dmi_moviedb_practica9_200527_flutter/media_list_item.dart';

class MediaList extends StatefulWidget {
  @override
  _MediaListState createState() =>
      _MediaListState(); // Define una clase que extiende StatefulWidget y proporciona un método para crear su estado interno.
}

class _MediaListState extends State<MediaList> {
  List<Media> _media = [];
  @override
  void initState() {
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
      _media.addAll(movies);
    });
  }

  // Define una clase que extiende State y representa el estado interno de MediaList.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _media.length,
        itemBuilder: (BuildContext context, int index) {
          return MediaListItem(_media[index]);
        },
      ),
    );
  }
}
