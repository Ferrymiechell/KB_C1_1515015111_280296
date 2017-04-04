DOMAINS
	 nama = orang(symbol,symbol) /* (Pertama , Kedua) */
	 hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */
	 telepon = symbol /* Nomor telepon */
 
 /* ANALISIS DOMAINS:
 Section doamain pada porgram ada data nama terdapat 2 objek yang memiliki tipe data berupa symbol yaitu nama pertama dan nama kedua
 dan pada data hari_lahir ada 3 objek yang punya tipe data integer dan juga ada yang bertipe data symbol. 
 Dan pada data telepon objeknya bertipe data symbol.
 */
 
PREDICATES
	 nondeterm daftar_telepon(nama,symbol,hari_lahir)
	 yang_ulang_tahun_bulan_ini
	 konversi_bulan(symbol,integer)
	 cek_bulan_ulang_tahun(integer,hari_lahir)
 	 cetak_orang(nama)
 	 
/*ANALISIS PREDICATS
Di section predicates  digunakan untuk mendeklarasikan perintah-perintah yang akan digunakan dalam Clauses. 
Nondeterm dipakai kalau predikat daftar_telepon punya lebih dari 1 kemungkinan jawaban.
Selain itu dipakai juga untuk mendeklarasikan tipe data pada objek yang terdapat pada predikat seperti 
predikat daftar telepon memiliki 3 objek yaitu nama,nmr(symbol),dan hari_lahir. 
*/

CLAUSES
	yang_ulang_tahun_bulan_ini:-
	write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,
	write(" Nama Pertama\t\t Nama Kedua\n"),
	write("******************************************************"),nl,
	date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */
	daftar_telepon(Orang, _, Tanggal),
	cek_bulan_ulang_tahun(Bulan_ini, Tanggal),
	cetak_orang(Orang),
	fail.

	yang_ulang_tahun_bulan_ini:-
	write("\n\n Tekan sembarang tombol..."),nl,
	readchar(_).

	cetak_orang(orang(Pertama,Kedua)):-
	write(" ",Pertama,"\t\t\t ",Kedua),nl.
	cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-
	konversi_bulan(Bulan,Bulan1),
	Bul = Bulan1.

/*ANALISIS CLAUSES
Perintah write digunakan untuk menulis didalam goal secara langsung tanpa melalui seleksi.
Perintah date(_,Bulan_ini,_) dipakai untuk mengambil data  bulan pada komputer.
Perintah daftar telepon digunakan untuk  dipakai untuk mencari objek orang dan objek tanggal.
cek_bulan_ulang_tahun(Bulan_ini,Tanggal)dipakai untuk mengecek siapa yang akan berulang tahun dibulan ini dengan cara
mencocokkan objek yang berada dalam predicate date dan objek dalam  predicate daftar_telepon. 
Cetak_orang(Orang) digpakai untuk mencetak nama orang yang berulang tahun bulan ini. 
Readchar yang ada dalam cluses yang_ulang_tahun_bulan_ini dipakai untuk membaca kembali goal jadi kalo kita
tidak menekan sembarang tombol maka goal tidak bisa dihilangkan atau diclose. 
cetak_orang(orang(Pertama,Kedua)) dipakai  untuk menampilkan nama orang yang berulang tahun pada bulan ini. 
Tanda /t dipakai untuk membuat tab pada goal dan nl dipakai untuk membuat baris baru. 
Cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)) dipakai untuk perumpamaan yang nanti perumpamaannya  dicari dengan menggunakan perintah konversibulan(Bulan,Bulan1).
*/

 	daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).
	daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).
 	daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).
 	daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
 	daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).
 	daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).
 	daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
 	daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
 	daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
 	daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
 	daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
 	daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
 	daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
 	daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).
 	konversi_bulan(jan, 1).
 	konversi_bulan(feb, 2).
 	konversi_bulan(mar, 3).
 	konversi_bulan(apr, 4).
 	konversi_bulan(may, 5).
 	konversi_bulan(jun, 6).
 	konversi_bulan(jul, 7).
 	konversi_bulan(aug, 8).
 	konversi_bulan(sep, 9).
 	konversi_bulan(oct, 10).
 	konversi_bulan(nov, 11).
 	konversi_bulan(dec, 12).
/*ANALISIS KONVERSI
Daftar _telepon tentang data yang diinputkan dan yang akan dicek sehingga ditemukan data yang sesuai dengan goal yang diminta.
Konversi bulan dipakai untuk mengkonversi bulan menjadi angka yang berurutan misalnya jan(januari),feb(februari),mar(maret) sampai desember
kalo dikonversi jadinya akan menjadi angka 1 karena januari adalah bulan pertama.
*/
GOAL
 	yang_ulang_tahun_bulan_ini. %Goal sebagai perintah untuk mencari siapa saja yang ulang tahunnya pada bulan ini sesuai bulan komputer kita
	