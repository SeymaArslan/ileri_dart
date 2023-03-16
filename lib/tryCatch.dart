void main(){
  // try kontrol edilecek kodlar - catch(e) hata oluşunca çalışacak alan
  // e hata ile ilgili bir nesnedir ve sayesinde hatayla ilgili bilgi alabiliriz

  // önce hata oluşturacağız sonra hatayıı gidereceğiz

  var sayilar = <int>[];
  sayilar.add(34);  // 0. indeks
  sayilar.add(67);  // 1. indeks maks indeks değeri 1

  // güncelleme yapmaya çalışacağız
  sayilar[1] = 89;

  try{
    sayilar[1] = 89;
    print("İşlem tamam");
  } catch(e){
    print("Liste boyutunu aştınız");
  }

}