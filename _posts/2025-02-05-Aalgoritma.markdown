---
layout: post
title: "Derinlik Öncelikli Arama (DFS)"
description: "Derinlik öncelikli arama (DFS), tıpkı bir labirentte kaybolmuş gibi, en derine kadar giden bir yol bulmaya çalışmak gibidir. Mesela, büyük bir ağaç düşün: dallarının en ucuna kadar gitmeye çalışırsın."
image: /images/describing.jpg
date: 2025-02-05 05:04:34 +0300
category: "Arama"
tags: [algoritma]
lang: tr
author: isunion99
published: true
---

# Derinlik Öncelikli Arama (DFS)


Tabii ki! A* Arama Algoritması'nı bir çocuğa anlatır gibi basit bir şekilde açıklamaya çalışayım.

---

Düşün ki, sen bir labirentin içindeysin ve çıkışa gitmek istiyorsun. Ama labirent çok büyük ve karmaşık. Çıkışa en hızlı yoldan nasıl gideceğini bulmak istiyorsun. İşte tam da bu durumda **A* (A yıldız)** adlı bir "yardımcı" sana yardım edebilir!

### A* Nasıl Çalışır?
1. **Başlangıç Noktası**: Önce nerede olduğunu bilirsin. Bu, labirentteki başlangıç noktasın.
2. **Hedef Nokta**: Çıkışın nerede olduğunu da biliyorsun. Bu, hedefin.
3. **Adım Adım İlerleme**: Şimdi, her adımda hangi yöne gitmen gerektiğini düşünmelisin. A* algoritması senin için en iyi yolu bulmaya çalışır.

### A*'nın Sihirli Formülü
A*, iki şeyi birleştirerek en iyi yolu bulur:
- **G (Gerçek Mesafe)**: Şu ana kadar ne kadar yol aldığını gösterir. Yani başlangıç noktasından şu anda bulunduğun yere kadar ne kadar ilerlediğini ölçer.
- **H (Tahmini Mesafe)**: Şu anda olduğun yerden çıkışa (hedefe) ne kadar kaldığını tahmin eder. Bu, bir tür "sezgi"dir, ama matematiksel olarak hesaplanır.

A* algoritması, bu iki değeri toplar ve **F = G + H** formülünü kullanır. F değeri, o yolun ne kadar iyi olduğunu söyler. A* her seferinde F değeri en düşük olan yolu seçer, böylece çıkışa en hızlı şekilde ulaşabilirsin.

### Örnek Verelim
Diyelim ki labirentte üç farklı kapı var:
- **Kapı 1**: Buraya gelmek için 5 adım attın, ama çıkışa 8 adım var. F = 5 + 8 = 13.
- **Kapı 2**: Buraya gelmek için 3 adım attın, ama çıkışa 10 adım var. F = 3 + 10 = 13.
- **Kapı 3**: Buraya gelmek için 6 adım attın, ama çıkışa 6 adım var. F = 6 + 6 = 12.

A* algoritması, F değeri en düşük olan Kapı 3'ü seçer, çünkü bu kapı çıkışa daha yakın gibi görünüyor.

### Neden A* Özel?
A*, hem geçmişte ne kadar yol aldığını (**G**) hem de gelecekte ne kadar yol kalabileceğini (**H**) düşünerek karar verir. Bu yüzden, sadece şu anki konumuna bakıp karar vermek yerine, geleceği de hesaba katarak en iyi yolu bulur.

