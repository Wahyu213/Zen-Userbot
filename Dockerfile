# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Zen-Userbot ━━━━━

RUN git clone -b Zen-Userbot https://github.com/Wahyu213/zen-userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Wahyu213/Zen-userbot/Zen-userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
