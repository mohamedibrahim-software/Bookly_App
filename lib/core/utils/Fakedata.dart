import 'package:bookly_app/features/home/data/models/book_models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_models/bookmodel/volume_info.dart';

List<Bookmodel> getfakedata() {
  return List.generate(
    11,
    (index) => Bookmodel(
      kind: '32لغغهله32',
      volumeInfo: VolumeInfo(
        title: 'fdbdgbfg',
        authors: ['dgsfkngjelbegn'],
        imageLinks: ImageLinks(
          thumbnail:
              'https://kinolorber.com/userFiles/uploads/products/the-image-book/738329237387.jpg',
        ),
      ),
    ),
  );
}
