class Cards {
  final ProductImages images;
  final String name;
  final String description;



  Cards( {required this.images, required this.name, required this.description, });


}
class ProductImages {
  final String mainImage;
  final List<String> carouselImages;

  ProductImages({required this.mainImage, required this.carouselImages});


}


List<Cards> cards = [
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
        'https://ir.ozone.ru/s3/multimedia-f/wc1000/6785078511.jpg', // Добавьте дополнительные изображения карусели
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6785078517.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Капсулы для вас",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-8/wc1000/6944090108.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-8/wc1000/6944090108.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-a/wc1000/6816378562.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-b/wc1000/6816378563.jpg',
      ],
    ),
    name: "Ariel Стиральный порошок 12000 г 80 стирок Для цветных тканей",
    description: "Норм порошок ",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-k/wc1000/6941574116.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-k/wc1000/6941574116.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-v/wc1000/6777797743.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-w/wc1000/6777797744.jpg',
      ],
    ),
    name: "Ласка 1шт ",
    description: "Ласка, норм",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-q/wc1000/6738922922.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-s/wc1000/6738922888.jpg',
      ],
    ),
    name: "Средство для мытья полов и стен Mr. Proper Лавандовое, 1,5 л",
    description: "Норм средство ",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-h/wc1000/6831115577.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-h/wc1000/6831115577.jpg',
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6832766613.jpg',
        'https://ir.ozone.ru/s3/multimedia-0/wc1000/6832766484.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Норм капсулка",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-8/wc1000/6944090108.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-8/wc1000/6944090108.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-a/wc1000/6816378562.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-b/wc1000/6816378563.jpg',
      ],
    ),
    name: "Ariel Стиральный порошок 12000 г 80 стирок Для цветных тканей",
    description: "Норм порошок ",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-k/wc1000/6941574116.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-k/wc1000/6941574116.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-v/wc1000/6777797743.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-w/wc1000/6777797744.jpg',
      ],
    ),
    name: "Ласка 1шт ",
    description: "Ласка, норм",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-q/wc1000/6738922922.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-s/wc1000/6738922888.jpg',
      ],
    ),
    name: "Средство для мытья полов и стен Mr. Proper Лавандовое, 1,5 л",
    description: "Норм средство ",


  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-8/wc1000/6944090108.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-8/wc1000/6944090108.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-a/wc1000/6816378562.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-b/wc1000/6816378563.jpg',
      ],
    ),
    name: "Ariel Стиральный порошок 12000 г 80 стирок Для цветных тканей",
    description: "Норм порошок ",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
        'https://ir.ozone.ru/s3/multimedia-f/wc1000/6785078511.jpg', // Добавьте дополнительные изображения карусели
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6785078517.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Норм",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-q/wc1000/6738922922.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-s/wc1000/6738922888.jpg',
      ],
    ),
    name: "Средство для мытья полов и стен Mr. Proper Лавандовое, 1,5 л",
    description: "Норм средство ",
  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
        'https://ir.ozone.ru/s3/multimedia-f/wc1000/6785078511.jpg', // Добавьте дополнительные изображения карусели
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6785078517.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Норм",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
        'https://ir.ozone.ru/s3/multimedia-f/wc1000/6785078511.jpg', // Добавьте дополнительные изображения карусели
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6785078517.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Отличный капсулы вай вася бери не пожалеиж",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
      carouselImages: [
        'https://ir-3.ozone.ru/s3/multimedia-1-w/wc1000/6927529088.jpg',
        'https://ir-3.ozone.ru/s3/multimedia-q/wc1000/6738922922.jpg', // Добавьте дополнительные изображения карусели
        'https://ir-3.ozone.ru/s3/multimedia-s/wc1000/6738922888.jpg',
      ],
    ),
    name: "Средство для мытья полов и стен Mr. Proper Лавандовое, 1,5 л",
    description: "Норм средство ",
  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
        'https://ir.ozone.ru/s3/multimedia-f/wc1000/6785078511.jpg', // Добавьте дополнительные изображения карусели
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6785078517.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Ага слышали",

  ),
  Cards(
    images: ProductImages(
      mainImage: 'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
      carouselImages: [
        'https://ir.ozone.ru/s3/multimedia-1-y/wc1000/6944114290.jpg',
        'https://ir.ozone.ru/s3/multimedia-f/wc1000/6785078511.jpg', // Добавьте дополнительные изображения карусели
        'https://ir.ozone.ru/s3/multimedia-l/wc1000/6785078517.jpg',
      ],
    ),
    name: "Капсулы для стирки белья Ariel Color 60 шт",
    description: "Не правда ",

  ),





  // Добавьте остальные товары здесь
];
