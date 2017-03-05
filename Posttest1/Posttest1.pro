/****************************************
	Nama  : Ferry Miechel Lubis
	NIM   : 1515015111
	Kelas : C1 2015
*****************************************/

predicates
  nondeterm punya(symbol,symbol)
  nondeterm smartphone(symbol,long,symbol,integer)
  nondeterm laptop(symbol,long,symbol,integer)
  nondeterm vga(symbol,long,symbol,integer)
  nondeterm mencari(symbol,long,symbol,integer)
  nondeterm membeli(symbol,long,symbol,integer)
  
clauses
  punya(ferry,smartphone).
  punya(miechel,smartphone).
  punya(lubis,laptop).
  punya(yuliana,vga).
  smartphone(samsung,2450000,galaxyS7,2017).
  smartphone(oppo,3500000,oppoF1SPlus,2016).
  smartphone(infinix,2500000,zero3,2016).
  laptop(acer,5500000,aspireE5,2014).
  laptop(asus,4000000,x550dp,2015).
  vga(nvdia,2800000,geforce820m,2015).
  vga(amd,4000000,atiradeon,2013).
  		
  mencari(Merk,Harga,Tipe,Tahun):-
  	smartphone(Merk,Harga,Tipe,Tahun);
  	laptop(Merk,Harga,Tipe,Tahun).
  
  membeli(Merk,Harga,Tipe,Tahun):-
  	vga(Merk,Harga,Tipe,Tahun);
  	laptop(Merk,Harga,Tipe,Tahun).
  
goal
  punya(YangPunyaLaptop,laptop);
  punya(YangPunyaSmartphone,smartphone);
  punya(Namanya,Punya);
  mencari(Merk,Harga,Tipe,2016);
  membeli(Merk,4000000,Tipe,Tahun).
