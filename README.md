# php_switcher
Switch PHP Version with Alias Command

## for Mac
## install php with homebrew
    brew tap shivammathur/php

    brew install shivammathur/php/php@7.0
    brew install shivammathur/php/php@7.1
    brew install shivammathur/php/php@7.2
    brew install shivammathur/php/php@7.3
    brew install shivammathur/php/php@7.4
    brew install shivammathur/php/php@8.0
    brew install shivammathur/php/php@8.1
    brew install shivammathur/php/php@8.2

## php（使用したいバージョン）で切り替え可能
    php8.1

## 追記　クソ便利なのが既にあった
    curl -L https://raw.githubusercontent.com/rhukster/sphp.sh/main/sphp.sh > /opt/homebrew/bin/sphp
    chmod +x /opt/homebrew/bin/sphp

    sphp 8.1
