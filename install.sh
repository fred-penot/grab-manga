login_ssh="docker"

cd /home/${login_ssh}
git clone -b 0.1a https://github.com/fred-penot/GrabManga.git
chmod -Rf 777 /home/${login_ssh}/GrabManga
cd /home/${login_ssh}/GrabManga
sh install.sh
chmod -Rf 777 /home/${login_ssh}/GrabManga
chown -R ${login_ssh}:${login_ssh} /home/${login_ssh}/GrabManga

mkdir /root/.ionic
echo '{' > /root/.ionic/ionic.config
echo '  "ionicServeAddress": "172.17.0.2"' >> /root/.ionic/ionic.config
echo '}' >> /root/.ionic/ionic.config
chmod -Rf 755 /root/.ionic
