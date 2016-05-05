





# Developpement web

<!-- gem install jekyll -->
MacOS 10.10 http://ole.michelsen.dk/blog/setup-local-web-server-apache-php-osx-yosemite.html
MacOS 10.11 http://coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-osx-10-11-el-capitan/

sudo apachectl start
sudo apachectl restart
httpd -v

Setup local web server with Apache and PHP on OS X El capitan

sudo nano /etc/apache2/users/username.conf


# Des logiciels libres dans le terminal



# Git

> git config --global user.name "KevCaz"
> git config --global user.email kevin.cazelles@gmail.com

> git reset



# Des logiciels libres dans le terminal

## ImageMagick

<!-- identify -verbose rose.jpg -->
<!-- convert -->

<!-- mogrify -->

## FFmpeg

ffmpeg -i input_file.mp4 -acodec copy -vcodec copy -f mov output.mov


for file in *.Rdata; do mv "$file" "${file/.Rdata/_1.Rdata}"; done


<!-- Dans le cas de multiples extensions :

nsoualem@gold: -> FILE=archive.tar.gz
nsoualem@gold: -> echo ${FILE%%.*}
archive
nsoualem@gold: -> echo ${FILE%.*}
archive.tar
nsoualem@gold: -> echo ${FILE#*.}
tar.gz
nsoualem@gold: -> echo ${FILE##*.}
gz -->


https://www.gnu.org/software/make/manual/html_node/File-Name-Functions.html




## Les Ports que j’utilise en quelques notes

Dans ce qui suit, je présente certains logiciels libres que j’ai installé via MacPorts et que j’utilise assez fréquemment.  Bien sur, ils peuvent être installés différemment mais n’oublions pas que MacPorts sert justement à les installer !
Je ne souhaite pas détailler ici leur fonctionnement, j’en suis souvent incapable, je me contente donc de donner quelques indications et applications.
On peut-être amené à installer plusieurs versions d’un même logiciel libre, dans ce cas, il est possible régler le nom de l’application par défaut. Par exemple, en entrant :
	sudo port select --set python python27
la version 2.7 de python sera la version par défaut quand on entre python dans la console.


# R :
- Si R est installé, on peut directement travailler en tapant R (ou r) dans la console.
- Quitter : q() pour quitter R ! Si la ligne est vide on peut utiliser ctrl+D
- r —version (double tiret du 6 = « dash »), nous donne la version de R installée.
- Pour lancer un script : Rscript adr/script.R
- Site d’information pour R : http://cran.r-project.org/
- Il existe également des façon simple d’exécuter des scripts (succession de commandes) R :
	- ouvrir R, exécuter script.r et ferme R : Rscript path/script.r
	- exécuter script.r sans ouvrir R :R CMD BATCH path/script.r

#gdal, proj4, geos

# Qgis :


# ImageMagick :
Créer, éditer, convertir des images dans de nombreux formats et cela en quelques lignes de commandes, c’est ce que propose ImageMagick.
- Rq : au 04/01/2015, j’ai installé la version 6.9
——————
Quelques exemples d’utilisation une fois installée :
- Convertir une image d’un format à un autre : convert ; ex : convert image1.jpg image.png #(jpg=>png)
- Convertir un ensemble d’image : mogrify ; ex : mogrify -format png *.tiff
- Redéfinir la taille d’une image : resize 50%
- Convertir une série d’image en film : convert -delay 10 *.jpg moovie.mp4
- Créer une image animée : convert  -delay 85  -loop 0  Rplot*.pdf   animation.gif

# FFmpeg :
C’est dans le cadre du projet FFmpeg projet qu’a été développé la bibliothèque « Libavcodec » qui est une librairie de codec (COdage-DECodage d’un signal numérique) pour les signaux video et audio qui sont utilisés, entre autres, par le célèbre VLC.
——————
# Manipulation de fichier audio :
Pour convertir en usant ffmeg et mplayer dans un dossier on peut écrire :
wma est le format d'origine mp3 format d'arriver
———
-wma est le format d'origine mp3 format d'arriver
for i in *.wma; do ffmpeg -i "$i" -b 320kb "${i%wma}mp3"; done
———
# flac to mp3
for i in *.flac; do ffmpeg -i "$i"  -b 320kb "${i%flac}mp3"; done
———
# flac en alac
for i in *.flac; do ffmpeg -i "$i" -acodec alac  "`basename "$i" .flac`.m4a"; done;
——————
# Manipulation de fichiers vidéo:
———
- convertir un fichier audio
ffmpeg -i input.mp3 output.wma
———
- Il faut se mettre dans un répertoire
ffmpeg -r 5 -i ~/Desktop/DengueIncidenceKHM_Maps/map%03d.jpeg video.mov
 -r 5 = 5 image par seconde
-i ~/Desktop/DengueIncidenceKHM_Maps/map%03d.jpeg video.mov = input file avec ne numérotation avec 3 chiffres (%03d)
———
ffmpeg -i video.mp4 img%d.jpg
ffmpeg -i video.mp4 -r 15 -ss 00:00:10 -t 00:00:20 img%d.jpg
———
ffprobe video.avi
ex : ffprobe ~/Movies/Filmavoir/OneManBand.mkv
———
- Pour régler le débit binaire (bitrate) du fichier vidéo de sortie à 64 kbit/s:
ffmpeg -i input.avi -b:v 64k -bufsize 64k output.avi

# Lynx :
Un navigateur dans la console c’est historiquement important ! Aujourd’hui cela n’a plus vraiment de sens mais il m’est arrivé que j’ai pu me connecter à internet via lynx et non via mes navigateurs classiques ! quoi que désuet !
- Pour entrer dans le navigateur : lynx
- Pour entrer une adresse : g puis entrer l’adresse ex: www.kevincazelles.fr

# Github :
Github est un outil très puissant de plus en plus développé par les développeurs pour travailler à plusieurs. est Github en fait il faudrait détaillé git et et qui hub mais il suffit de regarder sur le site de Github (et la page wikipedia).
- Installer Github :
sudo port install git +svn +doc +bash_completion +gitweb
sudo port install hub
- Utiliser Github :


# Php5 et Apache
Regarder ici
je n’ai personnelement pas installer mysql5 j’utilise poster
sudo port install php56 +apache2 +pear
LoadModule php5_module /usr/libexec/apache2/libphp5.so

Mais avant de vous lancer dans tout ce genre de chose, je vous réconcilie vivement de regarder le lien suivant :
http://openclassrooms.com/courses/votre-serveur-local


# PostgreSQL :
- PostgreSQL est un SQL (Structured Query Langage), c’est à dire un langage proche du langage parlé pour faire des requêtes. Il est utilisé pour créer et gérer des bases de données.
- Postgresql peut être considéré comme un clone de Mysql libre, l’utilisation est très similaire. Pour un peu d’histoire, regardez donc la page wikipedia. Il est important de souligner que depuis le rachat de Sun Microsystems par Oracle, début 2010, un doute pèse sur l’avenir de MySQL (Oracle ayant d’autres projets relatifs aux bases de données, cf). Ainsi, PostgreSQL est une alternative libre et puissante pour SQL.
- Je présente ici comment installer PostgreSQL 9.4 sous Yosemite. C’est un peu plus délicat que les autres ports.
Les instructions sous bineuse disponibles en lignes (documentation de PostgreSQL).
- Rq : c’est la même démarche pour la version 9.3 sous MacOS 10.9.
——————
# Installer le Port :
sudo port install postgresql94 postgresql94-server
- Mettre la version 9.4 par défaut (pour utiliser psql au lieu de psql94) :
sudo port select --set postgresql postgresql94
- La location des bases de données est ici : /opt/local/var/db/
——————
# Créer le dossier pour les bases de données:
- Créer un dossier
sudo mkdir -p /opt/local/var/db/postgresql94/defautdb
- Changement des permissions du fichier => postgres doit avoir les permissions
sudo chown postgres:postgres /opt/local/var/db/postgresql94/defautdb
- On prend l’identité de postgres pour activer le tout :
sudo su postgres -c '/opt/local/lib/postgresql94/bin/initdb -D /opt/local/var/db/postgresql94/defautdb'
- On a alors une succession de lignes avec en bout des « ok » si tout va bien ! A la fin, on peut lire :
Success. You can now start the database server using:

    /opt/local/lib/postgresql94/bin/postgres -D /opt/local/var/db/postgresql94/defautdb
or
    /opt/local/lib/postgresql94/bin/pg_ctl -D /opt/local/var/db/postgresql94/defautdb -l logfile start

# Démarrer le serveur:
- On charge alors le server
sudo port load postgresql94-server  (au pire on nous signale que c’était en cours).
- NB : pour «éteindre» le port et donc le serveur :  sudo port unload postgresql93-server  
- Après j’ai du redémarrer l’ordinateur. Ensuite pour voir si ça marche, la commande suivante affiche la liste des bases de données, par défaut :
/opt/local/bin/psql94 --list
- Si on a un message du type psql94: FATAL:  role "kcazelles" does not exist Il faut créer un super utilisateur pour kcazelles :
createuser --superuser kcazelles -U postgres -P
- Il faut alors entrer un mol de passe
# Créer une base de donnée:
- Créer un cluster (de base de données)
initdb nom_cluser ; ex : initdb kevdb
## Créer une base de donnée
createdb nom_db ; ex : createdb atelier
#Pour se connecter :
psql -d name_db -U nameused -h localhost
# Exemple d’utilisation:
psql -d atelier -U kcazelles -h localhost
# Quelques raccourcis pour débuter (http://qcbs.ca/wiki/bdlibre)
- Accès à une liste de commande : ctrl + I  
- Accès à une liste exhaustive de commandes  : \h
- Voir l’ensemble d’une table d’un cluster : \d+
- Voir les différents utilisateurs : \du
- Aide sur une commande : \? + NOM_COMMANDE  
- Quitter : \q
- NB : toujours finir une ligne de commande par un « ; » sinon la commande n’est pas effectuée.

# Python :
- De très nombreuses versions sont disponibles via Macports et de nombreux ports utilisent python. Le projet python (nommée aisin en l’hommage des Monthy Python) mené par Guido van Rossum (actuellement chez DropBox après un tour chez Google) demanderais des grands développements dont je suis incapable. Pour plus d’idée, regarder la page wikipedia consacrée et un tutoriel sur OpenClassroom.
- Rq : la dernière version que j’utilise est la 3.4.2 du 12/11/2014

- Si Python est installé, pour l’ouvrir, il suffi de taper python ; cela vous ouvrira la version associé à ce raccourci sinon ajouter les 2 chiffres de la version ex : python 3.4 => python34)
- Quitter : quit()  ou ctrl+D
- Faîtes un 1+1 quand même pour voir que tout marche bien!
- Connaître la version associé à la commande python  python —version

# Julia :
- Julia est un logiciel de programmation qui prend son envol ! Il propose des performances surprenantes et une syntaxe facile d’accès.
- Une fois installé entrez julia et ensuite regarder l’aide en ligne l’adresse vous est donnée en entrant : help()
- Quitter : quit()  ou ctrl+D


# Pandoc :
Pandoc est un convertisseur universel de document.  Consulter le site internet et la page github.
Il est possible de l’installer via Macport mais lorsque j’ai essayé début janvier 2015 je n’y suis pas arrivé.
Une fois que vous l’avez installé :  pandoc —version
pandoc file.tex -o file2.tex --csl=file.css  —bibliography=bibli.bib —template file.tex

% Pandoc : pandoc -t latex -o ~/Desktop/cool.pdf  ~/Documents/PHD/ProductEcrite/Articles/ArticlGTIB0115/ArticleGTIBf.tex --latex-engine=pdflatex --bibliography=/Users/kcazelles/Documents/PHD/ProductEcrite/Articles/ArticlGTIB0115/biblio.bib --csl= /Users/kcazelles/Desktop/ecology-letters.csl --template /Users/kcazelles/Documents/PHD/ProductEcrite/Articles/ArticlGTIB0115/mytemplate.latex



#Valgrind

http://valgrind.org

au 06/03/2015 => pas encore pour Yosemite ; il fait utiliser la version de développement valgrind-devel

#NB :
1 - Peuvent aussi être installés ainsi : Inscape, Gimp, Perl, Ruby les compilateurs GCC et Clang,  valgrind (Jusqu’à la version 10.9)…  Si Perl est installé, pour commencer : perldoc perlintro
2 - Si vous devez tout réinstaller, après avoir réinstallé Macports, une seul commande suffit, vous pouvez la garder dans un fichier texte dans mon cas, j’ai découpé en 4 lignes :
sudo port install ffmpeg  imagemagick vlc transmission gimp inkscape lynk
sudo port install julia R qgis python34 postgresql94 git hub filezilla
sudo port install  gcc49 valgrind-devel
sudo port install texlive texlive-latex-extra texlive-publishers





### V - Quelques autres utilisations que j’apprécie !  

# Le but de cette section est de donner quelques autres utilisations de « Terminal ».

## Les autres shell
- Shell : sh
- KornShell : ksh
- C Shell : csh

# Editeur de Texte pico ou nano
- Les ouvrir : nano ou pico (nano est un clone gratuit de pico)
- En les utilisant les actions sont décrites en bas. En bref ctrl+o puis enter pour sauver et ctrl+x pour quitter
- Pour ouvrir un fichier avec l’éditeur, il suffit d’entrer : nano file1
- Ex : Modifier son message d’accueil : nano /etc/motd
- Pour les raccourcis : lien internet

## Sage
# Sage
——————
- Site officiel : http://www.sagemath.org/
- Wiki : http://wiki.sagemath.org/
——————
- Tester que suite à l’installation tout va bien sage —testall
- load_attach_path('/Users/kcazelles/Documents/Sage_workspace/')
- doc test ex : ./sage -t -valgrind devel/sage/sage/groups/perm_gps/
- export SAGE_BROWSER="firefox"
- ctrl + D pour quitter (ou quit())
- commande + ? => info sur la commande
- Si Macports  est installé la mise à jour va poser un petit souci que l’on résoudre en utilisant  (si présent, le dossier sw dois aussi être délogé le temps de l’upgrade)
cd /
sudo mv /opt/local /opt/local_gone
sage upgrade
sudo mv /opt/local_gone /opt/local
——————
- %time devant une commande retournera le temps d’exécution
- %hist donne l’historique des commandes
- export EDITOR=/usr/bin/nano
- %rep pour répéter le résultat
- ctrl+P
——————
sage -t /Applications/sage/src/sage/doctest/test.py
sage -t /Applications/sage/src/sage/schemes/plane_curves/curve.py


## Compiler les fichiers Latex :
# Infos : http://latex-project.org/
ex : mon fichier est « ms.tex » 
# compiler simplement
latex ms.tex
# compiler + pdf
pdflatex ms.tex
# compiler biblio
bibtex ms
# NB : J’ai du utilisé :  pdflatex -shell-escape ArticleGTIBf.tex
pour être capable de compiler sans message d’erreur pour des figures eps.



## Compilation C
- En utilisant Macports, nous installons des outils développeurs et entre autres des compilateurs C, Fortran.
- Vous pouvez installer d’autres versions des compilateurs si besoin via MacPorts. Si c’est le cas, vous pouvez  regarder l’ensemble des compilateurs installés. Par exemple, avec GCC : port select --list gcc ; vous pouvez ensuite régler celui par défaut ; ex : sudo port select --set gcc mp-gcc47
- Sous MacOS 10.8 j’utilisais sans problème le compilateur GCC (page wikipedia)
- Sous Maverick, la commande gcc utilisait en fait clang, j’ai alors installé gcc 4.9 manuellement, notons que MacPorts le fait très bien (ce que j’ignorais alors).
- Depuis que je suis sous Yosemite (MacOS10.10), il semble que tout soit Ok :
	- la commande gcc --version me donne :
gcc: warning: couldn’t understand kern.osversion ‘14.0.0
gcc (GCC) 4.9.0 20140309 (experimental)
Copyright (C) 2014 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
	- la commande clang --version me donne :
Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
Target: x86_64-apple-darwin14.0.0
Thread model: posix

- Compiler avec OpenMP (parallélisation), ex : gcc -fopenmp function1.c function2.c -o nexec
./nexec

- Compiler pour appeler sous R : il faut faire une bibliothèque partagé, le fichier se terminera alors par « .dylib » ou « .so » ou « .dll »
ex :
R CMD SHLIB function1.c function2.c -0 mylib.so (ou mylib.dll)
pour utiliser OpenMP :
gcc --shared -fopenmp main.c Matrix.c usefulction.c modelevol.c -o evol.so





#### Annexe I - Quelques autres utilisations que j’apprécie !  
## Les raccourcis cmd+
La plupart des raccourcis bien pratiques s’articulent autour de la touche « cmd » (il y a en deux, une de chaque côté de la barre d’espace). Ces raccourcis sont pour la plupart relatifs à une application, ils sont un raccourcis pour une commande de l’application. Dans la barre de menu (en haut de l’écran), la plupart des raccourcis sont indiqués. Mais la pratique d’un raccourci invitent les développeurs à choisir de manière cohérente leur raccourcis, j’imagine ! (D’ailleurs, on est un peu pommé quand certain raccourci sont particulier !).

# Dans la pratique, pour une majorité d’application (office, textedit, application d’Apple, explorateur internet courants, quand l’action est pertinente (mettre un lien hypertexte dans i-tunes a peu de sens, encore que…)
- Copier : cmd + C
- Copier : cmd + V
- Tout sélectionner : cmd + A
- Imprimer : cmd + P
- Enregistrer : cmd + S
- Quitter : cmd + Q
- Annuler : cmd + Z
- Ajouter un lien hypertexte : cmd+K
- Nouvelle fenêtre : cmd + N
- Nouvel onglet : cmd + T
- Obtenir des information : cmd + I
- Dupliquer : cmd + D
- Mettre en gras : cmd + B
- Mettre en italique : cmd + I
- Souligner : cmd +U

Dans le Finder :
- Éteindre: ctrl+opt+cmd+eject
- Ejecter un disque : ctrl + E
- Mettre dans la corbeille : ctrl + delete
- Vider la corbeille : ctrl+shift+delete




#### Annexe II : Futurs développements

- D’autres commandes : w, who, whoiam, signal, vm_stat, vmap,  id, less, tail, more,  lpr, lpq, lpstat, sort,  magicps, set, wc, whatis, apropos, traceroute, magic, uptime
- Script bash
- Connexion serveur en FTP et VPN



———————
———————
———————



## Script bash

Executer un script bash
1)   bash script.sh
ou :
2)  chmod +x script.sh ; ./script.sh


