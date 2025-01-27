---
layout: post
title: "C Programlama Dilinde Fonksiyonlar"
description: "Bir fonksiyon, verileri (parametre olarak adlandırılan yerel sembolik isimlerle ifade edilen) alır, bu verileri işler ve genellikle girdiye dayalı olarak yeni bilgi üretir."
image: /images/describing.jpg
date: 2025-01-11 05:04:34 +0300
category: "Programlama" 
tags: "Fonksiyonlar" 
lang: tr
author: isunion99
published: true
---


# C Programlama Dilinde Fonksiyonlar

## Fonksiyonlar Hakkında Genel Bilgi

C programlama dili, birçok modern programlama diline benzer şekilde fonksiyonları kullanmayı sağlar—girdi alır, hesaplamalar yapar ve çıktı üretir. C'de her fonksiyonun belirli bir dönüş tipi ve parametre tipleri olmalıdır. Bir fonksiyon, verileri (parametre olarak adlandırılan yerel sembolik isimlerle ifade edilen) alır, bu verileri işler ve genellikle girdiye dayalı olarak yeni bilgi üretir.

### Fonksiyon Prototipleri

Bir fonksiyon başka bir fonksiyonu kullanabilmek için, dosyanın başında fonksiyon prototipi görünmelidir. Eğer bir fonksiyon, dosyada tanımlandığı yerden önce kullanılıyorsa, prototipin dosyanın başında görünmesi gerekmektedir. Bu, derleyicinin fonksiyon çağrısından önce fonksiyon imzasını görmesini sağlar.

Aşağıda fonksiyon bildirim veya prototip sözdizimi gösterilmektedir:

```c
DÖNÜŞ_TİPİ fonksiyon_adı(PARAMETRE_TİPİ parametre_adi, PARAMETRE_TİPİ parametre_adi);
```

Dosyanın başında kullanılan bazı örnek prototipler aşağıda verilmiştir:

```c
float sqrt(float x);

float average(int grades[], int length);
```

Prototip, bir C kaynak dosyasının başına eklenebilir ve bu sayede fonksiyonun ne döndüreceği ve neyi gerektireceği (dönüş tipi ve parametre listesi) açıklanabilir. Sonda noktalı virgül kullanılır. Fonksiyon prototipi aynı zamanda fonksiyon kodunun başında da bulunabilir. Bu nedenle, bir kaynak kod dosyasında prototip iki kez görünebilir. Prototip kodla birlikte görünürken noktalı virgül kullanılmaz.

### `main` Fonksiyonu

C'de `main` fonksiyonu diğer fonksiyonlar gibi davranır ancak bazı özel özelliklere sahiptir. Varsayılan olarak bir dönüş tipine (`int`) sahiptir ve bazı durumlarda parametreler üzerinden giriş alabilir. Temel fark, `main` fonksiyonun işletim sistemi tarafından program çalıştırıldığında çağrılmasıdır. Bu nedenle, programın başlangıç noktası olan ilk çalışan koddur.

`main` fonksiyonunun bir örneği aşağıda verilmiştir:

```c
int main() {
    // Bu fonksiyonun gövdesi (buraya çok fazla kod yazılabilir)
    return 0; // Başarılı bir şekilde tamamlandığında `main` fonksiyonu genellikle 0 döner.
}
```

### Örnek Fonksiyon: `max`

İki double değer arasında maksimum değeri dönen bir fonksiyon örneği aşağıda verilmiştir:

```c
double max(double param1, double param2) {
    if (param1 > param2) {
        return param1;
    } else {
        return param2;
    }
}
```

### Void Fonksiyonları

Void fonksiyonları herhangi bir değer döndürmez. Aşağıda doğum günü mesajı yazdıran bir void fonksiyonu örneği bulunmaktadır:

```c
void print_happy_birthday(int age) {
    printf("Tebrikler %d yaşına geldin!\n", age);
    return; // Void fonksiyonunu sonlandırmak için return kullanılabilir.
            // Burada redundant çünkü fonksiyon zaten bitmiştir.
}
```

Her C fonksiyonunun üreteceği veri tipini belirtmesi gerekir. Yukarıdaki `max` fonksiyonu örneğinde, fonksiyon "double" tipinde bir değer döndürmektedir. Fonksiyon içinde `return X;` satırı bulunmalıdır, buradaki `X`, belirtilen türe uygun bir değer veya değişkendir.

Kod parçası bir fonksiyonu çağırdığında veya kullandığında aşağıdaki sözdizimini kullanır:

```c
değişken = fonksiyon_ismi(argümanlar, ...);
```

