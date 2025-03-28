#!/bin/bash

intro() {
    clear
    echo ""
    echo ""
    echo ""
    echo ""
    echo ""
    echo "                         GeoLocator by L£AF"
    sleep 3
    menu
}

menu() {
    clear
    echo ""
    echo ""
    echo "       ________             .____                         __"
    echo "      /  _____/  ____  ____ |    |    ____   ____ _____ _/  |_/  ___________"
    echo "     /   \  ____/ __ \/  _ \|    |   /  _ \_/ ___\\__  \\   __\/  _ \_  __ \\"
    echo "     \    \_\  \  ___(  <> )|    |__(  <> )  \___ / __ \|  | (  <> )  | \/"
    echo "      \______  /\___  <>____/|_______ \____/ \___  <>____  /__|  \____/|__|"
    echo "             \/     \/              \/          \/     \/"
    echo ""
    echo "========================================================================================================================"
    echo ""
    echo "    E) Exit"
    echo ""
    echo "    1) My Ip"
    echo "    2) Ip Geo Lookup"
    echo "    3) Back to main Menu"
    echo ""
    echo "========================================================================================================================"
    echo ""
    echo ""
    echo "┌─╼[ £ttor_§ ]-[ Ip Lookup ]"
    echo "$"
    read -p "└────╼ ❯❯❯  " choice
    case "$choice" in
        [Ee])
            exit 0
            ;;
        1)
            myip
            ;;
        2)
            ip_lookup
            ;;
        3)
            menu
            ;;
        *)
            menu
            ;;
    esac
}

myip() {
    clear
    curl "https://ipinfo.io/json" -o geolocation.json
    clear
    echo ""
    echo ""
    echo "======================================================================================================================"
    echo "    IP Geolocation for:"
    echo ""
    cat geolocation.json
    rm geolocation.json
    echo ""
    echo ""
    echo "======================================================================================================================"
    echo ""
    read -p "Premi invio per continuare..."
    clear
    menu
}

ip_lookup() {
    clear
    echo ""
    echo ""
    echo ""
    echo "         __________       __                 ._____________"
    echo "        \_   _____/ _____/  |  ___________  |   \______   \\"
    echo "         |    __)_ /    \   __\/ __ \_  __ \ |   ||     ___/"
    echo "         |        \   |  \  | \  ___/|  | \/ |   ||    |"
    echo "        /_______  /___|  /__|  \___  >__|    |___||____|"
    echo "                \/     \/          \/"
    echo "======================================================================================================================"
    echo ""
    echo " - Inserisci un indirizzo IP da cercare:"
    echo ""
    echo ""
    read -p ">> " IP
    geo "$IP"
}

geo() {
    clear
    curl "https://ipinfo.io/$1/json" -o geolocation.json
    clear
    echo ""
    echo ""
    echo "======================================================================================================================"
    echo "    IP Geolocation per '$1':"
    echo ""
    cat geolocation.json
    rm geolocation.json
    echo ""
    echo ""
    echo "======================================================================================================================"
    echo ""
    read -p "Premi invio per continuare..."
    clear
    menu
}

# Avvia lo script
intro