## Connexion serveur en FTP

1- Taper ftp
2- open + IP (ou nom de domaine)
3 - entrer le nom d’user
4-

## Connexion serveur en VPN (SSH)

ssh cazk0001@127.0.0.1 -p 2222
//ssh cazk0001@eec1.uqar.ca
##Uploader un fichier
scp -P 2222  ~/Desktop/cou.sh cazk0001@127.0.0.1:
##Downloader un dossier
scp -P 2222  -R cazk0001@127.0.0.1:bioconnectot ~/Desktop

ssh cazk0001@132.215.29.16 -p 2222

Non du serveur linux :
uname -a

- Qui est connecté ? : who ; w
- pour sortir : logout (sinon on va avoir différentes truc de connexion)

## faire des boucles simples
## Boucle pour renommer fichier

ex : boucle
for num in $(seq -f "%05g" 25 -3 10 ) ; do echo -n "${num} " ; done ; echo
for num in $(seq 0 2 40 ) ; do echo -n "${num} " ; done ; echo
for num in $(seq -f "%04g" 100 1 199 ) ; do echo -n "${num} " ; done ; echo
for file in *.txt
do
   mv $file `basename $file .err`.gif
done

echo : -n en ligne "%02d\n" $i


===>
for i in $(seq 0 99);do num1=$(printf "%04d\n" $i) num2=$(printf "%04d\n" $(($i+300))); mv coocurence${num1}.txt coocurence${num2}.txt ;done

