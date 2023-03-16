Future<void> main() async{
  // asenkron: aynı anda birden fazla işlem yapmak anlamına geliyor
  // asenkron işlem: daha verimli bir şekilde kolama yapabiliyoruz ve
  // kodlarımızı daha verimli şekilde çalıştırabiliyoruz normalde kodlamalar
  // sırayla çalışır fakat asenkron işlemleri kullanırsak aynı anda birden fazla
  // işlem yapıldığı için uygulamamızı daha verimli şekilde çalıştırmış oluruz

  // örn veritabanından veri alırken aynı anda başk bir işlem yapabilriz

  print("Verilerin alınması bekleniyor...");  // temsili
  //var veri = veritabanindanVeriAl();
  // buranın çalışması devam ediyor ve çalışmasını devam ettirirken
  // metod bize veri vermeye çalışıyor ama biz vqr veri çalışmasını beklemeden aşağıdaki printleri çalıştırdık
  // ve Instance of 'Future<String>' hatasını gördük bunu engellemek için
  // asenkron çalışan metodumuzun önüne await yazmalıyız..
  var veri = await veritabanindanVeriAl();
  // değişiklikten sonra var veri çalışacak metodun çalışmasını bekleyecek ve veri ye sonucu aktaracak
  // await yazınca hata aldık bu yüzden main metodu da future yapıyoruz

  print("Veri alınıyor..."); // temsili
  print("Alınan veri : $veri"); // temsili // hatalı kullanımda önce burası çalışıyordu

}

// <> içerisine geri dönüş türü veya sadece işlem yapıyorsa void yazıyoruz
Future<String> veritabanindanVeriAl() async{
  //  String veritabanindanVeriAl() {} yani yukarıdaki metod aslında bu
  for(var i=1;i<=5;i++){
    Future.delayed(Duration(seconds: i) , () => print("Alınan veri miktarı : ${i*20}"));
    //delayed gecikme yaratıyor, duration seconds sn türünden gecikme
  }

  // burada da gecikme verebiliriz
  return Future.delayed(Duration(seconds: 5) , () => "Veri tabanı veri kümesi");
  // Future delayed ın işi bittiği zaman veritabanindanVeriAl metodunu kullandaığımız yerde mesaj çıkacak
}