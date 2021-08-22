# get url of a random background (urls are in the csv)

import os
import sys
import pandas as pd
import random

df = pd.read_csv('/home/jchad/scripts/wallpaper/backgrounds.csv', index_col=0)
idx = random.randint(0,len(df)-1)

print(str(idx) + ' ' + df['url'].iloc[idx])

#os.system('wget -O /tmp/wallpaper.jpg ' + url)
#os.system('cp /tmp/wallpaper.jpg /home/jchad/Pictures/Google_Backgrounds/wallpaper_' + str(idx))
