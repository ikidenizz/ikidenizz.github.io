function updateTime() {
    var now = new Date();

    var tarih = now.toLocaleDateString('tr-TR', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
        weekday: 'long'
    });

    var saat = now.toLocaleTimeString('tr-TR', {
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit'
    });

    document.getElementById('tarih').textContent = tarih;
    document.getElementById('saat').textContent = saat;
}

// Sayfa yüklendiğinde ve her saniyede bir saati güncelle
updateTime();
setInterval(updateTime, 1000);
