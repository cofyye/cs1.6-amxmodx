# **COFYYE_ANTI_REKLAMA** [_Serbian_]

Ovo je plugin pomocu kojeg mozete blokirati reklamiranje IP adresa drugih servera na Vasem.
Ovaj plugin takodje sadrzi i blokiranje izmene imena igraca, sto dodatno omogucava zastitu od odredjenih citera koji cesto menjaju imena svakih X sekundi.
Plugin blokira reklamiranje IP adresa u nicku pri konekciji, blokira poruke u chatu (say i say_team) i ukoliko je dozvoljena izmena nicka na serveru,
blokira svaku promenu koja sadrzi IP adresu i menja nick u 'COFYYE ANTI REKLAMA' ili drugu vrednost koja se podesi putem cvara.

## **Instalacija**

Instalacija plugina je veoma jednostavna. Sve sto treba da uradite, jeste da udjete u Vas GamePanel (WebFTP) ili FTP (FileZilla). <br />
Zatim udjete u **plugins** folder koji se nalazi ovde : **cstrike/addons/amxmodx/plugins** <br />
U ovaj folder ubacite plugin **cofyye_anti_reklama.amxx** <br />
Nakon toga, idite korak nazad i udjete u **configs** folder, puna lokacija : **cstrike/addons/amxmodx/configs** i udjete u fajl **plugins.ini** <br />
Unutar ovog fajla, na dnu ukucate sledece : **cofyye_anti_reklama.amxx** <br />
Kada to uradite, sacuvajte fajl, a zatim udjite u fajl **amxx.cfg** koji se nalazi u istom folderu. <br />
Na dnu ovog fajla kucate sledece : <br />

```bash
cofyye_antireklama_blockchangename 1
cofyye_antireklama_blockinchat 1
cofyye_antireklama_blockonconnect 1
cofyye_antireklama_changenick 1
cofyye_antireklama_logger 1
cofyye_antireklama_prefix "COFYYE_ANTIREKLAMA"
cofyye_antireklama_nickname "COFYYE ANTI REKLAMA"
```

Idemo sada korak po korak za objasnjenje svakog od ovih cvarova.<br />

### COFYYE_ANTIREKLAMA_BLOCKCHANGENAME
Ovaj cvar sluzi da blokira promenu imena dok je igrac na serveru. Vrednost **0** znaci da je iskljucena ova opcija, a vrednost **1** znaci da je ukljucena.

### COFYYE_ANTIREKLAMA_BLOCKINCHAT
Ovaj cvar sluzi da blokira poruku igracu u chatu ukoliko igrac napise neku IP adresu. Vrednost **0** znaci da je iskljucena ova opcija, odnosno
da korisnik moze da napise IP u chatu, a vrednost **1** znaci da je ukljucena ova opcija.

### COFYYE_ANTIREKLAMA_BLOCKONCONNECT
Ovaj cvar sluzi da kikuje igraca prilikom ulaska na serveru ukoliko se u njegovom nicku nalazi IP adresa. Vrednost **0** znaci da je ova opcija
iskljucena, a vrednost **1** znaci da je ukljucena.

### COFYYE_ANTIREKLAMA_CHANGENICK
Ovaj cvar sluzi da, ukoliko je cvar **cofyye_antireklama_blockchangename** na **0**, tada igrac moze da promeni njegov nick dok je na serveru. Prilikom
menjanja nicka, ukoliko je ovaj cvar ukljucen, to znaci da ukoliko je igrac detektovan da se IP adresa nalazi u njegovom nicku, njegov nick
ce biti zamenjen sa nickom iz cvara **cofyye_antireklama_nickname**, vrednost **0** znaci da je iskljucena ova opcija, a vrednost **1** da je ukljucena.

### COFYYE_ANTIREKLAMA_NICKNAME
Iz prethodne sekcije, ukoliko je cvar **cofyye_antireklama_changenick** ukljucen, igracev nick ce biti zamenjen nickom koji se nalazi kao vrednost u ovom cvaru.

### COFYYE_ANTIREKLAMA_PREFIX
Ovaj cvar sluzi da se izmeni text prefixa kada se prikazuje poruka korisniku. <br />
[PREFIX] Ovo je poruka koja se prikazuje korisniku.

### COFYYE_ANTIREKLAMA_LOGGER
Ovaj cvar sluzi da se loguju informacije kada god neki igrac bude blokiran za IP adresu. Vrednost **0** znaci da je iskljucena ova opcija, a vrednost **1** znaci
da je ukljucena.

## **Slike sa servera**

**_Kikovanje igraca ukoliko sadrzi IP adresu u nicku_** <br />
![BlockOnConnect](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/CAR_BlockOnConnect.png?raw=true)
<br /> <br />
**_Poruka kada je zabranjena promena imena na serveru_** <br />
![BlockChangeName](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/CAR_BlockChangeName.bmp?raw=true)
<br /> <br />
**_Blokiranje poruke u chatu, part1 slika poruke koju sam napisao_** <br />
![BlockInChat_1](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/CAR_BlockInChat_1.png?raw=true)
<br /> <br />
**_Blokiranje poruke u chatu, part2 slika kada plugin blokira poruku_** <br />
![BlockInChat_2](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/CAR_BlockInChat_2.png?raw=true)
<br /> <br />
**_Slika kada se promeni nick koji sadrzi IP adresu_** <br />
![ChangeNick4IP](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/CAR_ChangeNick4IP.bmp?raw=true)
<br /> <br />
**_Slika logova kada plugin detektuje IP adresu_** <br />
![ChangeNick4IP](https://github.com/cofyye/cs1.6-amxmodx/blob/assets/CAR_Logger.png?raw=true)

## **Licenca**
Plugin je free-to-use gde mozete menjati sma i ostale stvari ali ne i menjanje autora plugina. Takodje ne smete prodavati ovaj plugin drugim ljudima.

## **Conclusion**
Ukoliko imate neku zamerku na plugin, pronadjete neki bug ili slicno, obavezno mi javite da sto pre ispravim. Takodje, ako imate ideju za nadogradnju
ovog plugina ili ideju za neki novi plugin, obavezno mi pisite na discordu : **cofyye** ili **cofyye#1328** ili mozete na 
[Instagramu](https://instagram.com/cofyye)
