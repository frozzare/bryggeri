install() {
    printf "\e[33m[~] Downloading script...\e[0m\n"

    curl -L#o /var/tmp/bryggeri https://raw.githubusercontent.com/johnie/bryggeri/master/bin/bryggeri

    printf "\n\e[33m[~] Setting permissions...\e[0m\n"

    chmod -v +x /var/tmp/bryggeri

    echo

    printf "\e[33m[~] Moving to \$PATH...\e[0m\n"

    sudo mv -fv /var/tmp/bryggeri /usr/local/bin/bryggeri

    echo

    version=($(bryggeri -V))
    printf "\e[32m[✔] Successfully installed Bryggeri v${version[3]}\e[32m!\n"
}

install
