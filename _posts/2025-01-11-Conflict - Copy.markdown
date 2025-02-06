---
layout: post
title: "Derinlik Öncelikli Arama (DFS)"
description: "Derinlik öncelikli arama (DFS), tıpkı bir labirentte kaybolmuş gibi, en derine kadar giden bir yol bulmaya çalışmak gibidir. Mesela, büyük bir ağaç düşün: dallarının en ucuna kadar gitmeye çalışırsın."
image: /images/describing.jpg
date: 2025-01-17 05:04:34 +0300
category: "Arama"
tags: [algoritma]
lang: tr
author: isunion99
published: true
---

# Derinlik Öncelikli Arama (DFS)


Derinlik öncelikli arama (DFS), tıpkı bir labirentte kaybolmuş gibi, en derine kadar giden bir yol bulmaya çalışmak gibidir. Mesela, büyük bir ağaç düşün: dallarının en ucuna kadar gitmeye çalışırsın. Önce bir dala dalarsın, o dalın sonuna kadar gidersin; eğer orada çıkış yoksa, geri dönüp başka bir dala bakarsın. İşte DFS de öyle çalışır: önce bir yoldan başlayıp mümkün olduğunca derine iner, sonra başka yolları denemek için geri döner. Böylece en sonunda çıkışa (hedefe) ulaşmaya çalışır!


Aşağıda, Derinlik Öncelikli Arama (DFS) algoritmasını adım adım açıklayan kısa ve öğretici bir rehber bulabilirsiniz:

---

### Derinlik Öncelikli Arama (DFS) Nedir?

Derinlik Öncelikli Arama, bir ağacın veya labirentin en derin noktasına kadar gitmeye çalışıp, eğer hedef bulunamazsa geri dönerek diğer yolları denemek esasına dayanan bir arama yöntemidir. Bu algoritma, önce bir yoldan olabildiğince ileri gider, sonra artık ilerleyemediğinde bir önceki karara geri döner ve diğer seçenekleri inceler.

---

### DFS Nasıl Çalışır? Adım Adım

1. **Başlangıç Noktası:**  
   Aramaya başlamak için bir başlangıç noktası belirlenir (örneğin, bir ağacın kökü veya labirentin giriş kapısı).

2. **Bir Yola Gir:**  
   Başlangıç noktasından, komşu düğümlerden (yani, bağlantılı diğer noktalardan) birine geçilir. Bu geçiş, bir yolu “seçmek” gibidir.

3. **Derine İlerle:**  
   Seçilen yoldaki her bir düğüme ulaşırken, aynı yöntemi tekrarlayın. Yani, o düğümün komşularından birini seçip en derine inmeye çalışın.

4. **Hedefi Kontrol Et:**  
   Her düğüme ulaştığınızda, bu düğüm hedef mi diye kontrol edin. Eğer hedef bulunursa, aramayı durdurun ve başarıyla bitirin.

5. **Geri Dön (Backtracking):**  
   Eğer seçtiğiniz yol artık ilerleyemeyecek (örneğin, öyle bir yol yok veya duvara çarptınız) veya hedefe ulaşamadıysanız, bir önceki düğüme geri dönün ve o noktadan başka hangi yolların olduğunu kontrol edin.

6. **Diğer Yolları Deneyin:**  
   Geri döndüğünüz her noktada, henüz denenmemiş diğer yolları keşfedin. Bu sayede tüm olası yollar denenmiş olur.

7. **Arama Tamamlanır:**  
   Tüm yollar denendiğinde ve hedef bulunamadığında, DFS algoritması aramayı sonlandırır ve “çözüm bulunamadı” sonucunu verir.

---

### DFS’nin Avantajları ve Dezavantajları

- **Avantajlar:**  
  - Basit ve anlaşılır bir yapısı vardır.
  - Bellek kullanımı, genişlik öncelikli aramaya göre genellikle daha düşüktür (çünkü aynı anda yalnızca bir yolun derinliği tutulur).

- **Dezavantajlar:**  
  - Hedef uzak bir noktada veya hiç bulunamıyorsa, gereksiz yere derinlere inerek zaman kaybına neden olabilir.
  - Sonsuz döngülere girebilir (örneğin, döngüsel yapılar varsa). Bu nedenle, ziyaret edilen düğümlerin kaydını tutmak önemlidir.

