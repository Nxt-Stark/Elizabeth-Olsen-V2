if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Nxt-Stark/Elizabeth-Olsen-V2.git /Elizabeth-Olsen-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Elizabeth-Olsen-V2
fi
cd /Elizabeth-Olsen-V2
pip3 install -U -r requirements.txt
echo "Starting PiroAutoFilterBot...."
python3 bot.py
