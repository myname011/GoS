İçeriğe geç
 
Search or jump to…

İstekleri çekin
Sorunlar
Pazaryeri
keşfetmek
 @ myname011 oturumu Kapat
Sağladığınız şifre zayıf ve kolayca tahmin edilebiliyor. Güvenliğinizi artırmak için lütfen şifrenizi en kısa zamanda değiştirin .

Daha güvenli şifre uygulamaları ile ilgili belgelerimizi okuyun .

0
0 0 EweWexD / Ezreal
 Kod Sorunları 0 Çekme istekleri 0 Projeler 0 Wiki Insights   
Ezreal /Ezreal.lua
@EweWexD EweWexD Güncellemesi Ezreal.lua
4a5c26c
 on 7 Jul 2018
408 satır (378 sloc)  13,6 KB
    
- ╔═══╗╔══╗╔═╗╔═╗╔═══╗╔╗ ╔═══╗ ╔═══╗╔════╗╔═══╗╔═══╗ ╔═══╗╔╗
- ║╔═╗║╚╣─╝║║╚╝║║║╔═╗║║║ ║╔══╝ ║╔══╝╚══╗═║║╔═╗║║╔══╝ ║╔═╗║║║
- ║╚══╗ ║║ ║╔╗╔╗║║╚═╝║║║ ║╚══╗ ║╚══╗ ╔╝╔╝║╚═╝║║╚══╗║║ ║║ ║║  
- ╚══╗║ ║║ ║║║║║║║╔══╝║║ ╔╗║╔══╝ ║╔══╝ ╔╝╔╝ ║╔╗╔╝║╔══╝║╚ ═╝║║║ ╔╗
- ║╚═╝║╔╣─╗║║║║║║║║ ║╚═╝║║╚══╗ ║╚══╗╔╝═╚═╗║║║╚╗║╚══╗ ║╔═╗║║╚═╝║
- ╚═══╝╚══╝╚╝╚╝╚╝╚╝ ╚═══╝╚═══╝ ╚═══╝╚════╝╚╝╚═╝╚═══╝ ╚╝ ╚╝╚═══╝
- V1.06 Değişiklikler
- + Geliştirilmiş hasar hesabı.
- + "KillsSteal Ready" sohbet mesajı, ulti ile öldürülebildiğinde, düşmandaki bir metinle değiştirildi.
- + Düşmana verilecek hasarı gösteren bir bar eklendi.
-
- V1.05 Değişiklikler
- + Artık bazı maddeler otomatik olarak tf'de kullanılıyor.
-
- V1.04 Değişiklikler
- Q, W ve R tahminlerini seçmek için + GoSPred eklendi.
- + Otomatik Q / W eklendi.
-
- V1.031 Değişiklikler
- + Küçük hatalar düzeltildi.
-
- V1.03 Değişiklikler
- + Otomatik seviye R> Q> W> E açık / kapalı eklendi
-
- V1.02 Değişiklikler
- + Otomatik güncelleme eklendi.
-
- V1.01 Değişiklikler
- + Q Hatası düzeltme
- + aralık renk değişiklikleri
-
- V1, GoS’a yayınlandı





-   [[Şampiyon]]
Eğer  GetObjectName ( GetMyHero ()) '=  " Ezreal "  daha sonra  geri  ucunu


- [[Lib]]
gerektirir ( " OpenPredict " )
gerektirir ( " DamageLib " )

