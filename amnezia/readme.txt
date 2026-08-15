# Узнаем версию ядра (пример: 6.18.38-1-MANJARO)
uname -r

# Устанавливаем заголовки для вашего ядра 6.18 и систему сборки DKMS
sudo pacman -Sy linux618-headers dkms

# Скачиваем и собираем сам VPN AmneziaWG из AUR
yay -S amneziawg-dkms amneziawg-tools

# Перезагружаем компьютер (это обязательно, чтобы ядро увидело новый драйвер)
reboot

# Проверка после перезагрузки
dkms status

# Создаем конфиг (комментируем DNS)
sudo nano /etc/amnezia/amneziawg/awg0.conf

# Включить VPN
sudo awg-quick up awg0

# Проверить, идет ли трафик и с какой скоростью
sudo awg show

# Выключить VPN (обычный интернет вернется сразу же)
sudo awg-quick down awg0

ullubiy ALL=(root) NOPASSWD: /home/ullubiy/.config/vpn/switcher.sh
