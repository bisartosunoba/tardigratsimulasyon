program simulasyon
 logical :: progress,aktifmod,tunmodu
 real :: radyasyon,celcius,su,suyuzde,ortalama,basinc
 ! Başlangıç değerler
 
 celcius = ! Derece gir
 suyuzde = ! Su yüzdesi gir
 su = suyuzde/100 ! Vücut su oranı
 radyasyon = 0.001 ! Radyasyon
 basinc = 1 !ATM
 
 ! Ortalama değer 8,6
 ! Sıcaklık 220 olduğunda ortalama değer 73,6
 ! Sıcaklık -273 olduğunda ortalama değer -90,7
 
 progress = .true.
 tunmodu = .false.
 aktifmod = .true.
 
 print*, "Su ayısı simulasyonuna hoşgeldiniz!"
 ! Simulasyon 
 do 
 
 celcius = celcius + celcius*radyasyon - (suyuzde*0.001) 
 suyuzde = suyuzde - (celcius*0.0039) + suyuzde*(basinc*0.001)
 ortalama = (celcius+suyuzde+radyasyon) / 3
 if (suyuzde > 100) then
    suyuzde = 100
else if (suyuzde < 0) then
    suyuzde = 0
end if

 
  if((celcius+suyuzdesi+radyasyon) / 3 < -90.7 .or. suyuzde < 3 .or. celcius >220 .or. celcius .le. -273) then
  print*, "Su ayıları tuş modunda, simulasyon sonlandırıldı."
  print*, "Ortalama değer: ", ortalama
  print*, "Su yüzdesi: ", suyuzde
  print*, "Radyasyon değeri: " , radyasyon
  print*, "Sıcaklık Değeri: ", celcius
  tunmodu = .true.
  aktifmod = .false.
  progress = .false.
   exit
  
  else
  print*, "Su ayıları aktif modda."
  print*, "Ortalama değer: ", ortalama
  print*, "Su yüzdesi: ", suyuzde
  print*, "Radyasyon değeri: " , radyasyon
  print*, "Sıcaklık Değeri: ", celcius
  end if
  
 end do
end program simulasyon