for i in $(seq 3001 3300);do num1=$(printf "%04d\n" $i) num2=$(printf "%04d\n" $(($i-2701))); mv web${num1}.txt web${num2}.txt ;done

## forcer tous les liens à s’ouvrir dans safari a s’ouvrir dans un nouvel onglet et non une nouvelle fenêtre
defaults write com.apple.Safari TargetedClicksCreateTabs -bool TRUE (on peut remplacer par 1 au lieu de -bool TRUE)
defaults write com.apple.mail PreferPlainText -bool TRUE


### Bytewise operator !
## bytewise exclusif operator
C, python, sage , R
Bitwise Logical Operations
R -> bitwNot(a) bitwAnd(a, b)
Bitwise And ¬> both are 1
Bitwise or-> one is 1


## VLC h et j pour retarder les subtitles



hdiutil convert /Users/kcazelles/Downloads/ubuntu-14.04.2-desktop-amd64.iso  -format UDRW -o ~/Desktop/iso.img

## Les Ports que j’utilise en quelques notes

Dans ce qui suit, je présente certains logiciels libres que j’ai installé via MacPorts et que j’utilise assez fréquemment.  Bien sur, ils peuvent être installés différemment mais n’oublions pas que MacPorts sert justement à les installer !
Je ne souhaite pas détailler ici leur fonctionnement, j’en suis souvent incapable, je me contente donc de donner quelques indications et applications.
On peut-être amené à installer plusieurs versions d’un même logiciel libre, dans ce cas, il est possible régler le nom de l’application par défaut. Par exemple, en entrant :
	sudo port select --set python python27
