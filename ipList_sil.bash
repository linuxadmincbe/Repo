#!/bin/bash

# Dosyaların adlarını değişkenlere atayalım
inv_file="inv.yml"
invs_file="invs.yml"

# invs.yml dosyasındaki IP'leri tek tek okuyup inv.yml dosyasında arayalım ve bulduklarımızı silelim
while IFS= read -r ip; do
    # inv.yml dosyasından bulunan IP'leri silmek için sed komutunu kullanabiliriz
    sed -i "/$ip/d" "$inv_file"
done < "$invs_file"

echo "İşlem tamamlandı."