İşlev  EzrealScriptPrint ( msg )
	print ( " <yazı tipi rengi = \" # 00ffff \ " > Ezreal Script: </font> <yazı tipi rengi = \" #ffffff \ " > " .. msg .. " </font> " )

son
EzrealScriptPrint ( " EweEwe tarafından yapılmıştır " )

- [[Güncelle]]
yerel sürüm =  " 1.06 "
İşlev  AutoUpdate ( veri )

    eğer  tonumber (data) >  tonumber (versiyon) o zaman
        PrintChat ( " <font color = '# 00ffff'> Yeni sürüm bulundu! "   .. veriler)
        PrintChat ( " <font color = '# 00ffff'> Güncelleme indiriliyor, lütfen bekleyin ... " )
        DownloadFileAsync ( " https://raw.githubusercontent.com/EweWexD/Ezreal/master/Ezreal.lua " , SCRIPT_PATH ..  " Ezreal.lua " , işlev () PrintChat ( " <font rengi = '# 00ffff'> Güncelleme Tamamlandı) , lütfen 2x F6! " ) dönüş  sonu )
    Başka
        PrintChat ( " <font color = '# 00ffff'> Güncelleme bulunamadı! " )
    son
son

GetWebResultAsync ( " https://raw.githubusercontent.com/EweWexD/Ezreal/master/Ezreal.version " , Otomatik Güncelleme)
	


- [[Menü]]
yerel EzrealMenu =  Menü ( " Ezreal " , " Basit Ezreal " )
- [[Birleşik]]
EzrealMenu: SubMenu ( " Combo " , " [Ezreal] Combo Ayarları " )
EzrealMenu. Combo : Boolean ( " Q " , " Q Kullan " , doğru )
EzrealMenu. Combo : Boolean ( " W " , " W Kullan " , doğru )
EzrealMenu. Combo : Boolean ( " E " , " E Kullan " , yanlış )

- [[Harass]]
EzrealMenu: alt menüsü ( " taciz " , " [Ezreal] taciz Ayarları " )
EzrealMenu. Taciz : Boolean ( " Q " , " Q Kullan " , doğru )
EzrealMenu. Taciz : Boolean ( " W " , " W Kullan " , doğru )
EzrealMenu. Taciz : Kaydırıcı ( " Mana " , " Min. Mana " , 50 , 0 , 100 , 1 )
- [[AutoAB]]
EzrealMenu: SubMenu ( " AutoAB " , " [Ezreal] Otomatik Soru-Cevap " )
EzrealMenu. AutoAB : Boolean ( " Q " , " Otomatik Q " , doğru )
EzrealMenu. AutoAB : Boolean ( " W " , " Otomatik W " , doğru )
EzrealMenu. AutoAB : Kaymak ( " Mana " , " Min. Mana " , 50 , 0 , 100 , 1 )
- [[LaneClear]]
EzrealMenu: SubMenu ( " Çiftlik " , " [Ezreal] Çiftlik Ayarları " )
EzrealMenu. Çiftlik : Boolean ( " Q " , " Q Kullan " , doğru )
EzrealMenu. Çiftlik : Boolean ( " QL " , " LastHit'te Q Kullan " , doğru )
EzrealMenu. Çiftlik : Kaymak ( " Mana " , " Min. Mana " , 40 , 0 , 100 , 1 )
- [[Jungle Clear]]
EzrealMenu: SubMenu ( " JG " , " [Ezreal] Orman Ayarları " )
EzrealMenu. JG : Boolean ( " Q " , " Q Kullan " , doğru )
- [[Kill Steal]]
EzrealMenu: SubMenu ( " KS " , " [Ezreal] Kill Steal Ayarlarını " )
EzrealMenu. KS : Boolean ( " Q " , " Q Kullan " , doğru )
EzrealMenu. KS : Boolean ( " W " , " W Kullan " , doğru )
EzrealMenu. KS : Boolean ( " R " , " R Kullan " , doğru )
- [[Otomatik Seviye]]
EzrealMenu: SubMenu ( " Otomatik Düzey " , " [Ezreal] Otomatik Düzey " )
EzrealMenu. Otomatik Seviye : Boolean ( " DisableAUTOMAX " , " Otomatik maksimum yetenekler R> Q> W> E? " , Yanlış )
- [[Tahmin]]
EzrealMenu: SubMenu ( " Tahmin " , " [Ezreal] Tahmin Ayarları " )
EzrealMenu. Tahmin : DropDown ( " QPrediction " , " Q Tahminleri " , 2 , { " OpenPredict " , " GoSPrediction " })
EzrealMenu. Tahmin : DropDown ( " WPrediction " , " W Tahmini " , 2 , { " OpenPredict " , " GoSPrediction " })
EzrealMenu. Tahmin : DropDown ( " RPrediction " , " R Tahmini " , 2 , { " OpenPredict " , " GoSPrediction " })
- [[Çiz]]
EzrealMenu: SubMenu ( " Çizim " , " [Ezreal] Range Çizim Ayarları " )
EzrealMenu. Çizim : Boolean ( " Q " , " Q Çiz " , yanlış )
EzrealMenu. Beraberlik : Boolean ( " W " , " W Çiz " , yanlış )
EzrealMenu. Beraberlik : Boolean ( " E " , " E Çiz " , yanlış )
EzrealMenu. Çizim : Boolean ( " R " , " Draw R " , yanlış )
EzrealMenu. Çizim : Boolean ( " Devre Dışı Bırak " , " Tüm Çizimleri Devre Dışı Bırak " , yanlış )
- [[DrawDMG]]
EzrealMenu: SubMenu ( " DrawDMG " , " [Ezreal] DrawDMG " )
EzrealMenu. DrawDMG : Boolean ( " DrawD " , " Hasar Beraberlik " , doğru )
EzrealMenu. DrawDMG : Boolean ( " Q " , " Q dmg Beraberlik " , doğru )
EzrealMenu. DrawDMG : Boolean ( " W " , " Çizim W dmg " , doğru )
EzrealMenu. DrawDMG : Boolean ( " R " , " Draw R dmg " , doğru )
- [[Öğe Kullanımı]]
EzrealMenu: SubMenu ( " Öğeler " , " [Ezreal] Öğeler Kullanımı " )
EzrealMenu. Öğeler : Boolean ( " BOTRK " , " BOTRK Kullan " , gerçek )
EzrealMenu. Öğeler : Boolean ( " HG " , " Hextech Gunblade Kullan " , doğru )
EzrealMenu. Öğeler : Boolean ( " BC " , " Bilfewater Cutlass Kullan " , doğru )
- [[Bana göre oluştur: 3]]
EzrealMenu: Bilgi ( " Juan " , " -------------- " )
EzrealMenu: Bilgi ( " Oluşturuldu " , " EweEwe Tarafından Yapıldı " )



- [[Otomatik Seviye]]
yerel düzeylerc =   {_Q, _W, _E, _Q, _Q, _R, _Q, _W, _Q, _W, _R, _W, _W, _E, _E, _R, _E, _E}

- [[Yazım ayrıntıları]]
yerel Büyüler = {
	Q = {range =  1150 , gecikme =  0.25 , hız =  2000 , genişlik =  60 , çarpışma =  doğru , col = { " minion " , " yasuowall " }},
	W = {aralık =  1000 , gecikme =  0.25 , hız =  1600 , genişlik =  80 },
	E = {aralık =  475 , gecikme =  0.25 , hız =  2000 , genişlik =  80 },
	R = {range =  5000 , gecikme =  1.0 , hız =  2000 , genişlik =  160 },
}
- [[Orbwalker]]
İşlev  Modu ()
	eğer  _G . IOW_Loaded  ve IOW: Mode () ardından
		IOW döndürmek : Mode ()
	elseif  _G . PW_Loaded  ve PW: Mode () ardından
		dönüş PW: Mode ()
	elseif  _G . DAC_Loaded  ve DAC: Mode () ardından
		geri DAC: Mod ()
	elseif  _G . AutoCarry_Loaded  ve DACR: Mode () ardından
		geri DACR: Mod ()
	elseif  _G . SLW_Loaded  ve SLW: Mode () ardından
		geri slw: Mod ()
	elseif GoSWalkLoaded ve GoSWalk. CurrentMode  sonra
		Dönüş ({ " Birleşik " , " taciz " , " LaneClear " , " LastHit " }) [GoSWalk. Geçerli Mod + 1 ]
	son
son

- [[Kene]]
OnTick ( function ()
	Otomatik Seviye ()
	target =  GetCurrentTarget ()
			 dmgCalc ()
			 KS ()
			 Combo ()
			 Taciz ()
			 Çiftlik ()
			 AutoAB ()
			 Öğeler ()
		son )

- [[Otomatik Seviye]]
İşlev  AutoLevel ()
	eğer EzrealMenu. Otomatik Seviye . DisableAUTOMAX : Value () ardından  sona dön 
	Eğer  GetLevelPoints (myHero) >  0  sonra
		DelayAction ( function () LevelSpell (levelsc [ GetLevel (myHero) +  1  -  GetLevelPoints (myHero)]) sonu , 0.5 )
	son
son

- [[DMGCalc]]
fonksiyon  dmgCalc ( büyü )
	yerel   dmg = {
	[ " Q " ] =  35  +  20 * GetCastLevel (myHero, 0 ) +  GetBonusDmg (myHero) * 1.1  +  GetBonusAP (myHero) * 0.4 ,
	[ " W " ] =  70  +  45 * GetCastLevel (myHero, 0 ) +  GetBonusAP (myHero) * 0.8 ,
	[ " UR " ] =  350  +  150 * GetCastLevel (myHero, 0 ) +  GetBonusDmg (myHero) * 1  +  GetBonusAP (myHero) * 0.9 ,
	} 
	dönüş dmg [yazım]
son

- [[DrawDamage]]
OnDraw ( işlev ( myHero )
	için _, birim içinde  çiftleri ( GetEnemyHeroes ()) do
		eğer  ValidTarget (birim, 2000 ) ve EzrealMenu. DrawDMG . DrawD : Değer () sonra
			yerel DmgDraw = 0
			eğer  Ready (_Q) ve EzrealMenu. DrawDMG . S : Değer () sonra 
				DmgDraw =  dmgCalc ( " Q " )
			son
			eğer  Ready (_W) ve EzrealMenu. DrawDMG . W : Değer () sonra 
				DmgDraw =  dmgCalc ( " W " )
			son
			eğer  Ready (_R) ve EzrealMenu. DrawDMG . R : Değer () sonra 
				DmgDraw =  dmgCalc ( " UR " )
			son
			DmgDraw =  CalcDamage (myHero, birim, 0 , DmgDraw)
			eğer DmgDraw >  GetCurrentHP (birim) sonra 
				DmgDraw =  GetCurrentHP (birim)
			son
			DrawDmgOverHpBar (birim, GetCurrentHP (birim), 0 , DmgDraw, 0xFFC2C244 )
		son
	son
son )

- [[Ezreal Q]]
İşlev  EzrealQ ()
	eğer  GetDistance (target) < Büyüler. S . aralık  sonra
		eğer EzrealMenu. Tahmin . QPrediction : Value () ==  1  ardından
			yerel QPred =  GetLinearAOEPrediction (hedef, Büyüler. Q )
			eğer QPred. hitChance  >  0.9  sonra
				CastSkillShot (_Q, QPred. CastPos )
			son
		elseif EzrealMenu. Tahmin . QPrediction : Value () ==  2  ardından
			Yerel QPred =  GetPredictionForPlayer ( GetOrigin (myHero), hedef GetMoveSpeed (hedef), olarak söyler. S . hızı , büyü. S . gecikme * 1000 , büyü. S . aralığı , büyü. S . genişliği , doğru , yanlış )
			eğer QPred. HitChance  ==  1  sonra
				CastSkillShot (_Q, QPred. PredPos )
			son
		son
	son
son
- [[Ezreal K]]
İşlev  EzrealW ()
	eğer  GetDistance (target) < Büyüler. W . aralık  sonra
		eğer EzrealMenu. Tahmin . WPrediction : Value () ==  1  sonra
			yerel WPred =  GetPrediction (hedef, Büyüler. W )
			eğer WPred. hitChance  >  0.3  sonra
				CastSkillShot (_W, WPred. CastPos )
			son
		elseif EzrealMenu. Tahmin . WPrediction : Value () ==  2  sonra
			Yerel WPred =  GetPredictionForPlayer ( GetOrigin (myHero), hedef GetMoveSpeed (hedef), olarak söyler. W, . hızı , büyü. W, . gecikme * 1000 , büyü. W, . aralığı , büyü. W, . genişliği , yanlış , doğru )
			eğer WPred. HitChance  ==  1  sonra
				CastSkillShot (_W, WPred. PredPos )
			son	
		son
	son
son
- [[Ezreal E]]
İşlev  EzrealE ()
	yerel EPred =  GetPrediction (hedef, Büyüler. E )
	eğer EPred. hitChance  >  0.3  sonra
		CastSkillShot (_E, EPred. CastPos )
	son	
son
- [[Ezreal R]]
İşlev  EzrealR ()
	eğer EzrealMenu. Tahmin . RPrediction : Value () ==  1  sonra
		yerel RPred =  GetPrediction (hedef, Büyüler. R )
		eğer RPred. hitChance  >  0.8,  sonra
			CastSkillShot (_R, RPred. CastPos )
		son
		elseif EzrealMenu. Tahmin . RPrediction : Value () ==  2  sonra
			Yerel RPred =  GetPredictionForPlayer ( GetOrigin (myHero), hedef GetMoveSpeed (hedef), büyü. R ' . hızı . Spells R . gecikme * 1000 , büyü. R' . aralığı , büyü. R ' . genişliği , yanlış , doğru )
			eğer RPred. HitChance  ==  1  sonra
				CastSkillShot (_R, RPred. PredPos )
			son
		son
	son



- [[Birleşik]]
İşlev  Combo ()
	eğer  Modu () ==  " Combo "  sonra
- 		[[Kullanım Q]]   		
		eğer EzrealMenu. Combo . S : Değer () ve  hazır (_Q) ve  ValidTarget (hedef, olarak söyler. S . Aralığı ) , sonra
			EzrealQ ()
			son	
- 		[[W] kullan   		
		eğer EzrealMenu. Combo . W : Değeri () ve  Hazır (_W) ve  ValidTarget (. Hedef, Büyüler W . Aralık ) sonra
			EzrealW ()
			son
- 		[[E Kullan]]   		
		eğer EzrealMenu. Combo . E : Değer () sonra
			eğer  CanUseSpell (myHero, _E) == HAZIR sonra
				Eğer  ValidTarget (hedef. Spells e . aralığı + GetRange (myHero)) daha sonra
					CastSkillShot (_E, GetMousePos ())
				son
			son
		son
	son
son
- [[Ürün Kullanımı]]
işlev  Öğeler ()
	eğer  Modu () ==  " Combo "  sonra
		eğer EzrealMenu. Öğeler . BOTRK : Değer () sonra
			Eğer  GetItemSlot (myHero, 3153 ) > =  1  ve  ValidTarget (hedef, 550 ) daha sonra
				Eğer  CanUseSpell (myHero, GetItemSlot (myHero, 3153 )) daha sonra
					CastTargetSpell (hedef, GetItemSlot (myHero, 3153 ))
				son
			son
		son
		eğer EzrealMenu. Öğeler . HG : Değer () sonra
			Eğer  GetItemSlot (myHero, 3146 ) > =  1  ve  ValidTarget (hedef, 700 ) daha sonra
				Eğer  CanUseSpell (myHero, GetItemSlot (myHero, 3146 )) daha sonra
					CastTargetSpell (hedef, GetItemSlot (myHero, 3146 ))
				son
			son
		son
		eğer EzrealMenu. Öğeler . BC : Değer () sonra
			Eğer  GetItemSlot (myHero, 3144 ) > =  1  ve  ValidTarget (hedef, 550 ) daha sonra
				Eğer  CanUseSpell (myHero, GetItemSlot (myHero, 3144 )) daha sonra
					CastTargetSpell (hedef, GetItemSlot (myHero, 3144 ))
				son
			son
		son
	son
son
- [[Harass]]
İşlev  Harass ()
	eğer  Mode () ==  " Taciz "  o zaman
		eğer (. myHero mana / myHero. maxMana  > = EzrealMenu. taciz . Mana : Değer () / 100 ) sonra
-  			[[Kullanım Q]]
			eğer EzrealMenu. Taciz . S : Değer () ve  hazır (_Q) ve  ValidTarget (hedef, olarak söyler. S . Aralığı ) , sonra
				EzrealQ ()
			son
-  			[[W] kullan
			eğer EzrealMenu. Taciz . W : Değeri () ve  Hazır (_W) ve  ValidTarget (. Hedef, Büyüler W . Aralık ) sonra
				EzrealW ()
			son
		son
	son
son
- [[AutoAB]]
 AutoAB () işlevi
	eğer EzrealMenu. AutoAB . S : Değer () sonra
		eğer  100 * GetCurrentMana (myHero) / GetMaxMana (myHero) > EzrealMenu. AutoAB . Mana : Değer () sonra
			eğer  CanUseSpell (myHero, _Q) == HAZIR sonra
				Eğer  ValidTarget (hedef. Spells S . aralığı ) , sonra
					EzrealQ (hedef)
				son
			son
		son
	son
	eğer EzrealMenu. AutoAB . W : Değer () sonra
		eğer  100 * GetCurrentMana (myHero) / GetMaxMana (myHero) > EzrealMenu. AutoAB . Mana : Değer () sonra
			eğer  CanUseSpell (myHero, _W) == HAZIR sonra
				Eğer  ValidTarget (hedef. Spells W . aralığı ) , sonra
					EzrealW (hedef)
				son
			son
		son
	son
son
- [[LaneClear]]
İşlev  Farm ()
	eğer  Modu () ==  " LaneClear "  sonra
		eğer EzrealMenu. Çiftlik . S : Değer () sonra
			için _, köle içinde  çiftleri (minionManager. nesneler ) do
				Eğer  GetTeam (köle) == MINION_ENEMY sonra
					eğer  100 * GetCurrentMana (myHero) / GetMaxMana (myHero) > EzrealMenu. Çiftlik . Mana : Değer () sonra
						Eğer  ValidTarget (köle. Spells S . aralığı ) , sonra
							eğer  CanUseSpell (myHero, _Q) == HAZIR sonra
								CastSkillShot (_Q, GetOrigin (minion))
							son
						son
					son
				son
			son
		son
	son
son
- [[KillSteals]]
 KS () işlevi
	için _, düşman içinde  çiftleri ( GetEnemyHeroes ()) do
- 		[[Kullanım Q]]
		eğer EzrealMenu. KS . S : Değeri () ve  Hazır (_Q) ve  ValidTarget (düşman, olarak söyler. Q . Aralık ) sonra
			Eğer  GetCurrentHP (düşman) <  getdmg ( " S " , düşman, myHero) daha sonra
				EzrealQ ()
				son
			son
- 		[[W] kullan
		eğer EzrealMenu. KS . W : Değeri () ve  Hazır (_W) ve  ValidTarget (. Düşman, Büyüler W . Aralık ) sonra
			eğer  GetCurrentHP (düşman) <  getdmg ( " W " , düşman, myHero) sonra
				EzrealW ()
				son
			son
- 		[[Kullanım R]]
		eğer EzrealMenu. KS . R : Değeri () ve  Hazır (_R) ve  ValidTarget (düşman, olarak söyler. Ar . Aralık ) sonra
			Eğer  GetCurrentHP (düşman) <  getdmg ( " R ' " , düşman, myHero) daha sonra
				DrawText ( " Killable! " , 30 , düşman. Pos2D . X - 30 , düşman. Pos2D . Y - 40 , 0xFFFF0000 )
				EzrealR ()
				son
			son
		son
	son

- [[Çizimler]]
OnDraw ( işlev ( myHero )
	eğer benim Kahramanım. Ölü  ya da EzrealMenu. Çiz . Devre dışı : Değerini () sonra  dönmek  ucunu   
	yerel pos =  GetOrigin (myHero)
- 	[[Çizim Q]]
	eğer EzrealMenu. Çiz . S : Değer () daha sonra  DrawCircle (konum, büyü. S . Aralığı , 1 , 25 , 0xFFC2C244 ) uç
- 	[[W çiz]]
	eğer EzrealMenu. Çiz . W : Değer () daha sonra  DrawCircle (konum, büyü. W, . Aralığı , 1 , 25 , 0xFFFFFF00 ) uç
- 	[[Çizim Q]]
	eğer EzrealMenu. Çiz . D : Değer () daha sonra  DrawCircle (konum, olarak söyler. E . Aralığı , 0 , 25 , 0xFF56B107 ) ucunu
- 	[[Çizim R]]
	eğer EzrealMenu. Çiz . R : Değer () daha sonra  DrawCircle (. Pos Büyüler R . Aralığı , 0 , 25 , 0xFF56B107 ) uç
son )
© 2019 GitHub , Inc.
şartlar
Gizlilik
Güvenlik
durum
yardım et
GitHub'a Ulaşın
Fiyatlandırma
API
Eğitim
Blog
hakkında
