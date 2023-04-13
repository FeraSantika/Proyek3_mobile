import 'package:flutter/material.dart';

class Product {
  final String image,
      title,
      description,
      storeName,
      storeAddress,
      openingHours,
      category;
  final int price, size, id, stock;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.storeName,
    required this.storeAddress,
    required this.openingHours,
    required this.category,
    required this.stock,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Mangga Cengkir",
    price: 15000,
    size: 12,
    description:
        "Mangga cengkir Buahnya berukuran  kecil hingga sedang dengan kulit berwarna hijau kekuningan dan daging buah berwarna kuning terang. Rasa mangga cengkir cenderung manis dan sedikit asam .",
    image: "assets/images/mangga.png",
    color: Color(0xFF3D82AE),
    storeName: "Toko Buah Segar",
    storeAddress: "Jl. Raya Mangga No. 10,  Indramyu",
    openingHours:
        "Senin - Jumat: 08.00 - 20.00, Sabtu: 08.00 - 18.00, Minggu: tutup",
    category: "Buah-buahan",
    stock: 50,
  ),
  Product(
    id: 2,
    title: "Mangga Gedong Gincu",
    price: 15000,
    size: 8,
    description:
        "Mangga Gedong Gincu ini memiliki ukuran sedang hingga besar dengan berat rata-rata antara 300-500 gram per buah. Kulitnya berwarna merah kekuningan dan memiliki bentuk yang agak pipih dengan ujung yang lancip. Daging buahnya berwarna kuning pucat, sangat manis, dan memiliki aroma yang khas.",
    image: "assets/images/makanan.png",
    color: Color(0xFFD3A984),
    storeName: "Toko Buah Berkah",
    storeAddress: "Jl. Raya Mangga No. 20,  Indramyu",
    openingHours:
        "Senin - Jumat: 09.00 - 18.00, Sabtu: 09.00 - 14.00, Minggu: tutup",
    category: "Buah-buahan",
    stock: 60,
  ),
  Product(
    id: 3,
    title: "Mangga Harum Manis",
    price: 15000,
    size: 10,
    description:
        "Mangga Harum Manis memiliki ciri khas berupa aroma yang sangat harum dan rasanya yang manis,  Kulitnya berwarna hijau kekuningan dengan bercak-bercak merah di beberapa bagian. Daging buahnya berwarna kuning cerah, sangat manis, dan memiliki tekstur yang lembut.",
    image: "assets/images/pakaian.png",
    color: Color(0xFF989493),
    storeName: "Toko Buah Mantap",
    storeAddress: "Jl. kebun Jeruk No. 15  Indramyu",
    openingHours:
        "Senin - Jumat: 08.00 - 20.00, Sabtu: 08.00 - 18.00, Minggu: tutup",
    category: "Buah-buahan",
    stock: 30,
  ),
  Product(
    id: 4,
    title: "Mangga Indramayu",
    price: 15000,
    size: 11,
    description:
        "Buah mangga ini memiliki ukuran yang sedang hingga besar dengan berat rata-rata antara 200-600 gram per buah. Kulitnya berwarna hijau tua hingga kuning ketika matang, dengan permukaan yang agak kasar. Daging buahnya berwarna kuning pucat, manis, dan sedikit asam.",
    image: "assets/images/mangga.png",
    color: Color(0xFFE6B398),
    storeName: "Toko Buah Sehat",
    storeAddress: "Jl. Raya Genggong No. 20, Indarmayu",
    openingHours:
        "Senin - Jumat: 07.00 - 20.00, Sabtu: 09.00 - 15.00, Minggu: tutup",
    category: "Buah-buahan",
    stock: 40,
  ),
  Product(
    id: 5,
    title: "Mangga Gajah",
    price: 15000,
    size: 12,
    description:
        "Mangga Gajah atau disebut juga Mangga Gajah Madu adalah varietas mangga yang berasal dari Malaysia dan Thailand, tetapi kini sudah banyak ditanam di Indonesia. Buah mangga ini memiliki ukuran yang cukup besar, mencapai 1-2 kg per buah. Kulitnya berwarna hijau tua hingga kekuningan dengan bercak-bercak cokelat di beberapa bagian. Daging buahnya berwarna kuning cerah, manis, dan sedikit asam.",
    image: "assets/images/kerupuk.png",
    color: Color(0xFFD3A984),
    storeName: "Toko Buah Mantul",
    storeAddress: "Jl. Mangga Manis No. 5, Indramyu",
    openingHours:
        "Senin - Jumat: 05.00 - 21.00, Sabtu: 06.00 - 20.00, Minggu: tutup",
    category: "Buah-buahan",
    stock: 20,
  ),
  Product(
    id: 6,
    title: "Mangga Simanalagi",
    price: 15000,
    size: 12,
    description:
        "Buah mangga manalagi yang terkenal lezat ini bila tua berwarna hijau tua kelabu dan kulit buah bertutup lapisan lilin. Bila telah matang, pangkal buah berwarna kuning, sedangkan ujungnya masih tetap hijau. Kulit buah tebal, berbintik-bintik keputihan dan apabila matang akan menjadi cokelat di tengahnya.",
    image: "assets/images/batik.png",
    color: Color(0xFF989493),
    storeName: "Toko Buah Asep",
    storeAddress: "Jl. Raya Wetan No. 17, Indramyu",
    openingHours: "Senin - Jumat: 10.00 - 13.00, Sabtu - Minggu: tutup",
    category: "Buah-buahan",
    stock: 35,
  ),
];
