---
layout: post
title: "Python'da Liste Üreteçleri"
description: Liste Üreteçleri, Python'un en güçlü ve esnek özelliklerinden biridir. Geleneksel döngü yapılarına kıyasla daha kısa, okunabilir ve genellikle daha hızlı kod yazmanıza olanak tanır."
image: /images/describing.jpg
date: 2025-02-02 05:04:34 +0300
category: "Python"
tags: [Comprehensions, Liste, döngü]
lang: tr
author: isunion99
published: true
---


# **Python'da Liste Üreteçleri: Güçlü ve Esnek Liste Oluşturma**

## **Giriş**
Liste Üreteçleri, Python'un en güçlü ve esnek özelliklerinden biridir. Geleneksel döngü yapılarına kıyasla daha kısa, okunabilir ve genellikle daha hızlı kod yazmanıza olanak tanır. Bu özelliği öğrenmek, Python programcıları için zorunlu bir beceridir.

---

## **Temel Sözdizimi**
Liste Üreteçleri'in genel yapısı şu şekildedir:
```python
[yeni_değer for eleman in mevcut_liste if koşul]
```

### **Sözdizimi Bileşenleri**
- **`yeni_değer`:** Her eleman için üretilen veya hesaplanan değer.
- **`eleman`:** Mevcut listedeki her bir öğe.
- **`mevcut_liste`:** Üzerinde işlem yapılacak kaynak liste.
- **`koşul` (isteğe bağlı):** Elemanların listeye dahil edilmesini kontrol eden filtre.

---

## **Pratik Örnekler**

### **1. Basit Liste Oluşturma: Sayıların Kareleri**
Sayıların karelerinden oluşan bir liste oluşturalım.

#### **Klasik Yöntem**
```python
kareler = []
for i in range(10):
    kareler.append(i**2)
print(kareler)  # Çıktı: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

#### **Liste Üreteci Yöntemi**
```python
kareler = [i**2 for i in range(10)]
print(kareler)  # Çıktı: [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

**Açıklama:** `range(10)`'dan gelen her `i` değeri için `i**2` hesaplanır ve listeye eklenir.

---

### **2. Koşullu Liste Oluşturma: Çift Sayılar**
0'dan 9'a kadar olan çift sayıları bir liste olarak elde edelim.

#### **Klasik Yöntem**
```python
ciftler = []
for i in range(10):
    if i % 2 == 0:
        ciftler.append(i)
print(ciftler)  # Çıktı: [0, 2, 4, 6, 8]
```

#### **Liste Üreteci Yöntemi**
```python
ciftler = [i for i in range(10) if i % 2 == 0]
print(ciftler)  # Çıktı: [0, 2, 4, 6, 8]
```

**Açıklama:** `if i % 2 == 0` koşulu, sadece çift sayıları listeye ekler.


---

### **Kodun Parçalarını Adım Adım Analiz Edelim**

#### **Adım 1: `range(10)`**
- `range(10)` fonksiyonu, 0'dan 9'a kadar olan (10 hariç) tam sayıları üretir.
- Bu, şu diziyi temsil eder: `[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]`.

#### **Adım 2: `for i in range(10)`**
- `for i in range(10)` döngüsü, `range(10)`'dan gelen her bir sayıyı sırasıyla `i` değişkenine atar.
- Örneğin, döngü önce `i = 0`, ardından `i = 1`, sonra `i = 2` ve bu şekilde devam eder.

#### **Adım 3: `if i % 2 == 0`**
- `if i % 2 == 0` koşulu, `i`'nin çift olup olmadığını kontrol eder.
- `%` operatörü, bir sayının başka bir sayıya bölümünden kalanı verir.
  - Eğer `i % 2 == 0`, yani `i`'nin 2'ye bölümünden kalan 0 ise, bu demektir ki `i` çift bir sayıdır.
- Örneğin:
  - `0 % 2 == 0` → Doğru (0 çifttir).
  - `1 % 2 == 0` → Yanlış (1 tek).
  - `2 % 2 == 0` → Doğru (2 çifttir).

#### **Adım 4: `[i for i in range(10) if i % 2 == 0]`**
- Bu ifade, `range(10)`'dan alınan her `i` değeri için, eğer `i % 2 == 0` koşulu sağlanıyorsa, `i`'yi yeni bir liste içine yerleştirir.
- Koşulu sağlayan sayılar şunlardır: `0, 2, 4, 6, 8`.

#### **Adım 5: `ciftler = [...]`**
- Yeni oluşturulan liste, `ciftler` adlı bir değişkene atanır.
- Sonuç olarak, `ciftler` şu hale gelir: `[0, 2, 4, 6, 8]`.

---

