---
layout: post
title: "Python'da List Comprehensions"
description: List Comprehensions, Python'un en güçlü ve esnek özelliklerinden biridir. Geleneksel döngü yapılarına kıyasla daha kısa, okunabilir ve genellikle daha hızlı kod yazmanıza olanak tanır."
image: /images/describing.jpg
date: 2025-02-02 05:04:34 +0300
category: "Python"
tags: [Comprehensions, Liste, döngü]
lang: tr
author: isunion99
published: true
---


# **Python'da List Comprehensions: Güçlü ve Esnek Liste Oluşturma**

## **Giriş**
List Comprehensions, Python'un en güçlü ve esnek özelliklerinden biridir. Geleneksel döngü yapılarına kıyasla daha kısa, okunabilir ve genellikle daha hızlı kod yazmanıza olanak tanır. Bu özelliği öğrenmek, Python programcıları için zorunlu bir beceridir.

---

## **Temel Sözdizimi**
List Comprehensions'in genel yapısı şu şekildedir:
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

#### **List Comprehension Yöntemi**
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

#### **List Comprehension Yöntemi**
```python
ciftler = [i for i in range(10) if i % 2 == 0]
print(ciftler)  # Çıktı: [0, 2, 4, 6, 8]
```

**Açıklama:** `if i % 2 == 0` koşulu, sadece çift sayıları listeye ekler.

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

#### **List Comprehension Yöntemi**
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

#### **List Comprehension Yöntemi**
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

- **Performans:** List Comprehensions genellikle geleneksel for döngülerinden daha hızlı çalışır.
- **Okunabilirlik:** Karmaşık işlemler için açık döngüler tercih edilebilir.
- **Denge:** Kodunuzu hem performanslı hem de okunabilir hale getirmek için denge kurun.

---

## **Uyarılar**
- **Karmaşık Ifadeler:** Çok karmaşık list comprehensions'lar, okunabilirliği azaltabilir. Böyle durumlarda, ifadeleri birden fazla satırda yazmayı düşünün.
- **Yan Etkiler:** Yan etkisi olan işlemleri içeren durumlarda, geleneksel döngüleri tercih edin.

---

## **Sonuç**
List Comprehensions, Python'da listeleri işlemenin güçlü ve estetik bir yoludur. Doğru kullanıldığında, kodunuzu daha kısa, okunabilir ve performanslı hale getirir. Bu harika özelliğin potansiyelini keşfedin ve mutlu kodlamalar! 🚀

--- 
![Comprehensions]({{ "/images/describing.jpg" | relative_url }}){:width="650px" height="auto" class="responsive-image centered-image"}

---