---

### Örnek Senaryo

Diyelim ki, bir labirenttesiniz ve çıkışı bulmak istiyorsunuz:

1. Labirentin girişinde duruyorsunuz.
2. İlk seçtiğiniz yoldan ilerliyorsunuz; yolun sonuna kadar gidiyorsunuz.
3. Eğer yol çıkmazsa, geri dönüp başka bir kapı veya koridor olup olmadığını kontrol ediyorsunuz.
4. Bu şekilde tüm yolları denerken, sonunda çıkışı bulmayı umuyorsunuz.

---

### Sonuç

Derinlik Öncelikli Arama (DFS), basit yapısı ve sistematik deneme yöntemi sayesinde birçok arama ve problem çözme durumunda etkili bir yöntemdir. Ancak, dikkatli kullanılmalı ve özellikle döngüsel yapılarda ziyaret edilen düğümlerin kaydının tutulması gibi önlemler alınmalıdır.

Bu rehber, DFS algoritmasının temel mantığını ve uygulama adımlarını anlamanıza yardımcı olacaktır. DFS, hem öğretici örneklerle hem de pratik uygulamalarla daha iyi kavranabilir. 

--- 

Umarım bu açıklayıcı rehber, DFS’yi öğrenmenizde yardımcı olur!


Aşağıda, Python programlama dilinde derinlik öncelikli arama (DFS) algoritmasını kullanan basit bir örnek yer alıyor. Bu örnek, bir grafikte başlangıç düğümünden hedef düğüme ulaşan bir yolu arar. Kodun ardından, her adımın ne yaptığını açıklayan kısa bir rehber bulacaksınız.

---

### Örnek Kod

```python
# Basit bir grafik tanımlıyoruz. 
# Her düğüm, kendisine bağlı komşu düğümlerin bir listesi ile temsil ediliyor.
graph = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': ['G'],
    'E': ['G'],
    'F': [],
    'G': []
}

def dfs(graph, start, goal, path=None, visited=None):
    """
    Derinlik öncelikli arama (DFS) algoritması kullanılarak,
    'start' düğümünden 'goal' düğümüne giden bir yolu bulur.
    
    Parametreler:
    - graph: Düğümlerin ve komşularının bulunduğu sözlük.
    - start: Aramaya başlanacak düğüm.
    - goal: Ulaşılmak istenen hedef düğüm.
    - path: Şu ana kadar izlenen yol (varsayılan olarak None, daha sonra [start] ile başlar).
    - visited: Ziyaret edilen düğümlerin kümesi (varsayılan olarak None, daha sonra boş küme ile başlar).
    
    Döndürür:
    - Hedefe giden yol (liste) bulunursa, o yolu döndürür.
    - Eğer yol bulunamazsa, None döner.
    """
    if path is None:
        path = [start]
    if visited is None:
        visited = set()

    # Ziyaret edilen düğümlere ekle
    visited.add(start)
    
    # Hedef düğüme ulaşıldıysa, yolu döndür
    if start == goal:
        return path
    
    # Komşu düğümleri sırayla ziyaret et
    for neighbor in graph.get(start, []):
        if neighbor not in visited:
            new_path = dfs(graph, neighbor, goal, path + [neighbor], visited)
            if new_path is not None:
                return new_path  # Hedefe giden yol bulunduysa hemen döndür
    
    # Eğer hiçbir yol bulunamadıysa, None döndür
    return None

# Başlangıç ve hedef düğümlerini belirleyelim
start_node = 'A'
goal_node = 'G'

# DFS algoritmasını çalıştır ve sonucu yazdır
result_path = dfs(graph, start_node, goal_node)
if result_path:
    print("Bulunan yol:", " --> ".join(result_path))
else:
    print("Hedefe giden bir yol bulunamadı.")
```

---

### Adım Adım Açıklama

