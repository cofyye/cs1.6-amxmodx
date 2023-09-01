# **FPS LIMITER** [_Serbian_]

Ovo je plugin pomocu kojeg mozete da ogranicite igracev FPS. Ovaj plugin kikuje igraca ako mu je fps_max postavljen preko 150 ili 
na neku drugu vrednost u zavisnosti kako ste podesili cvar. Plugin ima dva cvara, to su fps_limit_maxfps i fps_limit_checktime.
U nastavku cu objasniti oba od ovih cvarova. Razlog zasto je plugin napravljen da kikuje igraca a ne da mu menja vrednost iz igre jeste taj
sto je zabranjen slowhacking, a drugi razlog jeste sto danas dosta vrste cs 1.6 ima zastitu od slowhackinga, pa nije moguce promeniti vrednost
igracu.

## **Instalacija**

Instalacija plugina je veoma jednostavna. Sve sto treba da uradite, jeste da udjete u Vas GamePanel (WebFTP) ili FTP (FileZilla). <br />
Zatim udjete u **plugins** folder koji se nalazi ovde : **cstrike/addons/amxmodx/plugins** <br />
U ovaj folder ubacite plugin **fps_limiter.amxx** <br />
Nakon toga, idite korak nazad i udjete u **configs** folder, puna lokacija : **cstrike/addons/amxmodx/configs** i udjete u fajl **plugins.ini** <br />
Unutar ovog fajla, na dnu ukucate sledece : **fps_limiter.amxx** <br />
Kada to uradite, sacuvajte fajl, a zatim udjite u fajl **amxx.cfg** koji se nalazi u istom folderu. <br />
Na dnu ovog fajla kucate sledece : <br />

```bash
fps_limit_maxfps 150
fps_limit_checktime 5
```
Kada ste ovo dodali, potrebno je sacuvati **amxx.cfg** i nakon toga **restartujete server** ili **promenite mapu** da bi Vam plugin radio! <br />
Idemo sada korak po korak za objasnjenje svakog od ovih cvarova.<br />

### FPS_LIMIT_MAXFPS
Ovaj cvar sluzi postavite vrednost maximalnog FPS-a koja ce se proveravati sa igracevom vrednostu. Ukoliko igrac ima vecu vrednost nego sto je
postavljena u cvaru, kikovace igraca. Na primer, ako igrac ima fps_max 151, a Vi ste u cvaru stavili 150, kikovace igraca.

### FPS_LIMIT_CHECKTIME
Ovaj cvar sluzi na koliko ce sekundi proveravati igracu FPS. Ukoliko stavite vrednost ovog cvara na 5, to znaci da u trenutku kada igrac udje na server,
proveravace mu se fps_max na svakih 5 sekundi. Ovo je dobro iz razloga sto igrac moze pri konekciji da stavi manju vrednost FPS-a, a kasnije u igri
da poveca sto nije dobro u praksi. Zato je napravljeno ovako kao pouzdano resenje.

## **Slike sa servera**

**_Kikovanje igraca ukoliko ima veci FPS_** <br />
![FpsLimitKick](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/FPSLimit_Kick.png?raw=true)

## **Licenca**
Plugin je free-to-use gde mozete menjati sma i ostale stvari ali ne i menjanje autora plugina. Takodje ne smete prodavati ovaj plugin drugim ljudima.

## **Conclusion**
Ukoliko imate neku zamerku na plugin, pronadjete neki bug ili slicno, obavezno mi javite da sto pre ispravim. Takodje, ako imate ideju za nadogradnju
ovog plugina ili ideju za neki novi plugin, obavezno mi pisite na discordu : **cofyye** ili **cofyye#1328** ili mozete na 
[Instagramu](https://instagram.com/cofyye)