la version 2.7 de python sera la version par défaut quand on entre python dans la console.


# R :
- Si R est installé, on peut directement travailler en tapant R (ou r) dans la console.
- Quitter : q() pour quitter R ! Si la ligne est vide on peut utiliser ctrl+D
- r —version (double tiret du 6 = « dash »), nous donne la version de R installée.
- Pour lancer un script : Rscript adr/script.R
- Site d’information pour R : http://cran.r-project.org/
- Il existe également des façon simple d’exécuter des scripts (succession de commandes) R :
	- ouvrir R, exécuter script.r et ferme R : Rscript path/script.r
	- exécuter script.r sans ouvrir R :R CMD BATCH path/script.r

#gdal, proj4, geos

# Qgis :


# ImageMagick :
Créer, éditer, convertir des images dans de nombreux formats et cela en quelques lignes de commandes, c’est ce que propose ImageMagick.
- Rq : au 04/01/2015, j’ai installé la version 6.9
——————
Quelques exemples d’utilisation une fois installée :
- Convertir une image d’un format à un autre : convert ; ex : convert image1.jpg image.png #(jpg=>png)
- Convertir un ensemble d’image : mogrify ; ex : mogrify -format png *.tiff
- Redéfinir la taille d’une image : resize 50%
- Convertir une série d’image en film : convert -delay 10 *.jpg moovie.mp4
- Créer une image animée : convert  -delay 85  -loop 0  Rplot*.pdf   animation.gif

