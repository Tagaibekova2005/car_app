import 'package:car_app/core/data/car_model.dart';
import 'package:car_app/core/enum/car_filters.dart';

final list = <CarModel>[
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Toyota',
      model: 'Camry70',
      price: 300,
      image:
          'https://s3-alpha-sig.figma.com/img/74a9/cb7f/9776188867b3f498756d1c898b255121?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=nQnfh5XGCClT1oglljNu~mWw9JwpEqJ1m0hUdCn41ql1HDEtSknnxVHOqT2DccQXbNm6FbBUmmPYVsVuSyNpFoAGeAItOOJWLkwdjhIfS8lMf2vKPbY2wIm~4wRX9uQ6jvFxgQiqTOuVbufAUuNj2BDQPmk9VARLrvE2V4RaPrmeFabmJ5OOvOVbejLlDfoLLT9kDzGLXjvPUG5r~tBI0JEgdFRUQNNf9jQKYBxOkz9XRvv6qGHl6i1Ggw9fGdo0YR9C8FOZmY37Bi0BabqdEKZmeUiJOZUxcaHTGhP3LbJP6D8F8Fy3F7nvJ5uCwfaq3WfgCtFyIgLzO75H5OsIOw__'),
  CarModel(
      type: CarFilters.sportCars,
      brand: 'Lamborghini',
      model: 'Huracan',
      price: 550,
      image:
          'https://s3-alpha-sig.figma.com/img/3ff8/1f24/c3ff87b11949b61629ef10cbeed03968?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mXCVL1slcKZosFWk2g8iWZUDCR-3iq~g7p9qHpdLXO2aGBNlCU87I5hf2JKdps5Pw-0krzdLYSyoIdly-EkmAnux77giAUaDPCQ9a~YBA8YdUO7Wdg-~OdykcSx1w0DMUL-JkRDgCo5J9vRGLCJOIDaX29CQ-6cnT9oroDzDgRrZaZspU5mK2nMeNB~iatkJJ4a3Zcb1KLwazFHGJjNDsAVhzsjW5rFxhIpN8Y0F5djYcgDpTaPOWSSBj0AbMlEOOjNU4MtX7U~f4TpG88rCfC8mPhjVsiWWIsJ3IDusp1GVNhXn3gwyvpy-NYY43pLCVI-nfS7~bjwWbTwcG1F6SQ__'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'Range rover',
      model: 'Vogue13',
      price: 750,
      image:
          'https://s3-alpha-sig.figma.com/img/bfdf/6c13/6b331705c381dd953c664cd64d3b85dd?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=m~RFHlaIyd0KyZZ8jzQ0syqIlgk93aN1xqcTzZJCQoSS0JVtlVbSQF4hL9o1mxvCtgnJw1JY8KZI-5eBp3vUUaZdbIREbsg4DHQzMWgxPmkZ49OyuA03ghsNl6TqggCxQFJHCnVJekKJtVR~uE2Uwv-LWgbNZGefaDXRNLwBA1EUMv7JbC4r37uOfPeh18qpvwwm15rBDbIzLpySd7adLVP74FZRgfbkBGF5OzVZ~hFod8~fNfMiDC7f1pIz7usXsR7d79u7uOGRS6yfFyQAoYi~SmgEW8fSz6tkMgQxYPFrvrUQVla~oZNz~AUj6PmQ4k3Una-lEiK~1yOGjXzVMw__'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'Tesla',
      model: 'X',
      price: 650,
      image:
          'https://s3-alpha-sig.figma.com/img/7275/9cf0/9bb3fb5e253f594a5a77b13033205598?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=oMdqLG9I4gHxNM5OHSnKfhM9lHeSnaulak26EK4KSJ00GEpx~ar2eTmc4Gw3Tzdzu0KJorOV3Dar~BJIU9pDJyCvH-tpJMVmFLfojdXGYJ~rejU6OV2psIqrrhQysLK~2zBwsL4NEWrvCIG9C8B5U-07tTVsQRWEF-hHaqDqmQfcuG1bdxw09YcYkpDoDEJmufjkm~y0-MoTfT2AHCQmQewq-gaFM-P8KvVpotDp3XgGcD3OPJxLVH0sWeVAoufZgnZQ0n~NbQ4-VujSWevqkkAk0rKT-OMY4OPz6hfFrX3EvgpSoA3eJSazrh2EDBp2kEZl4VMV2qzmx8ZeH5fhTA__'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Mercedez-Benz',
      model: 'S-class W221',
      price: 150,
      image:
          'https://air-tec.bg/app/uploads/2019/08/mercedesw221trans-1500x996.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Honda',
      model: 'Fit',
      price: 50,
      image:
          'https://www.pngplay.com/wp-content/uploads/13/Honda-Fit-Transparent-Background.png'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'Lexus',
      model: 'ES300',
      price: 900,
      image:
          'https://tmna.aemassets.toyota.com/is/image/toyota/lexus/images/models/es/2023/styles/Lexus-ES-300h-visualizer-styles-750x471-LEX-ESH-MY23-0017.04.png?wid=750&hei=471&fmt=png-alpha'),
  CarModel(
      type: CarFilters.sportCars,
      brand: 'BMW',
      model: 'X7',
      price: 1000,
      image:
          'https://www.pngplay.com/wp-content/uploads/13/BMW-X7-Free-PNG.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'Huyndai',
      model: 'Sonata',
      price: 100,
      image: 'https://pngimg.com/d/hyundai_PNG11205.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Kia',
      model: 'K5',
      price: 250,
      image:
          'https://cdn.kia.ru/master-data/overviews//EXS4/20222022/Classic/DU3/1.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Li auto',
      model: 'L7',
      price: 500,
      image:
          'https://static.tildacdn.com/tild3637-3937-4533-b866-343137353435/li-l7-front-6.png'),
  CarModel(
    type: CarFilters.popularCars,
    brand: 'Toyota',
    model: 'Prius',
    price: 300,
    image:
        'https://www.pngkey.com/png/full/167-1679615_25-toyota-prius-3rd-gen.png',
  ),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Subaru',
      model: 'Outback',
      price: 200,
      image:
          'https://www.subaru.co.nz/sites/default/files/2023-10/21OUTBACK-BASE-Crimson%20Red%20Pearl.png'),
  CarModel(
      type: CarFilters.sportCars,
      brand: 'Mercedez-Benz',
      model: 'E-class w212',
      price: 450,
      image:
          'https://neva-cars.ru/wp-content/uploads/2016/01/mercedes-e-m-600-360f-1400x840.png'),
  CarModel(
      type: CarFilters.familyCars,
      brand: 'Honda',
      model: 'Odissey',
      price: 80,
      image:
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/20a81d18-c41a-4353-a548-b72d0760ced9/de7fhuo-8380e8aa-ace4-4528-8228-cb8ae96049f1.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzIwYTgxZDE4LWM0MWEtNDM1My1hNTQ4LWI3MmQwNzYwY2VkOVwvZGU3Zmh1by04MzgwZThhYS1hY2U0LTQ1MjgtODIyOC1jYjhhZTk2MDQ5ZjEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Lw1ZgwOqAEF5Sw4SDZO_ajm5BdJKeNB7YerF3Jm2WA8'),
  CarModel(
      type: CarFilters.luxuryCars,
      brand: 'Lexus',
      model: 'LX 570',
      price: 700,
      image:
          'https://www.pngplay.com/wp-content/uploads/13/Lexus-LX-570-PNG-Pic-Background.png'),
  CarModel(
      type: CarFilters.popularCars,
      brand: 'BMW',
      model: 'E60 530',
      price: 300,
      image:
          'https://www.pngplay.com/wp-content/uploads/13/BMW-E60-M5-PNG-Clipart-Background.png'),
  CarModel(
      type: CarFilters.cheapCars,
      brand: 'Subaru',
      model: 'Legacy',
      price: 300,
      image:
          'https://www.pngplay.com/wp-content/uploads/13/Subaru-Legacy-Download-Free-PNG.png'),
];
