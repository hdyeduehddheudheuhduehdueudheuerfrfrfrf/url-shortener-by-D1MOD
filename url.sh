banner() {
clear
printf "\e[0m\n"
printf "\e[0m\e[1;93m  _    _ _____  _          _____ _    _  ____  _____ _______ ______ _   _ ______ _____   \e[0m\n"
printf "\e[0m\e[1;93m | |  | |  __ \| |        / ____| |  | |/ __ \|  __ \__   __|  ____| \ | |  ____|  __ \  \e[0m\n"
printf "\e[0m\e[1;93m | |  | | |__) | |  _____| (___ | |__| | |  | | |__) | | |  | |__  |  \| | |__  | |__) | \e[0m\n"
printf "\e[0m\e[1;93m | |  | |  _  /| | |______\___ \|  __  | |  | |  _  /  | |  |  __| | . ` |  __| |  _  /  \e[0m\n"
printf "\e[0m\e[1;93m | |__| | | \ \| |____    ____) | |  | | |__| | | \ \  | |  | |____| |\  | |____| | \ \  \e[0m\n"
printf "\e[0m\e[1;93m \____/|_|  \_\______|  |_____/|_|  |_|\____/|_|  \_\ |_|  |______|_| \_|______|_|  \_\  \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;93m        CODED AND CREATED BY D1MOD1877 \e[0m\e[1;91m( \e[0m\e[1;92mhttps://discord.gg/sRWZxq9v \e[0m\e[1;91m)\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;93m    Website :\e[0m\e[1;96m https://www.d1modev.ml/\e[0m\e[1;97m| \e[0m\e[1;93mInstagram :\e[0m\e[1;96m @d1mod1877\e[0m\n"
}
menu() {
printf "\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Short Url\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m More From Us\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m03\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
shorturl
elif [[ $option == 2 || $option == 02 ]]; then
sleep 1
xdg-open https://github.com/mrxD1MOD/
sleep 2
banner
menu
elif [[ $option == 3 || $option == 03 ]]; then
sleep 1
printf "\e[0m\n"
printf "\e[0m\n"
exit 1
else
printf " \n\e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
shorturl() {
printf "\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input The Url : \e[0m\e[1;96m\en' inpurl
printf "\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;93m Shorting Url...\e[0m\n"
shorturl=$(curl -s http://tinyurl.com/api-create.php?url=$inpurl)
sleep 2
printf "\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;93m Done !!\e[0m\n"
printf "\e[0m\n"
printf ' \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Shortned Url :\e[0m\e[1;93m %s \n' $shorturl
printf "\e[0m\n"
sleep 2
printf "\e[0m\n"
printf "\e[0m\n"
exit 1
}
banner
menu