# FFmpeg :
C’est dans le cadre du projet FFmpeg projet qu’a été développé la bibliothèque « Libavcodec » qui est une librairie de codec (COdage-DECodage d’un signal numérique) pour les signaux video et audio qui sont utilisés, entre autres, par le célèbre VLC.
——————
# Manipulation de fichier audio :
Pour convertir en usant ffmeg et mplayer dans un dossier on peut écrire :
wma est le format d'origine mp3 format d'arriver
———
-wma est le format d'origine mp3 format d'arriver
for i in *.wma; do ffmpeg -i "$i" -b 320kb "${i%wma}mp3"; done
———
# flac to mp3
for i in *.flac; do ffmpeg -i "$i"  -b 320kb "${i%flac}mp3"; done
———
# flac en alac
for i in *.flac; do ffmpeg -i "$i" -acodec alac  "`basename "$i" .flac`.m4a"; done;
——————
# Manipulation de fichiers vidéo:
———
- convertir un fichier audio
ffmpeg -i input.mp3 output.wma
———
- Il faut se mettre dans un répertoire
ffmpeg -r 5 -i ~/Desktop/DengueIncidenceKHM_Maps/map%03d.jpeg video.mov
 -r 5 = 5 image par seconde
-i ~/Desktop/DengueIncidenceKHM_Maps/map%03d.jpeg video.mov = input file avec ne numérotation avec 3 chiffres (%03d)
———
ffmpeg -i video.mp4 img%d.jpg
ffmpeg -i video.mp4 -r 15 -ss 00:00:10 -t 00:00:20 img%d.jpg
———
ffprobe video.avi
ex : ffprobe ~/Movies/Filmavoir/OneManBand.mkv
———
- Pour régler le débit binaire (bitrate) du fichier vidéo de sortie à 64 kbit/s:
ffmpeg -i input.avi -b:v 64k -bufsize 64k output.avi

# Lynx :
Un navigateur dans la console c’est historiquement important ! Aujourd’hui cela n’a plus vraiment de sens mais il m’est arrivé que j’ai pu me connecter à internet via lynx et non via mes navigateurs classiques ! quoi que désuet !
- Pour entrer dans le navigateur : lynx
- Pour entrer une adresse : g puis entrer l’adresse ex: www.kevincazelles.fr

# Github :
Github est un outil très puissant de plus en plus développé par les développeurs pour travailler à plusieurs. est Github en fait il faudrait détaillé git et et qui hub mais il suffit de regarder sur le site de Github (et la page wikipedia).
- Installer Github :
sudo port install git +svn +doc +bash_completion +gitweb
sudo port install hub
- Utiliser Github :


# Php5 et Apache
Regarder ici
je n’ai personnelement pas installer mysql5 j’utilise poster
sudo port install php56 +apache2 +pear
LoadModule php5_module /usr/libexec/apache2/libphp5.so

Mais avant de vous lancer dans tout ce genre de chose, je vous réconcilie vivement de regarder le lien suivant :
http://openclassrooms.com/courses/votre-serveur-local


# PostgreSQL :
- PostgreSQL est un SQL (Structured Query Langage), c’est à dire un langage proche du langage parlé pour faire des requêtes. Il est utilisé pour créer et gérer des bases de données.
- Postgresql peut être considéré comme un clone de Mysql libre, l’utilisation est très similaire. Pour un peu d’histoire, regardez donc la page wikipedia. Il est important de souligner que depuis le rachat de Sun Microsystems par Oracle, début 2010, un doute pèse sur l’avenir de MySQL (Oracle ayant d’autres projets relatifs aux bases de données, cf). Ainsi, PostgreSQL est une alternative libre et puissante pour SQL.
- Je présente ici comment installer PostgreSQL 9.4 sous Yosemite. C’est un peu plus délicat que les autres ports.
Les instructions sous bineuse disponibles en lignes (documentation de PostgreSQL).
- Rq : c’est la même démarche pour la version 9.3 sous MacOS 10.9.
——————
# Installer le Port :
sudo port install postgresql94 postgresql94-server
- Mettre la version 9.4 par défaut (pour utiliser psql au lieu de psql94) :
sudo port select --set postgresql postgresql94
- La location des bases de données est ici : /opt/local/var/db/
——————
# Créer le dossier pour les bases de données:
- Créer un dossier
sudo mkdir -p /opt/local/var/db/postgresql94/defautdb
- Changement des permissions du fichier => postgres doit avoir les permissions
sudo chown postgres:postgres /opt/local/var/db/postgresql94/defautdb
- On prend l’identité de postgres pour activer le tout :
sudo su postgres -c '/opt/local/lib/postgresql94/bin/initdb -D /opt/local/var/db/postgresql94/defautdb'
- On a alors une succession de lignes avec en bout des « ok » si tout va bien ! A la fin, on peut lire :
Success. You can now start the database server using:

    /opt/local/lib/postgresql94/bin/postgres -D /opt/local/var/db/postgresql94/defautdb
or
    /opt/local/lib/postgresql94/bin/pg_ctl -D /opt/local/var/db/postgresql94/defautdb -l logfile start

