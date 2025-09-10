---artan fiyata g�re s�ralama
Select title,author,price from dbo.[Kitap envanteri] 
order by price
---t�r� roman olan kitaplar� a'dan z'ye s�rala
select title,author from dbo.[Kitap envanteri]
order by title
---fiyat� 80 ile 120 aras�ndaki kitaplar (120 dahil)
select title,price from [Kitap envanteri] where price between 80 and 120
---stok adedi 120'den az olan kitaplar(title,stock)
select title,stock from [Kitap envanteri] where stock<20
---title i�inde zaman ge�en kitaplar� like ile filtrele(b�y�k/k���k harf durumunu g�z �n�nde bulundurarak)
select title from [Kitap envanteri] where lower(title) like '%zaman%'
---genre de�eri roman veya bilim olanlar� IN ile listele
select * from [Kitap envanteri] where genre in ('roman','bilim')
---published_year de�eri 2000 ve sonras� olan kitaplar�,en yeni y�ldan eskiye do�ru s�ralay�n
select * from [Kitap envanteri] where published_year>2000 order by published_year desc
---Son 10 g�n i�inde eklenen kitaplar� bulun(added_at tarihine g�re)
select * from [Kitap envanteri] where [added-at]>'2025-09-01'
---en pahal� 5 kitab� price azalan s�rada listeleyin(LIMIT 5)
select TOP 5* from [Kitap envanteri] order by price desc
---stok adedi 30 ile 60 aras�nda olan kitaplar� price artan �ekilde s�ralay�n
select * from [Kitap envanteri] where stock between 30 and 60 order by price