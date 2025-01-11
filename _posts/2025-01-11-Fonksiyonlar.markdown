---
layout: post
title: "C Dilinde Fonksiyonlar"
description: "C Dilinde Fonksiyonlar Kullanımı"
image: "/images/describing.jpg"
date: 2025-01-11 05:04:34 +0300
category: "Fonksiyonlar"
---


### C Dilinde Fonksiyonlar

C dilinde fonksiyonlar, belirli hesaplamaları gerçekleştiren ve genellikle parametre bilgilerine dayanarak yeni bilgiler döndüren kod modülleridir. Fonksiyonlar, programların daha düzenli ve okunabilir olmasını sağlar.

#### Fonksiyon Prototipi

Bir fonksiyonun başka bir fonksiyon tarafından kullanılabilmesi için, fonksiyonun prototipinin dosyada önceden tanımlanmış olması gerekir. Eğer bir fonksiyon, dosyada kendisinden önce yazılmış başka bir fonksiyonu kullanıyorsa, bu otomatik olarak sağlanır. Ancak, fonksiyon dosyada kendisinden sonra yazılmış bir fonksiyonu kullanıyorsa, prototipin dosyanın üst kısmında belirtilmesi gerekir.

##### Fonksiyon Prototipi Sözdizimi

```c
RETURN_TYPE name_of_function(PARAMETER_TYPE name_of_param, PARAMETER_TYPE name_of_param);
```

#### Örnekler

```c
float sqrt(float x);
float average(int grades[], int length);
```

Bu prototipler, fonksiyonun ne tür bir değer döndüreceğini ve hangi türde parametreler alacağını belirtir. Prototipler, kaynak dosyanın başında ve fonksiyon kodunun başında yer alabilir. Prototip ile kodun başında yer aldığında noktalı virgül kullanılmaz.

### Ana Fonksiyon (main)

C dilinde "main" fonksiyonu, tüm programların başlangıç noktasıdır. Ana fonksiyon, diğer fonksiyonlar gibi bir dönüş türüne sahiptir ve bazı durumlarda parametreler kabul eder. İşletim sistemi tarafından çağrılır ve program çalıştırıldığında ilk olarak ana fonksiyon yürütülür.

```c
int main() {
    // Ana fonksiyonun gövdesi (burada çok fazla kod olabilir)
    return 0; // Program başarılı bir şekilde sona erdiğinde 0 döner
}
```

### Örnek Fonksiyonlar

#### Maksimum Değer Bulan Fonksiyon

```c
double max(double param1, double param2) {
    if (param1 > param2) {
        return param1;
    } else {
        return param2;
    }
}
```

#### Yaş Belirten Mesaj Yazdıran Fonksiyon

```c
void print_happy_birthday(int age) {
    printf("Congratulations on your %d th Birthday\n", age);
    return;  // Bu satır zorunlu değildir, fonksiyon zaten burada sona eriyor.
}
```

### Fonksiyon Çağırma

Bir fonksiyon çağrıldığında, aşağıdaki sözdizimi kullanılır:

```c
variable = function_name(args, ...);
```

Fonksiyon adı, prototipte belirtilen adla tam olarak eşleşmelidir. Argümanlar, fonksiyona "geçirilen" değerler listesidir. Argüman sayısı ve türü, fonksiyonun gerektirdiği parametrelerle tam olarak eşleşmelidir. Dönüş türü de fonksiyonun belirttiği türle eşleşmelidir.

### Parametre Geçiş Yöntemleri

C dilinde parametreler iki şekilde geçirilebilir: değerle geçirme ve referansla geçirme.

#### Değerle Geçirme

Değerle geçirme, verilerin kopyalanarak parametre adıyla saklanması anlamına gelir. Parametrede yapılan değişiklikler, çağıran fonksiyondaki verileri etkilemez.

##### Örnek

```c
#include <stdio.h>

// Değerle geçirme örneği
void doit(int x) {
    x = 5;
}

int main() {
    int z = 27;
    doit(z);
    printf("z is now %d\n", z); // Çıktı: z is now 27
    return 0;
}
```

#### Referansla Geçirme (Pointer Kullanarak)

Referansla geçirme, parametreye yapılan her değişikliğin, çağıran fonksiyondaki orijinal veriyi de değiştirmesi anlamına gelir. C dilinde bu yöntem pointer'lar kullanılarak yapılır.

##### Örnek

```c
#include <stdio.h>

// Referansla geçirme örneği (pointer kullanarak)
void doit(int *x) {
    *x = 5;
}

int main() {
    int z = 27;
    doit(&z);
    printf("z is now %d\n", z); // Çıktı: z is now 5
    return 0;
}
```

### Özet

C dilinde fonksiyonlar, belirli görevleri gerçekleştiren ve genellikle parametre bilgilerine dayanarak yeni bilgiler döndüren kod modülleridir. Fonksiyon prototipleri, fonksiyonların kullanımı için gereklidir ve parametre geçiş yöntemleri, verilerin nasıl işlendiğini belirler. Bu temel bilgiler, C programlama dilinde fonksiyonları etkin bir şekilde kullanmanıza yardımcı olacaktır.

Eğer daha fazla bilgiye ihtiyaç duyarsanız veya başka konular hakkında sorularınız varsa, lütfen sormaktan çekinmeyin.