# Démarrer le serveur:
- On charge alors le server
sudo port load postgresql94-server  (au pire on nous signale que c’était en cours).
- NB : pour «éteindre» le port et donc le serveur :  sudo port unload postgresql93-server  
- Après j’ai du redémarrer l’ordinateur. Ensuite pour voir si ça marche, la commande suivante affiche la liste des bases de données, par défaut :
/opt/local/bin/psql94 --list
- Si on a un message du type psql94: FATAL:  role "kcazelles" does not exist Il faut créer un super utilisateur pour kcazelles :
createuser --superuser kcazelles -U postgres -P
- Il faut alors entrer un mol de passe
# Créer une base de donnée:
- Créer un cluster (de base de données)
initdb nom_cluser ; ex : initdb kevdb
## Créer une base de donnée
createdb nom_db ; ex : createdb atelier
#Pour se connecter :
psql -d name_db -U nameused -h localhost
# Exemple d’utilisation:
psql -d atelier -U kcazelles -h localhost
# Quelques raccourcis pour débuter (http://qcbs.ca/wiki/bdlibre)
- Accès à une liste de commande : ctrl + I  
- Accès à une liste exhaustive de commandes  : \h
- Voir l’ensemble d’une table d’un cluster : \d+
- Voir les différents utilisateurs : \du
- Aide sur une commande : \? + NOM_COMMANDE  
- Quitter : \q
- NB : toujours finir une ligne de commande par un « ; » sinon la commande n’est pas effectuée.

# Python :
- De très nombreuses versions sont disponibles via Macports et de nombreux ports utilisent python. Le projet python (nommée aisin en l’hommage des Monthy Python) mené par Guido van Rossum (actuellement chez DropBox après un tour chez Google) demanderais des grands développements dont je suis incapable. Pour plus d’idée, regarder la page wikipedia consacrée et un tutoriel sur OpenClassroom.
- Rq : la dernière version que j’utilise est la 3.4.2 du 12/11/2014

- Si Python est installé, pour l’ouvrir, il suffi de taper python ; cela vous ouvrira la version associé à ce raccourci sinon ajouter les 2 chiffres de la version ex : python 3.4 => python34)
- Quitter : quit()  ou ctrl+D
- Faîtes un 1+1 quand même pour voir que tout marche bien!
- Connaître la version associé à la commande python  python —version

# Julia :
- Julia est un logiciel de programmation qui prend son envol ! Il propose des performances surprenantes et une syntaxe facile d’accès.
- Une fois installé entrez julia et ensuite regarder l’aide en ligne l’adresse vous est donnée en entrant : help()
- Quitter : quit()  ou ctrl+D


# Pandoc :
Pandoc est un convertisseur universel de document.  Consulter le site internet et la page github.
Il est possible de l’installer via Macport mais lorsque j’ai essayé début janvier 2015 je n’y suis pas arrivé.
Une fois que vous l’avez installé :  pandoc —version
pandoc file.tex -o file2.tex --csl=file.css  —bibliography=bibli.bib —template file.tex

% Pandoc : pandoc -t latex -o ~/Desktop/cool.pdf  ~/Documents/PHD/ProductEcrite/Articles/ArticlGTIB0115/ArticleGTIBf.tex --latex-engine=pdflatex --bibliography=/Users/kcazelles/Documents/PHD/ProductEcrite/Articles/ArticlGTIB0115/biblio.bib --csl= /Users/kcazelles/Desktop/ecology-letters.csl --template /Users/kcazelles/Documents/PHD/ProductEcrite/Articles/ArticlGTIB0115/mytemplate.latex



#Valgrind

http://valgrind.org

au 06/03/2015 => pas encore pour Yosemite ; il fait utiliser la version de développement valgrind-devel

#NB :
1 - Peuvent aussi être installés ainsi : Inscape, Gimp, Perl, Ruby les compilateurs GCC et Clang,  valgrind (Jusqu’à la version 10.9)…  Si Perl est installé, pour commencer : perldoc perlintro
2 - Si vous devez tout réinstaller, après avoir réinstallé Macports, une seul commande suffit, vous pouvez la garder dans un fichier texte dans mon cas, j’ai découpé en 4 lignes :
sudo port install ffmpeg  imagemagick vlc transmission gimp inkscape lynk
sudo port install julia R qgis python34 postgresql94 git hub filezilla
sudo port install  gcc49 valgrind-devel
sudo port install texlive texlive-latex-extra texlive-publishers





### V - Quelques autres utilisations que j’apprécie !  

# Le but de cette section est de donner quelques autres utilisations de « Terminal ».

## Les autres shell
- Shell : sh
- KornShell : ksh
- C Shell : csh

# Editeur de Texte pico ou nano
- Les ouvrir : nano ou pico (nano est un clone gratuit de pico)
- En les utilisant les actions sont décrites en bas. En bref ctrl+o puis enter pour sauver et ctrl+x pour quitter
- Pour ouvrir un fichier avec l’éditeur, il suffit d’entrer : nano file1
- Ex : Modifier son message d’accueil : nano /etc/motd
- Pour les raccourcis : lien internet

## Sage
# Sage
——————
- Site officiel : http://www.sagemath.org/
- Wiki : http://wiki.sagemath.org/
——————
- Tester que suite à l’installation tout va bien sage —testall
- load_attach_path('/Users/kcazelles/Documents/Sage_workspace/')
- doc test ex : ./sage -t -valgrind devel/sage/sage/groups/perm_gps/
- export SAGE_BROWSER="firefox"
- ctrl + D pour quitter (ou quit())
- commande + ? => info sur la commande
- Si Macports  est installé la mise à jour va poser un petit souci que l’on résoudre en utilisant  (si présent, le dossier sw dois aussi être délogé le temps de l’upgrade)
cd /
sudo mv /opt/local /opt/local_gone
sage upgrade
sudo mv /opt/local_gone /opt/local
——————
- %time devant une commande retournera le temps d’exécution
- %hist donne l’historique des commandes
- export EDITOR=/usr/bin/nano
- %rep pour répéter le résultat
- ctrl+P
——————
sage -t /Applications/sage/src/sage/doctest/test.py
sage -t /Applications/sage/src/sage/schemes/plane_curves/curve.py


