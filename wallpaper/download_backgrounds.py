# download backgrounds from urls in csv file

import os
import sys
import pandas as pd

df = pd.read_csv('/home/jchad/scripts/wallpaper/backgrounds.csv', index_col=0)

for i in range(len(df)):
    url = df['url'].iloc[i]
    os.system('wget -O /tmp/wallpaper.jpg ' + url)
    os.system('cp /tmp/wallpaper.jpg /home/jchad/Pictures/Google_Backgrounds/wallpaper_' + str(i))

os.system('find -size 0 -delete')
