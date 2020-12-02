import 'package:edukasipuasa/DetailPage.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class InBoxScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _PageList(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');

final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);

final descTextStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400);

final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

class _PageList extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_PageList> {
  List<String> judul = [
    ' Puasa Ramadan',
    'Puasa nazar',
    'Puasa Denda atau Kifarat',
    'Puasa Syawal',
    'Puasa Arafah',
    'Puasa Tarwiyah',
    'Puasa Senin dan Kamis',
    'Puasa Daud',
    'Puasa ‘Asyura',
    'Puasa Ayyamul Bidh',
  ];

  List<String> subjudul = [
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
    'by : Misbah Bagaskara Purwanto \n \n',
  ];

  List<String> gambar = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
  ];

  List<String> jmlh = [
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
    'Harus Di pelajari',
  ];

  List<String> bahanbahan = [
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
    'Detail Penjelasan \n \n',
  ];
  List<String> listbahan = [
    'Puasa Ramadhan merupakan jenis puasa paling umum karena merupakan puasa wajib selama sebulan penuh pada bulan Ramadhan bagi setiap umat Islam yang sudah baligh. Kewajiban melaksanakan ibadah puasa pada bulan Ramadhan terdapat dalam Al-Qur’an surat Al-baqarah ayat 183. ',
    'Jenis kedua dari puasa wajib adalah puasa nazar yaitu puasa karena sebuah janji. Nazar sendiri secara bahasa berarti janji, sehingga puasa yang dinazarkan memiliki hukum wajib.',
    'Jenis terakhir dari puasa wajib adalah puasa denda, yakni puasa yang dilakukan untuk menggantikan dam atau denda atas pelanggaran berhukum wajib contohnya tidak melaksanakan puasa. Puasa ini bertujuan untuk menghapus dosa yang telah dilakukan. ',
    'Jenis puasa pertama dari puasa sunnah adalah puasa Syawal. Syawal sendiri adalah nama bulan setelah bulan Ramadhan. Puasa Syawal adalah berpuasa selama enam hari di bulan Syawal.',
    'Puasa arafah adalah jenis puasa sunnah yang sangat dianjurkan bagi umat Islam yang tidak sedang berhaji. Sedangkan bagi umat Islam yang sedang berhaji, tidak ada keutamaan untuk puasa pada hari arafah atau tanggal 9 Dzulhijjah.',
    'Puasa Tarwiyah adalah puasa yang dilaksanakan pada hari tarwiyah yakni tanggal 8 Dzulhijjah. Istilah tarwiyah sendiri berasal dari kata tarawwa yang berarti membawa bekal air. Hal tersebut karena pada hari itu, para jamaah haji membawa banyak bekal air zam-zam untuk persiapan arafah dan menuju Mina.',
    'Jenis puasa satu ini juga merupakan puasa sunnah terpopuler. Puasa senin kamis berawal ketika Nabi Muhammad SAW memerintah umatnya untuk senantiasa berpuasa di hari senin dan kamis.',
    'Jenis puasa ini merupakan puasa unik karena pasalnya puasa Daud adalah puasa yang dilakukan secara selang-seling (sehari puasa, sehari tidak). Puasa Daud bertujuan untuk meneladani puasanya Nabi Daud As. Puasa jenis ini juga ternyata sangat disukai Allah SWT. \n \n',
    'Bulan Muharram adalah bulan yang disunnahkan untuk memperbanyak puasa, boleh di awal bulan, pertengahan, ataupun di akhir. Namun, puasa paling utama adalah pada hari Asyura yakni tanggal sepuluh pada bulan Muharram. \n \n',
    'Umat Islam disunnahkan berpuasa minimal tiga kali dalam sebulan. Namun puasa lebih utama dilakukan pada ayyamul bidh, yaitu pada hari ke-13, 14, dan 15 dalam bulan Hijriyah atau bulan pada kalender Islam.\n \n',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (BuildContext contex, int index) {
          final title = judul[index].toString();
          final subTitle = subjudul[index].toString();
          final jmlah = jmlh[index].toString();
          final img = gambar[index].toString();
          final resep = bahanbahan[index].toString();
          final listresep = listbahan[index].toString();

          return Container(
            height: 200,
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  backgroundImage(img),
                  Container(
                    child: topContent(
                      title,
                      subTitle,
                      jmlah,
                      resep,
                      listresep,
                    ),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              itemJudul: title,
                              qty: jmlah,
                              itemImage: img,
                              listbahan: listresep,
                            )));
              },
            ),
          );
        },
      ),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.luminosity),
                image: AssetImage(gambar))));
  }

  topContent(
    String nama,
    String deskripsi,
    String stok,
    String resep,
    String listresep,
  ) {
    return new Container(
      //height: 80.0,
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Text(
            deskripsi,
            style: descTextStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Container(
            height: 2,
            width: 80,
            color: Colors.redAccent,
          ),
          Text(
            stok,
            style: descTextStyle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