## Compiler les fichiers Latex :
# Infos : http://latex-project.org/
ex : mon fichier est « ms.tex » 
# compiler simplement
latex ms.tex
# compiler + pdf
pdflatex ms.tex
# compiler biblio
bibtex ms
# NB : J’ai du utilisé :  pdflatex -shell-escape ArticleGTIBf.tex
pour être capable de compiler sans message d’erreur pour des figures eps.



## Compilation C
- En utilisant Macports, nous installons des outils développeurs et entre autres des compilateurs C, Fortran.
- Vous pouvez installer d’autres versions des compilateurs si besoin via MacPorts. Si c’est le cas, vous pouvez  regarder l’ensemble des compilateurs installés. Par exemple, avec GCC : port select --list gcc ; vous pouvez ensuite régler celui par défaut ; ex : sudo port select --set gcc mp-gcc47
- Sous MacOS 10.8 j’utilisais sans problème le compilateur GCC (page wikipedia)
- Sous Maverick, la commande gcc utilisait en fait clang, j’ai alors installé gcc 4.9 manuellement, notons que MacPorts le fait très bien (ce que j’ignorais alors).
- Depuis que je suis sous Yosemite (MacOS10.10), il semble que tout soit Ok :
	- la commande gcc --version me donne :
gcc: warning: couldn’t understand kern.osversion ‘14.0.0
gcc (GCC) 4.9.0 20140309 (experimental)
Copyright (C) 2014 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
	- la commande clang --version me donne :
Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
Target: x86_64-apple-darwin14.0.0
Thread model: posix

- Compiler avec OpenMP (parallélisation), ex : gcc -fopenmp function1.c function2.c -o nexec
./nexec

- Compiler pour appeler sous R : il faut faire une bibliothèque partagé, le fichier se terminera alors par « .dylib » ou « .so » ou « .dll »
ex :
R CMD SHLIB function1.c function2.c -0 mylib.so (ou mylib.dll)
pour utiliser OpenMP :
gcc --shared -fopenmp main.c Matrix.c usefulction.c modelevol.c -o evol.so





#### Annexe I - Quelques autres utilisations que j’apprécie !  
## Les raccourcis cmd+
La plupart des raccourcis bien pratiques s’articulent autour de la touche « cmd » (il y a en deux, une de chaque côté de la barre d’espace). Ces raccourcis sont pour la plupart relatifs à une application, ils sont un raccourcis pour une commande de l’application. Dans la barre de menu (en haut de l’écran), la plupart des raccourcis sont indiqués. Mais la pratique d’un raccourci invitent les développeurs à choisir de manière cohérente leur raccourcis, j’imagine ! (D’ailleurs, on est un peu pommé quand certain raccourci sont particulier !).

# Dans la pratique, pour une majorité d’application (office, textedit, application d’Apple, explorateur internet courants, quand l’action est pertinente (mettre un lien hypertexte dans i-tunes a peu de sens, encore que…)
- Copier : cmd + C
- Copier : cmd + V
- Tout sélectionner : cmd + A
- Imprimer : cmd + P
- Enregistrer : cmd + S
- Quitter : cmd + Q
- Annuler : cmd + Z
- Ajouter un lien hypertexte : cmd+K
- Nouvelle fenêtre : cmd + N
- Nouvel onglet : cmd + T
- Obtenir des information : cmd + I
- Dupliquer : cmd + D
- Mettre en gras : cmd + B
- Mettre en italique : cmd + I
- Souligner : cmd +U

Dans le Finder :
- Éteindre: ctrl+opt+cmd+eject
- Ejecter un disque : ctrl + E
- Mettre dans la corbeille : ctrl + delete
- Vider la corbeille : ctrl+shift+delete




#### Annexe II : Futurs développements

- D’autres commandes : w, who, whoiam, signal, vm_stat, vmap,  id, less, tail, more,  lpr, lpq, lpstat, sort,  magicps, set, wc, whatis, apropos, traceroute, chmod, chown, magic, uptime
- Script bash
- Connexion serveur en FTP et VPN



———————
———————
———————



## Script bash

Executer un script bash
1)   bash script.sh
ou :
2)  chmod +x script.sh ; ./script.sh


## Connexion serveur en FTP

1- Taper ftp
2- open + IP (ou nom de domaine)
3 - entrer le nom d’user
4-

## Connexion serveur en VPN (SSH)

ssh cazk0001@127.0.0.1 -p 2222
//ssh cazk0001@eec1.uqar.ca
##Uploader un fichier
scp -P 2222  ~/Desktop/cou.sh cazk0001@127.0.0.1:
##Downloader un dossier
scp -P 2222  -R cazk0001@127.0.0.1:bioconnectot ~/Desktop

ssh cazk0001@132.215.29.16 -p 2222

Non du serveur linux :
uname -a

- Qui est connecté ? : who ; w
- pour sortir : logout (sinon on va avoir différentes truc de connexion)

## faire des boucles simples
## Boucle pour renommer fichier

ex : boucle
for num in $(seq -f "%05g" 25 -3 10 ) ; do echo -n "${num} " ; done ; echo
for num in $(seq 0 2 40 ) ; do echo -n "${num} " ; done ; echo
for num in $(seq -f "%04g" 100 1 199 ) ; do echo -n "${num} " ; done ; echo
for file in *.txt
do
   mv $file `basename $file .err`.gif
