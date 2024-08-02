php-switch() {
    local version="${1#php}"
    if [[ -z "$version" ]]; then
        echo "使用法: php-switch <バージョン>"
        echo "例: php-switch 8.2"
        return 1
    fi
    
    # 現在のPHPをアンリンク
    brew unlink php@7.0 php@7.2 php@7.3 php@7.4 php@8.0 php@8.1 php@8.2 2>/dev/null

    # 指定されたバージョンをリンク
    if brew link --overwrite --force "php@$version"; then
        echo "PHP $version に切り替えました。"
        php -v
    else
        echo "エラー: PHP $version のリンクに失敗しました。"
        echo "php@$version がインストールされているか確認してください。"
        echo "インストールするには: brew install php@$version"
    fi
}

alias php7.0='php-switch 7.0'
alias php7.2='php-switch 7.2'
alias php7.3='php-switch 7.3'
alias php7.4='php-switch 7.4'
alias php8.0='php-switch 8.0'
alias php8.1='php-switch 8.1'
alias php8.2='php-switch 8.2'
