// Creado por Crystian Enrique Suarez Cuevas <200527>
// 04-10-2023
// Asignatura: Desarrollo Movil Integral
// Grado: 10° Grupo: A
// Profesor MTI. Marco Antorio Ramirez Hernandez
final String _imageUrlMedium = "https://image.tmdb.org/t/p/w300";
final String _imageUrlLarge = "https://image.tmdb.org/t/p/w500";
String getMediumPictureUrl(String path) => _imageUrlMedium + path;
String getLargePictureUrl(String path) => _imageUrlLarge + path;