1. **Grafik Tanımı:**
   - `graph` adında bir sözlük oluşturduk. Her anahtar (düğüm) ve değeri (o düğümden ulaşılabilecek diğer düğümler) grafiğin bağlantılarını temsil eder.
   - Örneğin, `'A'` düğümünden `'B'` ve `'C'` düğümlerine geçiş yapılabilir.

2. **DFS Fonksiyonunun Tanımlanması (`dfs`):**
   - Fonksiyon, `start` düğümünden başlayarak `goal` düğümüne ulaşmaya çalışır.
   - `path` parametresi, şu ana kadar izlenen yolu saklamak için kullanılır. İlk çağrıda `[start]` olarak başlatılır.
   - `visited` parametresi, ziyaret edilen düğümleri takip ederek, döngüye (sonsuz tekrara) girmeyi engeller.

3. **Algoritmanın İşleyişi:**
   - **Ziyaret İşlemi:** Başlangıç düğümü ziyaret edilenlere eklenir.
   - **Hedef Kontrolü:** Eğer `start` düğümü hedef düğüm ise, o ana kadar izlenen yol (`path`) döndürülür.
   - **Komşu Düğüm Ziyareti:** `start` düğümüne bağlı her komşu düğüm, daha önce ziyaret edilip edilmediğine bakılarak DFS algoritmasıyla ziyaret edilir. Her komşu düğüm için, yol güncellenmiş (`path + [neighbor]`) olarak çağrılır.
   - **Geri Dönüş (Backtracking):** Eğer bir yoldan hedefe ulaşılamazsa, o yoldaki fonksiyon çağrısı `None` döndürür ve algoritma diğer komşuları dener.

4. **Sonuçların Yazdırılması:**
   - DFS algoritması çalıştırıldıktan sonra, bulunan yol (varsa) ekrana yazdırılır. Bulunamazsa, uygun bir mesaj görüntülenir.

---

### Nasıl Çalışır?

Diyelim ki, `'A'` düğümünden başlayıp `'G'` düğümüne gitmek istiyoruz:
- DFS, `'A'` düğümünden başlayarak önce `'B'` düğümüne gider.
- `'B'` düğümünden sonra `'D'` düğümüne geçer, ardından `'D'` düğümünün komşusu olan `'G'` düğümüne ulaşır.
- `'G'` hedef düğüm olduğundan, arama başarılı olur ve bulunan yol (`['A', 'B', 'D', 'G']`) döndürülür.

Bu örnek, DFS algoritmasının basit mantığını ve Python ile nasıl uygulanabileceğini göstermektedir. DFS, özellikle ağaç yapıları ve labirent benzeri problemler için etkili bir arama yöntemidir.

Bu kod, **Derinlik Öncelikli Arama (DFS - Depth First Search)** algoritmasını kullanarak bir graf üzerinde belirli bir başlangıç düğümünden hedef düğüme giden yolu bulmayı amaçlar. Şimdi kodu adım adım açıklayalım:

---

### **1. Grafiği Tanımlama**
```python
graph = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': ['G'],
    'E': ['G'],
    'F': [],
    'G': []
}
```
- `graph`, bir sözlük (dictionary) olarak tanımlanmış ve her düğüm, kendisine bağlı komşu düğümlerin listesiyle temsil ediliyor.
  - Örneğin, `'A'` düğümü `'B'` ve `'C'` düğümlerine bağlıdır.
  - `'F'` ve `'G'` düğümleri ise hiçbir komşusu olmadığı için boş listelerle temsil edilmiştir.

---

### **2. DFS Fonksiyonunun Tanımı**
```python
def dfs(graph, start, goal, path=None, visited=None):
```
- Bu fonksiyon, DFS algoritmasını uygulamak için tasarlanmıştır.
- Parametreler:
  - `graph`: Grafın tamamını içeren sözlük.
  - `start`: Aramanın başlayacağı düğüm.
  - `goal`: Ulaşılmak istenen hedef düğüm.
  - `path`: Şu ana kadar izlenen yol (varsayılan olarak `None`, daha sonra `[start]` ile başlar).
  - `visited`: Ziyaret edilen düğümlerin kümesi (varsayılan olarak `None`, daha sonra boş bir küme ile başlar).

---

