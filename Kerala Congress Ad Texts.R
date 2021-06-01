library(tesseract)
library(quanteda)
library(ggplot2)
library(dslabs)
if(is.na(match("hin", tesseract_info()$available))) tesseract_download("hin")
hin <- tesseract("hin")
eng <- tesseract("eng")

#Sample set of ads with Hindi text
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/168565304095241.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/243650359807244.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/250661195779041.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/274408200106679.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/275754296646100.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/277223726498810.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/282135935834941.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/283644765908600.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/284471749166874.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/308203143189449.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/315507612455689.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/316595619009593.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/316942372322661.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/317379038942236.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/326994164631380.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/332488430953531.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333420184042601.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333445824027482.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333521624189005.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/334918063749866.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/338947346755283.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/345568999403710.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/353658071939885.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/353867191901753.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/368647547086405.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/370432037013637.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/372189790054537.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/374341623168184.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/381069149164933.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/381806805751592.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/386721528723997.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/396226861220513.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/396546037600688.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/397293464459295.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/399111954260981.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/410906513069234.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/414264209307358.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/415210622409194.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/417050705752846.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/419278968864822.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/427015684742703.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/428533941291765.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/428695504573776.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/435973167161286.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/437228907049917.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/437643860335129.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/439623243455053.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/448124492398254.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/451223605620202.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/465438233995397.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/513000759231998.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/554441715083672.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/568976850280287.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/571691063315774.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/574890929587443.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/585688781945094.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/588798228301834.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/596767480798653.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/605339383316469.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/607429883059295.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/616835528783969.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/646716819108949.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/648858628922347.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/650547302059700.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/683810062035818.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/802257763506891.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/809013689471989.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/821429698221769.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/829317954115210.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/837278439963618.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/847501962249168.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/855336648147543.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/856781647988936.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/859194404421156.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/884389895239113.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/1020404051681370.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/1991871020921250.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2107633862606480.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2170880756556600.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2180875272009300.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2288166234777320.jpg", engine = hin)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2368004273230150.jpg", engine = hin)




#Sample ads with english text 
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/248245869443408.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/252837355594021.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/259586904965872.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/263307341255301.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/291975194812961.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/300621067316452.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/303723603829773.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/308393213154426.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/308557383146512.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/316391559016515.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/317264939138170.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/319174032278450.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/320897145439050.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/327450167915330.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333318100860253.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/336314850321273.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/347111806013176.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/353648975487372.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/371425126775358.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/376814352870876.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/385407698938385.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/388598401700517.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/397223804376856.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/404146113679448.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/404206186823872.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/405987703277941.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/407314336708734.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/420075032093693.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/541047883052428.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/569383453582355.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/634018867057759.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/670176183435404.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/725798557817262.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/757023081322407.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/783793708651587.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/805903646409107.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/832278360449626.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/943185489405823.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/983020892086147.jpg", engine = eng)
tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/1166269346878040.jpg", engine = eng)


Hindi_text <- c(tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/168565304095241.jpg", engine = hin), 
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/243650359807244.jpg", engine = hin), 
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/250661195779041.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/274408200106679.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/275754296646100.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/277223726498810.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/282135935834941.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/283644765908600.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/284471749166874.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/308203143189449.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/315507612455689.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/316595619009593.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/316942372322661.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/317379038942236.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/326994164631380.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/332488430953531.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333420184042601.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333445824027482.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333521624189005.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/334918063749866.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/338947346755283.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/345568999403710.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/353658071939885.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/353867191901753.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/368647547086405.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/370432037013637.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/372189790054537.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/374341623168184.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/381069149164933.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/381806805751592.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/386721528723997.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/396226861220513.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/396546037600688.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/397293464459295.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/399111954260981.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/410906513069234.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/414264209307358.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/415210622409194.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/417050705752846.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/419278968864822.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/427015684742703.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/428533941291765.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/428695504573776.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/435973167161286.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/437228907049917.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/437643860335129.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/439623243455053.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/448124492398254.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/451223605620202.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/465438233995397.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/513000759231998.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/554441715083672.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/568976850280287.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/571691063315774.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/574890929587443.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/585688781945094.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/588798228301834.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/596767480798653.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/605339383316469.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/607429883059295.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/616835528783969.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/646716819108949.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/648858628922347.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/650547302059700.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/683810062035818.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/802257763506891.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/809013689471989.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/821429698221769.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/829317954115210.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/837278439963618.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/847501962249168.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/855336648147543.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/856781647988936.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/859194404421156.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/884389895239113.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/1020404051681370.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/1991871020921250.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2107633862606480.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2170880756556600.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2180875272009300.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2288166234777320.jpg", engine = hin),
                tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/2368004273230150.jpg", engine = hin))

Hindi_text <- tokens(Hindi_text, remove_numbers = TRUE, remove_punct = TRUE, 
                     remove_symbols = TRUE, remove_separators = TRUE, 
                     split_hyphens = TRUE, remove_url = TRUE)

dfmhindi <- dfm(Hindi_text) %>% 
        dfm_trim(min_termfreq = 5)

hindiwords_dfm <- textstat_frequency(dfmhindi)
features_words_dfm <- hindiwords_dfm$feature

ds_theme_set()
ggplot(hindiwords_dfm, aes(x = feature, y = frequency)) + 
  geom_point() + 
  xlab("words") +
  geom_text(aes(label=paste(frequency)), size = 2.5, nudge_y =1) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = -0.00001)) + 
  ggtitle("Frequency Plot for BJP Ads - Hindi Text")

english_text <- c(tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/248245869443408.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/252837355594021.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/259586904965872.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/263307341255301.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/291975194812961.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/300621067316452.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/303723603829773.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/308393213154426.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/308557383146512.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/316391559016515.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/317264939138170.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/319174032278450.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/320897145439050.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/327450167915330.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/333318100860253.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/336314850321273.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/347111806013176.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/353648975487372.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/371425126775358.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/376814352870876.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/385407698938385.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/388598401700517.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/397223804376856.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/404146113679448.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/404206186823872.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/405987703277941.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/407314336708734.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/420075032093693.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/541047883052428.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/569383453582355.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/634018867057759.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/670176183435404.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/725798557817262.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/757023081322407.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/783793708651587.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/805903646409107.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/832278360449626.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/943185489405823.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/983020892086147.jpg", engine = eng),
                  tesseract::ocr("C:/Users/Suhaas Ramani/Desktop/Kerala Text Ads/1166269346878040.jpg", engine = eng))

english_text <- tokens(english_text, remove_numbers = TRUE, remove_punct = TRUE, 
                     remove_symbols = TRUE, remove_separators = TRUE, 
                     split_hyphens = TRUE, remove_url = TRUE)

english_text <- tokens_select(english_text, names(data_int_syllables))

dfmenglish <- dfm(english_text) %>% 
  dfm_trim(min_termfreq = 5)

englishwords_dfm <- textstat_frequency(dfmenglish)
features_words_dfm <- englishwords_dfm$feature

ds_theme_set()
ggplot(englishwords_dfm, aes(x = feature, y = frequency)) + 
  geom_point() + 
  xlab("words") +
  geom_text(aes(label=paste(frequency)), size = 2.5, nudge_y =3) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = -0.00001)) + 
  ggtitle("Frequency Plot for BJP Ads - English Text")