### **3. `print(ciftler)`**
- `print(ciftler)` komutu, `ciftler` listesinin içeriğini ekrana yazdırır.
- Çıktı şu şekilde olacaktır:
```plaintext
[0, 2, 4, 6, 8]
```

---

### **4. Özet**
Bu kod, `range(10)`'dan gelen sayıları kontrol ederek yalnızca çift olanlarını bir liste halinde toplar. Liste Üreteçleri yapısı, bu işlemi tek bir satırda daha kısa ve okunabilir bir şekilde gerçekleştirir.

**Sonuç:** Kodun çıktısı, `[0, 2, 4, 6, 8]` dir. 🚀



---

### **3. String İşleme: Kelime Uzunlukları**
Bir string listesindeki her kelimenin uzunluğunu bulalım.

#### **Klasik Yöntem**
```python
kelimeler = ["Python", "programlama", "kolay"]
uzunluklar = []
for kelime in kelimeler:
    uzunluklar.append(len(kelime))
print(uzunluklar)  # Çıktı: [6, 11, 5]
```

#### **Liste Üreteci Yöntemi**
```python
kelimeler = ["Python", "programlama", "kolay"]
uzunluklar = [len(kelime) for kelime in kelimeler]
print(uzunluklar)  # Çıktı: [6, 11, 5]
```

**Açıklama:** Her `kelime` için `len(kelime)` hesaplanır ve listeye eklenir.

---

### **4. İç İçe Liste İşlemleri: Kartezyen Çarpım**
İki farklı listeden elemanları birleştirerek yeni bir liste oluşturalım.

#### **Klasik Yöntem**
```python
liste1 = [1, 2, 3]
liste2 = ["a", "b", "c"]
sonuc = []
for x in liste1:
    for y in liste2:
        sonuc.append((x, y))
print(sonuc)  # Çıktı: [(1, 'a'), (1, 'b'), (1, 'c'), (2, 'a'), ...]
```

#### **Liste Üreteci Yöntemi**
```python
liste1 = [1, 2, 3]
liste2 = ["a", "b", "c"]
sonuc = [(x, y) for x in liste1 for y in liste2]
print(sonuc)  # Çıktı: [(1, 'a'), (1, 'b'), (1, 'c'), (2, 'a'), ...]
```

**Açıklama:** İki iç içe döngüyü tek bir satırda ifade ettik.

---

## **Gelişmiş Kullanımlar**

### **Matris Dönüşümleri**
Bir matrisin transpozesini (satırları sütunlar haline getirme) alalım.

```python
# 2x2'lik matrisin transpozunu alma
matris = [[1, 2], [3, 4]]
transpoze = [[satir[j] for satir in matris] for j in range(len(matris[0]))]
print(transpoze)  # Çıktı: [[1, 3], [2, 4]]
```

**Açıklama:** Dıştaki comprehension, sütun indekslerini (`j`) belirlerken, içteki comprehension, her sütundaki elemanları toplar.

---

### **Sözlük Dönüşümleri**
Bir sözlükten belirli bir şarta uyan anahtarları bir liste olarak çıkaralım.

```python
# Başarılı öğrencileri bulma
ogrenciler = {'Ali': 85, 'Ayşe': 92, 'Mehmet': 78}
basarili_ogrenciler = [isim for isim, not_degeri in ogrenciler.items() if not_degeri >= 80]
print(basarili_ogrenciler)  # Çıktı: ['Ali', 'Ayşe']
```

**Açıklama:** `items()` metodunu kullanarak sözlüğün her bir `(key, value)` ikilisini işleve sokup, belirli bir koşulu kontrol ettik.

---

## **Performans ve En İyi Uygulamalar**

- **Performans:** Liste Üreteçleri genellikle geleneksel for döngülerinden daha hızlı çalışır.
- **Okunabilirlik:** Karmaşık işlemler için açık döngüler tercih edilebilir.
- **Denge:** Kodunuzu hem performanslı hem de okunabilir hale getirmek için denge kurun.

---

## **Uyarılar**
- **Karmaşık Ifadeler:** Çok karmaşık Liste Üreteçleri'lar, okunabilirliği azaltabilir. Böyle durumlarda, ifadeleri birden fazla satırda yazmayı düşünün.
- **Yan Etkiler:** Yan etkisi olan işlemleri içeren durumlarda, geleneksel döngüleri tercih edin.

---

## **Sonuç**
Liste Üreteçleri, Python'da listeleri işlemenin güçlü ve estetik bir yoludur. Doğru kullanıldığında, kodunuzu daha kısa, okunabilir ve performanslı hale getirir. Bu harika özelliğin potansiyelini keşfedin ve mutlu kodlamalar! 🚀

--- 
![Comprehensions]({{ "/images/describing.jpg" | relative_url }}){:width="650px" height="auto" class="responsive-image centered-image"}

---