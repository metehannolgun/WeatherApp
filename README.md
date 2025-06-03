# WeatherApp

WeatherApp, kullanıcının **konum bilgilerini kullanarak** bulunduğu bölgenin hava durumunu anlık olarak gösteren bir iOS uygulamasıdır. **SwiftUI** ve **CoreLocation** teknolojilerini kullanarak modern bir tasarım ve gerçek zamanlı hava durumu verileri sunar.

## ✨ Özellikler

- 📍 **Konum tabanlı hava durumu gösterimi**  
- 🏢 **Şehir bazlı hava durumu sorgulama**  
- 👩‍🍳 **Gerçek zamanlı hava durumu verileri**  
- 🌐 **API entegrasyonu ile dünyadaki her şehri destekler**  
- 💪 **Modern ve minimalist SwiftUI arayüzü**
- - <img width="485" alt="ToDo3" src="https://github.com/user-attachments/assets/dddff65b-a351-4297-b200-b818974d2ca9" />

## 🛠 Kullanılan Teknolojiler

- **SwiftUI** – Modern iOS arayüz tasarımı
- **CoreLocation** – Kullanıcının konum bilgilerini almak için
- **Combine** – API'den gelen verileri reaktif bir şekilde yönetmek için
- **URLSession** – API isteklerini yapmak için

## 🔄 Kurulum

Projeyi kendi bilgisayarında çalıştırmak için aşağıdaki adımları takip edebilirsin:

### 1. Depoyu Klonla
```sh
 git clone https://github.com/metehannolgun/WeatherApp.git
 cd WeatherApp
```

### 2. API Anahtarını Ekle
OpenWeather API'yi kullanmak için bir API anahtarı edinmelisin ve projeye eklemelisin:

1. [OpenWeatherMap](https://openweathermap.org/api) sitesinden API anahtarı al.
2. `WeatherManager.swift` dosyasında `API_KEY` değişkenini kendi anahtarınla değiştir.

```swift
 let API_KEY = "SENIN_API_ANAHTARIN"
```

### 3. Projeyi Xcode ile Aç
```sh
 open WeatherApp.xcodeproj
```

### 4. Simülatör veya Gerçek Cihazda Çalıştır
Xcode'da çalıştır butonuna basarak uygulamayı test edebilirsin.

## ✨ Ekran Görünütüleri

| Ana Sayfa | Detay Sayfası |
|-----------|---------------|
| ![Home](screenshots/home.png) | ![Details](screenshots/details.png) |

## 🔧 Katkıda Bulunma
Projeye katkı sağlamak isterseniz **fork** alıp geliştirmeler yapabilir ve **pull request** oluşturabilirsiniz. Her türlü geri bildirimi bekliyorum!

## ✨ Lisans
Bu proje **MIT Lisansı** ile sunulmuştur.

---
**Hazırlayan:** [Metehan Olgun](https://github.com/metehannolgun)  
**GitHub:** [WeatherApp Repo](https://github.com/metehannolgun/WeatherApp)