### **3. Başlangıç Değerlerini Ayarlama**
```python
if path is None:
    path = [start]
if visited is None:
    visited = set()
```
- Eğer `path` veya `visited` parametreleri verilmemişse, varsayılan değerler atanır:
  - `path`: Başlangıçta yalnızca `start` düğümünü içerir.
  - `visited`: Boş bir küme olarak başlatılır.

---

### **4. Düğümü Ziyaret Etme**
```python
visited.add(start)
```
- `start` düğümü ziyaret edildiği için `visited` kümesine eklenir.

---

### **5. Hedefe Ulaşıldığını Kontrol Etme**
```python
if start == goal:
    return path
```
- Eğer `start` düğümü, aranan `goal` düğümüne eşitse, şu ana kadar izlenen yol (`path`) döndürülür.
- Bu, DFS'nin temel çıkış koşuludur.

---

### **6. Komşu Düğümleri Keşfetme**
```python
for neighbor in graph.get(start, []):
    if neighbor not in visited:
        new_path = dfs(graph, neighbor, goal, path + [neighbor], visited)
        if new_path is not None:
            return new_path
```
- `graph.get(start, [])`: `start` düğümünün komşularını alır. Eğer `start` düğümü grafiğin içinde yoksa, boş bir liste döner.
- Her bir komşu (`neighbor`) için:
  - Eğer komşu daha önce ziyaret edilmediyse (`if neighbor not in visited`), o komşuya gitmek için tekrar `dfs` fonksiyonu çağrılır.
  - Yeni bir yol (`new_path`) oluşturmak için şu ana kadar izlenen yol (`path`) üzerine `neighbor` eklenir.
  - Eğer `new_path` değeri `None` değilse (yani hedefe ulaşıldıysa), bu yol hemen döndürülür.

---

### **7. Hedefe Giden Yol Bulunamadıysa**
```python
return None
```
- Eğer hiçbir komşuda hedef düğüm bulunamazsa, fonksiyon `None` döndürür. Bu, hedefe giden bir yol olmadığını gösterir.

---

### **8. DFS Fonksiyonunu Çalıştırma**
```python
start_node = 'A'
goal_node = 'G'
result_path = dfs(graph, start_node, goal_node)
```
- `start_node` olarak `'A'` seçilmiştir.
- `goal_node` olarak `'G'` seçilmiştir.
- `dfs` fonksiyonu çağrılır ve sonuç `result_path` değişkenine atanır.

---

### **9. Sonucu Yazdırma**
```python
if result_path:
    print("Bulunan yol:", " --> ".join(result_path))
else:
    print("Hedefe giden bir yol bulunamadı.")
```
- Eğer `result_path` değeri `None` değilse, bulunan yol ekrana yazdırılır.
  - `" --> ".join(result_path)` ile yol, ok işaretleriyle birleştirilerek okunabilir bir formatta gösterilir.
- Eğer `result_path` değeri `None` ise, hedefe giden bir yol bulunamadığı bildirilir.

---

### **Örnek Çalışma**
Verilen graf ve başlangıç/hedef düğümleri için DFS'nin nasıl çalıştığını adım adım görelim:

1. Başlangıç: `start = 'A'`, `goal = 'G'`, `path = ['A']`, `visited = {'A'}`
   - `'A'` düğümünün komşuları: `'B'` ve `'C'`

2. İlk komşu: `'B'`
   - `start = 'B'`, `path = ['A', 'B']`, `visited = {'A', 'B'}`
   - `'B'` düğümünün komşuları: `'D'` ve `'E'`

3. İlk komşu: `'D'`
   - `start = 'D'`, `path = ['A', 'B', 'D']`, `visited = {'A', 'B', 'D'}`
   - `'D'` düğümünün komşusu: `'G'`

4. Hedef düğüm: `'G'`
   - `start = 'G'`, `path = ['A', 'B', 'D', 'G']`
   - Hedef bulundu, yol döndürülür.

**Sonuç:**  
`"Bulunan yol: A --> B --> D --> G"`

---

### **Çıktı**
```plaintext
Bulunan yol: A --> B --> D --> G
```

Bu şekilde, DFS algoritması başarıyla `'A'` düğümünden `'G'` düğümüne giden yolu bulmuştur.