done

echo : -n en ligne "%02d\n" $i


===>
for i in $(seq 0 99);do num1=$(printf "%04d\n" $i) num2=$(printf "%04d\n" $(($i+300))); mv coocurence${num1}.txt coocurence${num2}.txt ;done

for i in $(seq 3001 3300);do num1=$(printf "%04d\n" $i) num2=$(printf "%04d\n" $(($i-2701))); mv web${num1}.txt web${num2}.txt ;done

## forcer tous les liens à s’ouvrir dans safari a s’ouvrir dans un nouvel onglet et non une nouvelle fenêtre
defaults write com.apple.Safari TargetedClicksCreateTabs -bool TRUE (on peut remplacer par 1 au lieu de -bool TRUE)
defaults write com.apple.mail PreferPlainText -bool TRUE


### Bytewise operator !
## bytewise exclusif operator
C, python, sage , R
Bitwise Logical Operations
R -> bitwNot(a) bitwAnd(a, b)
Bitwise And ¬> both are 1
Bitwise or-> one is 1


## VLC h et j pour retarder les subtitles



hdiutil convert /Users/kcazelles/Downloads/ubuntu-14.04.2-desktop-amd64.iso  -format UDRW -o ~/Desktop/iso.img





#### Annexe I - Quelques autres utilisations que j’apprécie !  
## Les raccourcis cmd+
La plupart des raccourcis bien pratiques s’articulent autour de la touche « cmd » (il y a en deux, une de chaque côté de la barre d’espace). Ces raccourcis sont pour la plupart relatifs à une application, ils sont un raccourcis pour une commande de l’application. Dans la barre de menu (en haut de l’écran), la plupart des raccourcis sont indiqués. Mais la pratique d’un raccourci invitent les développeurs à choisir de manière cohérente leur raccourcis, j’imagine ! (D’ailleurs, on est un peu pommé quand certain raccourci sont particulier !).

# Dans la pratique, pour une majorité d’application (office, textedit, application d’Apple, explorateur internet courants, quand l’action est pertinente (mettre un lien hypertexte dans i-tunes a peu de sens, encore que…)
- Copier : cmd + C
- Copier : cmd + V
- Tout sélectionner : cmd + A
- Imprimer : cmd + P
- Enregistrer : cmd + S
- Quitter : cmd + Q
- Annuler : cmd + Z
- Ajouter un lien hypertexte : cmd+K
- Nouvelle fenêtre : cmd + N
- Nouvel onglet : cmd + T
- Obtenir des information : cmd + I
- Dupliquer : cmd + D
- Mettre en gras : cmd + B
- Mettre en italique : cmd + I
- Souligner : cmd +U

Dans le Finder :
- Éteindre: ctrl+opt+cmd+eject
- Ejecter un disque : ctrl + E
- Mettre dans la corbeille : ctrl + delete
- Vider la corbeille : ctrl+shift+delete




#### Annexe II : Futurs développements

- D’autres commandes : w, who, signal, vm_stat, vmap,  id, less, tail, more,  lpr, lpq, lpstat, sort,  magicps, set, wc, whatis, apropos, traceroute, magic, dd
- Script bash
- Connexion serveur en FTP et VPN



## Script bash

Executer un script bash
1)   bash script.sh
ou :
2)  chmod +x script.sh ; ./script.sh


## Connexion serveur en FTP

1- Taper ftp
2- open + IP (ou nom de domaine)
3 - entrer le nom d’user
4-

## Connexion serveur en VPN (SSH)

ssh cazk0001@127.0.0.1 -p 2222
//ssh cazk0001@eec1.uqar.ca
##Uploader un fichier
scp -P 2222  ~/Desktop/cou.sh cazk0001@127.0.0.1:
##Downloader un dossier
scp -P 2222  -R cazk0001@127.0.0.1:bioconnectot ~/Desktop

ssh cazk0001@132.215.29.16 -p 2222

Non du serveur linux :
uname -a

- Qui est connecté ? : who ; w
- pour sortir : logout (sinon on va avoir différentes truc de connexion)

## faire des boucles simples
## Boucle pour renommer fichier

ex : boucle
for num in $(seq -f "%05g" 25 -3 10 ) ; do echo -n "${num} " ; done ; echo
for num in $(seq 0 2 40 ) ; do echo -n "${num} " ; done ; echo
for num in $(seq -f "%04g" 100 1 199 ) ; do echo -n "${num} " ; done ; echo
for file in *.txt
do
   mv $file `basename $file .err`.gif
done

echo : -n en ligne "%02d\n" $i


===>
for i in $(seq 0 99);do num1=$(printf "%04d\n" $i) num2=$(printf "%04d\n" $(($i+300))); mv coocurence${num1}.txt coocurence${num2}.txt ;done

for i in $(seq 3001 3300);do num1=$(printf "%04d\n" $i) num2=$(printf "%04d\n" $(($i-2701))); mv web${num1}.txt web${num2}.txt ;done

## forcer tous les liens à s’ouvrir dans safari a s’ouvrir dans un nouvel onglet et non une nouvelle fenêtre
defaults write com.apple.Safari TargetedClicksCreateTabs -bool TRUE (on peut remplacer par 1 au lieu de -bool TRUE)
defaults write com.apple.mail PreferPlainText -bool TRUE


### Bytewise operator !
## bytewise exclusif operator
C, python, sage , R
Bitwise Logical Operations
R -> bitwNot(a) bitwAnd(a, b)
Bitwise And ¬> both are 1
Bitwise or-> one is 1


## VLC h et j pour retarder les subtitles



hdiutil convert /Users/kcazelles/Downloads/ubuntu-14.04.2-desktop-amd64.iso  -format UDRW -o ~/Desktop/iso.img -->
