---artan fiyata göre sýralama
Select title,author,price from dbo.[Kitap envanteri] 
order by price
---türü roman olan kitaplarý a'dan z'ye sýrala
select title,author from dbo.[Kitap envanteri]
order by title
---fiyatý 80 ile 120 arasýndaki kitaplar (120 dahil)
select title,price from [Kitap envanteri] where price between 80 and 120
---stok adedi 120'den az olan kitaplar(title,stock)
select title,stock from [Kitap envanteri] where stock<20
---title içinde zaman geçen kitaplarý like ile filtrele(büyük/küçük harf durumunu göz önünde bulundurarak)
select title from [Kitap envanteri] where lower(title) like '%zaman%'
---genre deðeri roman veya bilim olanlarý IN ile listele
select * from [Kitap envanteri] where genre in ('roman','bilim')
---published_year deðeri 2000 ve sonrasý olan kitaplarý,en yeni yýldan eskiye doðru sýralayýn
select * from [Kitap envanteri] where published_year>2000 order by published_year desc
---Son 10 gün içinde eklenen kitaplarý bulun(added_at tarihine göre)
select * from [Kitap envanteri] where [added-at]>'2025-09-01'
---en pahalý 5 kitabý price azalan sýrada listeleyin(LIMIT 5)
select TOP 5* from [Kitap envanteri] order by price desc
---stok adedi 30 ile 60 arasýnda olan kitaplarý price artan þekilde sýralayýn
select * from [Kitap envanteri] where stock between 30 and 60 order by price