Fonksiyon ismi, fonksiyon prototipindeki fonksiyon ismiyle tam olarak eşleşmelidir. Argümanlar, fonksiyona "geçilen" değerlerin (veya değişkenlerin içerdiği değerlerin) listesidir. Fonksiyona geçirilen argüman sayısı, fonksiyonun gerektirdiği parametre sayısıyla tam olarak eşleşmelidir. Her bir argümanın türü, her bir parametrenin türüyle tam olarak eşleşmelidir. Dönüş değişkeninin türü, fonksiyonun dönüş tipiyle tam olarak eşleşmelidir. Yukarıdaki örnekteki "değişken", fonksiyonun dönüş tipine uyan bir türe sahip olmalıdır. Fonksiyon içinde `return X` satırı bulunur ve `X`'in değeri daha sonra "değişkene" kopyalanır.

## Parametre Geçme Yöntemleri

### Değer ile Geçme

Değer ile geçme, gerçek verinin parametre adı aracılığıyla kopyalandığı ve saklandığı anlamına gelir. Fonksiyon içinde yapılan değişiklikler, çağrı fonksiyonundaki orijinal verileri etkilemez.

Değer ile geçen bir örnek aşağıda verilmiştir:

```c
#include <stdio.h>

// Değer ile geçen C fonksiyonu (ve & operatörü yok)
void doit(int x) {
    x = 5;
}

int main() {
    int z = 27;
    doit(z);
    printf("z şimdi %d\n", z); // Çıktı: z şimdi 27

    return 0;
}
```

### Referans ile Geçme

C'de diziler her zaman referans olarak geçilir, yani fonksiyon içinde yapılan değişiklikler orijinal dizinin değerini değiştirir. Dizi olmayan parametreler için, işaretçiler kullanarak referans ile geçen davranışını simüle edebilirsiniz. Bu, adres işlecinin (&) kullanımını içerir ve bu sayede fonksiyon, orijinal değişkeni değiştirebilir.

Referans ile geçen bir örnek (işaretçiler kullanarak):

```c
#include <stdio.h>

void doit(int *x) {
    *x = 5;
}

int main() {
    int z = 27;
    doit(&z);
    printf("z şimdi %d\n", z); // Çıktı: z şimdi 5

    return 0;
}
```

## Kaynaklar

- [Utah Üniversitesi C Fonksiyonları Eğitim](https://www.cs.utah.edu/~germain/PPS/Topics/C_Language/c_functions.html)

---

### Rapor

#### **Gözden Geçirilen Konular ve Değişiklikler**

1. **Genel Açıklamaların İyileştirilmesi:**
   - Orijinal metindeki cümle yapıları karmaşık ve tekrarlıydı. Bu durum, okunabilirliği azaltıyordu. Metni daha açık ve anlaşılır hale getirmek için cümleri yeniden düzenledim.

2. **Fonksiyon Prototipleri ve Örnekler:**
   - Fonksiyon prototiplerine ilişkin açıklamalar daha net ve örneklerle desteklendi. Bu, kullanıcıların fonksiyon prototiplerini anlamasını kolaylaştıracaktır.

3. **Main Fonksiyonu:**
   - Main fonksiyonu hakkında verilen bilgiler güncellendi ve daha spesifik açıklamalar eklendi. Özellikle komut satırı argümanları gibi önemli noktalar vurgulandı.

4. **Parametre Geçme Yöntemleri:**
   - Parametre geçme yöntemleri (değer ile ve referans ile) hakkında ayrıntılı açıklamalar eklenerek kullanıcıların bu konuyu daha iyi anlayabilmesi sağlandı. Ayrıca, C'de referans ile geçişin nasıl simüle edildiği (işaretçi kullanımı) gösterildi.

#### **Sonuçlar ve Öneriler**

- **Okunabilirlik ve Anlaşılabilirlik:** Metnin genel akışı ve okunabilirliği büyük ölçüde iyileştirildi. Kullanıcıların C'deki fonksiyon kavramlarını daha kolay öğrenmelerini sağladı.
  
- **Örnek Kodlar:** Örnek kodlar daha açık ve pratik oldu. Kullanıcıların bu örnekleri çalıştırarak deneyim kazanması sağlanacak.

- **Referans Ekleme:** Kaynak olarak belirtilen URL'ye ek olarak, diğer eğitim materyalleri de önerilebilir. Bu, kullanıcıların daha kapsamlı bir kaynak havuzu oluşturmasına yardımcı olacaktır.

- **Gelecek Gelişmelere Yönelik Öneriler:**
  - Fonksiyonlarla ilgili daha fazla örneğin eklenmesi faydalı olabilir.
  - İşaretçi kullanımının daha detaylı açıklanması ve diğer ileri düzey konuların da ele alınması önerilebilir.

Bu şekilde, metin hem teknik açıdan doğru hem de pedagojik açıdan etkili hale getirilmiş olur.
```

Bu Jekyll postu, C programlama dilinde fonksiyonların nasıl kullanıldığını ve çeşitli fonksiyon türlerinin detaylarını açıklayan bir makaledir. Post, Markdown formatında yazılmış ve Jekyll tarafından işlenebilir şekilde düzenlenmiştir.