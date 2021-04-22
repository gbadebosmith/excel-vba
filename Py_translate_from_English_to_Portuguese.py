from sklearn import linear_model
import numpy as np
import csv
#pip install googletrans==4.0.0rc1
from googletrans import Translator

fileNameFx = "Name.csv"
fileNameOutputFx = "Translated"+fileNameFx

"""
Number of Supported Languages: 107
{'af': 'afrikaans', 'sq': 'albanian', 'am': 'amharic', 'ar': 'arabic', 
 'hy': 'armenian', 'az': 'azerbaijani', 'eu': 'basque', 'be': 'belarusian', 
 'bn': 'bengali', 'bs': 'bosnian', 'bg': 'bulgarian', 'ca': 'catalan', 
 'ceb': 'cebuano', 'ny': 'chichewa', 'zh-cn': 'chinese (simplified)', 
 'zh-tw': 'chinese (traditional)', 'co': 'corsican', 'hr': 'croatian', 
 'cs': 'czech', 'da': 'danish', 'nl': 'dutch', 'en': 'english', 
 'eo': 'esperanto', 'et': 'estonian', 'tl': 'filipino', 'fi': 'finnish',
 'fr': 'french', 'fy': 'frisian', 'gl': 'galician', 'ka': 'georgian',
 'de': 'german', 'el': 'greek', 'gu': 'gujarati', 'ht': 'haitian creole',
 'ha': 'hausa', 'haw': 'hawaiian', 'iw': 'hebrew', 'he': 'hebrew', 
 'hi': 'hindi', 'hmn': 'hmong', 'hu': 'hungarian', 'is': 'icelandic',
 'ig': 'igbo', 'id': 'indonesian', 'ga': 'irish', 'it': 'italian',
 'ja': 'japanese', 'jw': 'javanese', 'kn': 'kannada', 'kk': 'kazakh',
 'km': 'khmer', 'ko': 'korean', 'ku': 'kurdish (kurmanji)',
 'ky': 'kyrgyz', 'lo': 'lao', 'la': 'latin', 'lv': 'latvian',
 'lt': 'lithuanian', 'lb': 'luxembourgish', 'mk': 'macedonian',
 'mg': 'malagasy', 'ms': 'malay', 'ml': 'malayalam', 'mt': 'maltese',
 'mi': 'maori', 'mr': 'marathi', 'mn': 'mongolian', 'my': 'myanmar (burmese)',
 'ne': 'nepali', 'no': 'norwegian', 'or': 'odia', 'ps': 'pashto', 'fa': 'persian',
 'pl': 'polish', 'pt': 'portuguese', 'pa': 'punjabi', 'ro': 'romanian', 'ru': 'russian',
 'sm': 'samoan', 'gd': 'scots gaelic', 'sr': 'serbian', 'st': 'sesotho', 'sn': 'shona',
 'sd': 'sindhi', 'si': 'sinhala', 'sk': 'slovak', 'sl': 'slovenian', 'so': 'somali',
 'es': 'spanish', 'su': 'sundanese', 'sw': 'swahili', 'sv': 'swedish', 'tg': 'tajik',
 'ta': 'tamil', 'te': 'telugu', 'th': 'thai', 'tr': 'turkish', 'uk': 'ukrainian',
 'ur': 'urdu', 'ug': 'uyghur', 'uz': 'uzbek', 'vi': 'vietnamese', 'cy': 'welsh',
 'xh': 'xhosa', 'yi': 'yiddish', 'yo': 'yoruba', 'zu': 'zulu'}
 """

path = "C:/path/"+fileNameFx
file = open(path, 'r', newline='\n', encoding='utf-8')
reader = csv.reader(file)
header = next(reader)  # the first line is the header
data = []

print('rowid', 'Keyword', 'EN', 'PO', 'Fr', 'Es')

for row in reader:
    row_id = row[0]
    key_word = row[1]
    e_n = row[2]
    p_o = row[3]
    f_r = row[4]
    e_s = row[5]

    x = [row_id, key_word, e_n, p_o, f_r, e_s]

    data.append(x)

# compute return path

returns_path = "C:/path/"+fileNameOutputFx
filex = open(returns_path, 'w', newline='\n', encoding='utf-8')
writer = csv.writer(filex)
writer.writerow(["row_id", "key_word", "e_n", "p_o", "f_r", "e_s"])

for i in range(0, len(data), 1):
    dataFx = data[i]
    row_id = dataFx[0]
    key_word = dataFx[1]
    e_n = dataFx[2]
    # initialize the Translator
    translator = Translator()
    p_o = translated_text = translator.translate(e_n, src="en", dest ="pt")
    p_o = translated_text.text
    f_r = dataFx[4]
    e_s = dataFx[5]
    #print(row_id, key_word, e_n, p_o, f_r, e_s)
    writer.writerow([row_id, key_word, e_n, p_o, f_r, e_s])
file.close()
filex.close()

print("finir")
