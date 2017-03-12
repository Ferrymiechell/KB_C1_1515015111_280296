/****************************************
	Nama  : Ferry Miechel Lubis
	NIM   : 1515015111
	Kelas : C1 2015
*****************************************/
domains
bahan,warna,pembeli = symbol
harga,ukuran,bayar = ulong

predicates
run - nondeterm()
nondeterm sepatu(bahan,warna,ukuran,harga,pembeli,bayar)
nondeterm angsulan(harga,bayar,harga)

clauses
  run:-
   	write(" "),nl,
	write("############ FERRY MIECHEL LUBIS #############"),nl,
	write("===========Posttest 2 Kecerdasan Buatan=========="),nl,
	write("Ketik selain huruf Y Besar untuk lanjut"),nl,
	readchar(Y),Y='Y',nl.
  	
  sepatu(sintetis,merah,43,120000,"Ferry",150000).
  sepatu(kulit,coklat,44,450000,"Miechel",550000).
  sepatu(sintetis,biru,38,80000,"Lubis",100000).
  sepatu(sintetis,coklat,41,190000,"Rangga",200000).
  		
  angsulan(Harga,Bayar,Total_angsul):-
  		Total_angsul=Bayar-Harga.
 
goal
  run;
  sepatu(Bahan,Warna,Ukuran,Harga,Pembeli,Bayar), Ukuran > 40 , Harga < 200000;
  sepatu(Bahan,Warna,Ukuran,Harga,"Lubis",Bayar);
  sepatu(Bahan,_,_,Harga,Pembeli,Bayar),Pembeli="Ferry",angsulan(Harga,Bayar,Total_angsul);
  sepatu(Bahan,_,_,Harga,Pembeli,Bayar),Pembeli="Miechel",angsulan(Harga,Bayar,Total_angsul);
  sepatu(Bahan,_,_,Harga,Pembeli,Bayar),Pembeli="Lubis",angsulan(Harga,Bayar,Total_angsul).