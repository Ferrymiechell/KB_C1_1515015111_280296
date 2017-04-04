DOMAINS
nama_matkul,nama_dosen,jurusan,j_kel,nama_mhs= string
ruangan = integer
nim =long
mahasiswa = mahasiswa(string,string,string,long,alamat)
alamat = alamat(jalan,kota,provinsi)
jalan = jalan(nama_jalan,nomor)
nama_jalan,nomor = string
kota,provinsi=string

PREDICATES
nondeterm matkul(nama_matkul,nama_dosen,jurusan,ruangan)
nondeterm mahasiswa(nama_matkul,nama_mhs,j_kel,nim,alamat)
nondeterm mengambil(nama_matkul,nama_dosen,ruangan,nama_mhs,alamat)
nondeterm matkul_semester_ini(nama_matkul,nama_mhs,ruangan,nama_dosen)

CLAUSES
matkul("Intlejensi Buatan","Abdul Kadir","Manajemen Informatika",1).
matkul("PDE","Indra Yatini","Teknik Informatika",2).
matkul("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer",3).


mahasiswa("PDE","Laksamana Sukardi","Laki-laki",2002004,alamat(jalan("Jl. MT Haryono","No. 10"),"Palembang","Sumatera Selatan")).
mahasiswa("PDE","Rini Suwandi","Perempuan",2002005,alamat(jalan("Jl. Letjen Suprapto","No. 12"),"Surabaya","Jawa Timur")).
mahasiswa("PDE","Kwik Kian Gie","Laki-laki",2002006,alamat(jalan("Jl. WR. Supratman","No. 100"),"Makassar","Sulawesi Selatan")).

mahasiswa("Teknik Antar Muka","Riri Reza","Laki-laki",2002007,alamat(jalan("Jl. RW Monginsidi","No. 30"),"Purwokerto","Jawa Tengah")).
mahasiswa("Teknik Antar Muka","Rachel Maryam","Perempuan",2002008,alamat(jalan("Jl. Otista","No. 112"),"Bandung","Jawa Barat")).
mahasiswa("Teknik Antar Muka","Garin Nugroho","Laki-laki",2002009,alamat(jalan("Jl. Tanjung Pura","No. 101"),"Jayapura","Papua")).

mahasiswa("Intlejensi Buatan","Sugeng Riyadi","Laki-laki",2002001,alamat(jalan("Jl. Sudirman","No. 2"),"Pontianak","Kalimantan Barat")).
mahasiswa("Intlejensi Buatan","Yulia Sugondo","Perempuan",2002002,alamat(jalan("Jl. Ahamd Yani","No. 10"),"Klaten","Jawa Tengah")).
mahasiswa("Intlejensi Buatan","Budiman Sejati","Laki-laki",2002003,alamat(jalan("Jl. Slamet Riyadi","No. 45"),"Solo","Jawa Tengah")).

mengambil(Nama_matkul,Nama_dosen,Ruangan,Nama_mhs,Alamat):-
						matkul(Nama_matkul,Nama_dosen,_,Ruangan),
						mahasiswa(Nama_matkul,Nama_mhs,_,_,Alamat).
					
matkul_semester_ini(Nama_matkul,Nama_mhs,Ruangan,Nama_dosen):-
						nl,write("========================= MATAKULIAH TERSEDIA SEMESTER INI =========================="),nl,
						matkul(Nama_matkul,Nama_dosen,_,Ruangan),
						mahasiswa(Nama_matkul,Nama_mhs,_,_,_).

GOAL
mengambil(Nama_matkul,Nama_dosen,Ruangan,Nama_mhs,Alamat),Nama_matkul="Intlejensi Buatan";
matkul_semester_ini(Nama_matkul,Nama_mhs,Ruangan,Nama_dosen).