### Gerçek Hayatta Nerelerde Kullanılır?
- Haritalarda yol bulmak için (örneğin, Google Maps'te en kısa rotayı bulmak).
- Videolarda karakterlerin akıllıca hareket etmesi için.
- Robotların bir yerden başka bir yere gitmesini planlamak için.

---

Umarım bu açıklama A* algoritmasını anlamana yardımcı olmuştur! Eğer aklına başka sorular geliyorsa, merak etme, sorabilirsin! 😊


Tabii ki! İşte A* Arama Algoritması için kısa ve öz bir öğretici rehber:

---

### **A* Arama Algoritması Rehberi**

#### **1. Temel Fikir**
- A*, bir başlangıç noktasından hedefe en kısa yolu bulmak için kullanılan akıllı bir algoritmadır.
- İki şeyi birleştirir:
  - **G**: Şu ana kadar ne kadar yol katettiğin (gerçek mesafe).
  - **H**: Şu anda olduğun yerden hedefe ne kadar kaldığının tahmini (sezgisel mesafe).

**Formül:**  
F = G + H  
(F değeri, bir yolun ne kadar iyi olduğunu gösterir.)

---

#### **2. Adımlar**
1. **Başla:**
   - Başlangıç noktasını belirle.
   - Hedef noktasını belirle.

2. **Açık Liste ve Kapalı Liste:**
   - **Açık Liste:** Henüz incelemediğin noktalar.
   - **Kapalı Liste:** İncelediğin ve değerlendirdiğin noktalar.

3. **Her Adımda Yapılacaklar:**
   - Açık listedeki tüm noktalardan **F değeri en düşük olanı** seç.
   - Bu noktanın komşularına bak:
     - Eğer komşu hedef ise, yol tamamlandı!
     - Eğer komşu açık listedeyse, daha iyi bir yol var mı kontrol et.
     - Eğer komşu kapalı listedeyse, onu tekrar değerlendirme.
     - Komşuyu açık listeye ekle ve G, H, F değerlerini hesapla.
   - İncelediğin noktayı kapalı listeye taşı.

4. **Bitiş:**
   - Hedefe ulaştığında, geriye doğru takip ederek yol haritasını oluştur.

---

#### **3. İpucu: H Değerini Doğru Tahmin Et!**
- H değeri, gerçek mesafeye yakın olmalı. Örneğin:
  - **Manhattan Mesafesi:** Yatay ve dikey hareketlerle uzaklık.
  - **Öklid Mesafesi:** Doğrusal uzaklık (kuş uçuşu).

---

#### **4. Basit Bir Örnek**
- Başlangıç: A noktası  
- Hedef: D noktası  
- Noktalar: A → B → C → D

| Nokta | G (Gerçek) | H (Tahmini) | F (Toplam) |
|-------|------------|-------------|------------|
| A     | 0          | 10          | 10         |
| B     | 5          | 6           | 11         |
| C     | 8          | 3           | 11         |
| D     | 12         | 0           | 12         |

A*, her seferinde F değeri en düşük olan yolu seçerek A → B → C → D yolunu bulur.

---

#### **5. Gerçek Hayatta Kullanımı**
- Haritalarda rota planlama.
- Videolarda karakterlerin akıllıca hareket etmesi.
- Robotların yolunu bulması.

---

#### **6. Unutma!**
- A*, hem geçmişteki adımları (**G**) hem de geleceği (**H**) düşünerek en iyi yolu bulur.
- İyi bir H tahmini, algoritmayı daha hızlı ve verimli yapar.

---

Artık A* algoritmasını temel düzeyde biliyorsun! 🎉  
Eğer uygulamak istersen, kağıt üzerinde küçük bir labirent çizerek deneyebilirsin. Kolay gelsin! 😊

Tabii ki! Python ile A* algoritmasını basit bir şekilde nasıl uygulayabileceğinizi göstermek için aşağıdaki örneği hazırladım. Bu örnekte, 2 boyutlu bir grid (ızgara) üzerinde başlangıç noktasından hedef noktasına en kısa yolu bulacağız.

---

### **Python ile A* Algoritması Örneği**

```python
import heapq

# Grid boyutları ve engeller
GRID_WIDTH = 5
GRID_HEIGHT = 5
OBSTACLES = [(1, 2), (2, 2), (3, 2)]  # Engellerin konumu

# Hedefe olan tahmini mesafe (Manhattan Mesafesi)
def heuristic(a, b):
    return abs(a[0] - b[0]) + abs(a[1] - b[1])

# A* algoritması
def a_star(start, goal):
    # Açık liste: (F değeri, koordinat)
    open_list = []
    heapq.heappush(open_list, (0, start))
    
    # G değerlerini saklamak için sözlük
    g_values = {start: 0}
    
    # Her noktanın önceki noktasını saklamak için sözlük
    came_from = {}
    
    while open_list:
        # F değeri en düşük olanı seç
        current_f, current = heapq.heappop(open_list)
        
        # Hedefe ulaşıldı mı kontrol et
        if current == goal:
            break
        
        # Komşuları incele
        neighbors = [
            (current[0] + 1, current[1]),  # Sağ
            (current[0] - 1, current[1]),  # Sol
            (current[0], current[1] + 1),  # Aşağı
            (current[0], current[1] - 1)   # Yukarı
        ]
        
        for neighbor in neighbors:
            # Grid sınırları içinde mi ve engel değil mi kontrol et
            if 0 <= neighbor[0] < GRID_WIDTH and 0 <= neighbor[1] < GRID_HEIGHT and neighbor not in OBSTACLES:
                # G değerini hesapla
                tentative_g = g_values[current] + 1
                
                # Eğer daha iyi bir yol bulunursa güncelle
                if neighbor not in g_values or tentative_g < g_values[neighbor]:
                    g_values[neighbor] = tentative_g
                    f_value = tentative_g + heuristic(neighbor, goal)
                    heapq.heappush(open_list, (f_value, neighbor))
                    came_from[neighbor] = current
    
    # Yolu geriye doğru takip et
    path = []
    if goal in came_from:
        current = goal
        while current != start:
            path.append(current)
            current = came_from[current]
        path.append(start)
        path.reverse()
    
    return path

# Başlangıç ve hedef noktaları
start = (0, 0)
goal = (4, 4)

# A* algoritmasını çalıştır
path = a_star(start, goal)

# Sonucu yazdır
if path:
    print("Bulunan yol:", path)
else:
    print("Hedefe ulaşmak mümkün değil!")
```

---

### **Kodun Çalışma Mantığı**
1. **Grid Tanımı:**
   - `GRID_WIDTH` ve `GRID_HEIGHT`, ızgaranın boyutlarını belirler.
   - `OBSTACLES`, ızgaradaki engellerin konumlarını temsil eder.

2. **Heuristic Fonksiyonu:**
   - Manhattan mesafesi kullanarak, mevcut nokta ile hedef arasındaki tahmini mesafeyi hesaplar.

3. **Açık Liste ve G Değerleri:**
   - `open_list`, henüz incelenmemiş noktaları içerir.
   - `g_values`, her noktanın başlangıç noktasından uzaklığını (G değerini) tutar.

4. **Komşuları İnceleme:**
   - Mevcut noktanın sağ, sol, yukarı ve aşağı komşularını kontrol eder.
   - Eğer komşu geçerli bir noktaysa ve daha iyi bir yol varsa, güncelleme yapar.

5. **Yolu Geri İzleme:**
   - Hedefe ulaşıldığında, `came_from` sözlüğünü kullanarak başlangıç noktasına geri dönerek yolu oluşturur.

---

### **Örnek Çıktı**
Eğer engeller şu şekildeyse:
- Engeller: `(1, 2), (2, 2), (3, 2)`
- Başlangıç: `(0, 0)`
- Hedef: `(4, 4)`

Çıktı şu şekilde olabilir:
```
Bulunan yol: [(0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (1, 4), (2, 4), (3, 4), (4, 4)]
```

---

### **Nasıl Test Edebilirsin?**
1. Kodu bir Python dosyasına kaydedin (örneğin, `a_star.py`).
2. `start` ve `goal` noktalarını değiştirerek farklı senaryolar deneyin.
3. `OBSTACLES` listesini değiştirerek engeller ekleyin veya kaldırın.

---

Bu kod, A* algoritmasının temel prensiplerini uygulayan basit bir örnektir. Artık kendi projelerinizde bu algoritmayı kullanabilirsiniz! 🚀


Tabii ki! A* algoritmasının Python kodunu adım adım açıklayacağım. Bu açıklama, her bir parçanın ne işe yaradığını ve nasıl çalıştığını anlamanıza yardımcı olacaktır.

---

### **1. Kütüphane ve Değişkenler**

```python
import heapq
```

- `heapq`: Python'da öncelik kuyruğu (priority queue) oluşturmak için kullanılan bir kütüphane. A* algoritmasında, F değeri en düşük olan noktayı hızlıca seçmek için kullanılır.

---

```python
GRID_WIDTH = 5
GRID_HEIGHT = 5
OBSTACLES = [(1, 2), (2, 2), (3, 2)]
```

- `GRID_WIDTH` ve `GRID_HEIGHT`: Grid'in genişlik ve yüksekliğini belirler. Örneğin, 5x5 bir grid oluşturduk.
- `OBSTACLES`: Grid üzerindeki engellerin konumlarını temsil eder. Örneğin, `(1, 2)` noktası engelli bir hücredir.

---

### **2. Heuristic Fonksiyonu**

```python
def heuristic(a, b):
    return abs(a[0] - b[0]) + abs(a[1] - b[1])
```

- Bu fonksiyon, Manhattan mesafesi hesaplar. Manhattan mesafesi, iki nokta arasındaki yatay ve dikey uzaklığın toplamıdır.
- Örnek: `(0, 0)` ile `(4, 4)` arasındaki Manhattan mesafesi:  
  `|0 - 4| + |0 - 4| = 8`.

---

### **3. A* Algoritması**

```python
def a_star(start, goal):
```

- `start`: Başlangıç noktasını temsil eder (örneğin, `(0, 0)`).
- `goal`: Hedef noktasını temsil eder (örneğin, `(4, 4)`).

---

#### **3.1. Açık Liste ve G Değerleri**

```python
open_list = []
heapq.heappush(open_list, (0, start))
g_values = {start: 0}
came_from = {}
```

- `open_list`: Henüz incelenmemiş noktaları içerir. Her eleman `(F değeri, koordinat)` şeklinde saklanır.
- `g_values`: Her noktanın başlangıç noktasından uzaklığını (G değerini) tutar. Başlangıçta sadece başlangıç noktasının G değeri `0` olarak ayarlanır.
- `came_from`: Her noktanın önceki noktasını takip etmek için kullanılır. Yolu geri izlemek amacıyla oluşturulur.

---

#### **3.2. Ana Döngü**

```python
while open_list:
    current_f, current = heapq.heappop(open_list)
```

- `heapq.heappop(open_list)`: Açık listeden F değeri en düşük olan noktayı çıkarır. Bu, şu anda inceleyeceğimiz noktadır.

---

```python
if current == goal:
    break
```

- Eğer mevcut nokta hedef noktaysa, döngüyü sonlandır.

---

#### **3.3. Komşuları İnceleme**

```python
neighbors = [
    (current[0] + 1, current[1]),  # Sağ
    (current[0] - 1, current[1]),  # Sol
    (current[0], current[1] + 1),  # Aşağı
    (current[0], current[1] - 1)   # Yukarı
]
```

- Mevcut noktanın sağ, sol, yukarı ve aşağı komşularını bulur.

---

```python
for neighbor in neighbors:
    if 0 <= neighbor[0] < GRID_WIDTH and 0 <= neighbor[1] < GRID_HEIGHT and neighbor not in OBSTACLES:
```

- Komşu noktanın grid sınırları içinde olup olmadığını kontrol eder.
- Ayrıca, komşu noktanın engel olup olmadığını (`OBSTACLES` listesinde olup olmadığını) kontrol eder.

---

```python
tentative_g = g_values[current] + 1
```

- Komşuya ulaşmak için gereken geçici G değerini hesaplar. Bu, mevcut noktanın G değerine `1` eklenerek bulunur (her adımın maliyeti `1` kabul edilir).

---

```python
if neighbor not in g_values or tentative_g < g_values[neighbor]:
    g_values[neighbor] = tentative_g
    f_value = tentative_g + heuristic(neighbor, goal)
    heapq.heappush(open_list, (f_value, neighbor))
    came_from[neighbor] = current
```

- Eğer bu komşuya daha kısa bir yol bulunduysa:
  - G değerini güncelle.
  - F değerini hesapla (`F = G + H`).
  - Komşuyu açık listeye ekle.
  - `came_from` sözlüğünü güncelle, böylece bu komşunun nereden geldiğini biliriz.

---

#### **3.4. Yolu Geri İzleme**

```python
path = []
if goal in came_from:
    current = goal
    while current != start:
        path.append(current)
        current = came_from[current]
    path.append(start)
    path.reverse()
```

- Eğer hedefe ulaşıldıysa, `came_from` sözlüğünü kullanarak başlangıç noktasına geri dönerek yolu oluşturur.
- Yolu tersine çevirir (sondan başa doğru izlediğimiz için).

---

### **4. Sonuçları Yazdırma**

```python
if path:
    print("Bulunan yol:", path)
else:
    print("Hedefe ulaşmak mümkün değil!")
```

- Eğer bir yol bulunduysa, yolu yazdır.
- Eğer yol bulunamadıysa, hedefe ulaşılamadığını bildir.

---

### **Örnek Çalışma Adımları**

1. **Başlangıç:** `(0, 0)`
2. **Hedef:** `(4, 4)`
3. **Engeller:** `(1, 2), (2, 2), (3, 2)`

#### Adım 1:
- Açık liste: `[(0, (0, 0))]`
- Mevcut nokta: `(0, 0)`
- Komşular: `(1, 0), (0, 1)`

#### Adım 2:
- Açık liste: `[(1, (1, 0)), (1, (0, 1))]`
- Mevcut nokta: `(1, 0)`
- Komşular: `(2, 0), (1, 1)`

#### Adım 3:
- Açık liste: `[(1, (0, 1)), (2, (2, 0)), (2, (1, 1))]`
- Mevcut nokta: `(0, 1)`
- Komşular: `(0, 2), (0, 0)`

Bu şekilde devam ederek, hedefe en kısa yolu bulur.

---

### **Çıktı Örneği**
Eğer engeller şu şekildeyse:
- Engeller: `(1, 2), (2, 2), (3, 2)`
- Başlangıç: `(0, 0)`
- Hedef: `(4, 4)`

Çıktı şu şekilde olabilir:
```
Bulunan yol: [(0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (1, 4), (2, 4), (3, 4), (4, 4)]
```

---

Artık A* algoritmasının Python kodunu adım adım anlamış oldunuz! 🎉