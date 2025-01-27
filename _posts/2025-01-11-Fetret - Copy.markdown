---
layout: post
title: "Python 3.7 “Virtual Env”"
description: "Bir Python projesi geliştirirken, bağımlılıkların izole bir şekilde yönetilmesi önemlidir. Python'un venv modülü, bu işlevi yerine getiren ve standart kütüphaneye dahil olan, hafif ve kullanışlı bir araçtır."
image: /images/describing.jpg
date: 2025-01-11 05:04:34 +0300
categories: [Python, VirtualEnv, venv, Django]
tags: [Python, Virtual Environment, venv, Django]
lang: tr
author: isunion99
published: true
---


Bir Python projesi geliştirirken, bağımlılıkların izole bir şekilde yönetilmesi önemlidir. Python'un venv modülü, bu işlevi yerine getiren ve standart kütüphaneye dahil olan, hafif ve kullanışlı bir araçtır.

---

## **Virtual Environment Nedir?**

Bir **virtual environment** (sanal ortam), Python projelerinizi izole etmek için kullanılan bir araçtır. Sanal bir ortam:

- Kendi bağımsız Python yürütülebilir dosyasına ve kütüphanelerine sahiptir.
- Sistemde yüklü olan global bağımlılıklardan izole bir şekilde çalışır.
- Her projenizin kendine özgü kütüphane setlerini kullanmasını sağlar.

Bu yapı, aynı makinede birden fazla Python projesini, birbiriyle çakışmadan geliştirebilmenizi sağlar.

---

## **Python venv Modülü**

`venv` modülü, Python 3.3 ve üstü sürümlerle birlikte gelir. Python 3.4'ten itibaren ise pip ve setuptools, varsayılan olarak sanal ortamlara dahil edilir.

### Öne Çıkan Özellikler:
- Projeler için bağımsız bir ortam oluşturur.
- Kullanıcıların sistem Python bağımlılıklarından kopuk bir şekilde, kendi bağımsız bağımlılıklarını yönetmelerine olanak tanır.
- Aynı ortamda birden fazla Python sürümünü izole edebilir.

---

## **Python venv Kurulumu**

Sanal ortam oluşturmak için aşağıdaki adımları izleyebilirsiniz:

### 1. **Bir Sanal Ortam Oluşturmak**

Terminalde aşağıdaki komutu çalıştırarak bir sanal ortam oluşturabilirsiniz:

```bash
python3 -m venv <DIR>
```

Buradaki `<DIR>`, sanal ortamın oluşturulacağı klasörün adıdır.

---

### 2. **Sanal Ortamı Aktifleştirmek**

Oluşturulan sanal ortamı aktifleştirmek için platforma bağlı olarak aşağıdaki komutlardan birini kullanın:

- **Linux / MacOS:**
    ```bash
    source <DIR>/bin/activate
    ```

- **Windows:**
    ```bash
    <DIR>\Scripts\activate
    ```

Aktifleştirildiği sırada komut satırında bir belirteç görürsünüz (genellikle ortam adı parantez içinde olur). Örneğin:

```bash
(venv) user@machine:~$
```

Bu belirteç, sanal ortamın aktif olduğunu gösterir.

---

### 3. **Sanal Ortamdan Çıkmak**

Sanal ortamdan çıkmak için aşağıdaki komutu çalıştırabilirsiniz:

```bash
deactivate
```

---

### Komutların Detaylı Açıklaması

Sanal ortam oluşturmak için kullanılabilecek komutlar ve opsiyonlar:

```bash
usage: venv [-h] [--system-site-packages] [--symlinks | --copies]
            [--clear] [--upgrade] [--without-pip] [--prompt PROMPT]
            ENV_DIR [ENV_DIR ...]
```

#### Sık Kullanılan Argümanlar:
- **`--system-site-packages`**  
  Sistemin global `site-packages` dizinine erişimi etkinleştirir.
  
- **`--symlinks` | `--copies`**  
  Dosyaları kopyalamak yerine sembolik bağlantılar (symlinks) kullanır.

- **`--without-pip`**  
  Ortam kurulumunda `pip`'i kurmaz (pip varsayılan olarak kurulur).

- **`--prompt`**  
  Sanal ortam için özel bir komut satırı istemi belirler.

Daha fazla detay için: [Python venv Belgeleri](https://docs.python.org/3/library/venv.html)

---

## **Sanal Ortamların Mantığı**

Bir sanal ortam, Python'un yorumlayıcısı, kütüphaneleri ve script dosyalarını içeren bir dizin ağacıdır. Sanal ortam aktif olduğunda:

- Kütüphaneler ve bağımlılıklar bu ortamın içine yüklenir.
- Küresel (global) Python yüklemeleri etkilenmez.

Bu, özellikle farklı projelerde aynı kütüphanenin farklı sürümlerine ihtiyaç duyarsanız faydalıdır.

---

## **Pip ile Kütüphane Yüklemek**

Bir sanal ortam aktifken `pip install` komutunu kullandığınızda, yüklenen bağımlılıklar yalnızca o ortam için geçerli olur. Örnek:

```bash
pip install django
```

Yüklü bağımlılıkları listelemek için:

```bash
pip list
```

---

## **Django: İlk Projenizi Oluşturun**

Sanal ortamlar, Django projelerini yönetmek için çok kullanışlıdır. Aşağıdaki adımları takip ederek birkaç dakika içinde bir Django uygulaması başlatabilirsiniz:

1. Sanal ortam oluşturun ve aktifleştirin:
    ```bash
    python3 -m venv myenv
    source myenv/bin/activate
    ```
2. Django'yu yükleyin:
    ```bash
    pip install django
    ```
3. Bir Django projesi başlatın:
    ```bash
    django-admin startproject myproject
    ```
4. Proje dizinine gidin ve geliştirme sunucusunu başlatın:
    ```bash
    cd myproject
    python manage.py runserver
    ```

Tarayıcıda `http://127.0.0.1:8000/` adresine gidin; Django proje doğrulama sayfasını göreceksiniz!

---

## **Sonuç**

Python sanal ortamları, projelerinizin bağımlılıklarını düzenli bir şekilde yönetmek için olmazsa olmaz bir araçtır. `venv` modülü, standart kütüphaneye dahil olduğu için ek bir kurulum gerektirmez ve hafif bir çözüm sunar.

Daha fazla bilgi için: [Python venv belgelerine göz atın](https://docs.python.org/3/library/venv.html).
```

---
