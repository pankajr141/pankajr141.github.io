pip install jupyter nbconvert
git clone https://github.com/pankajr141/experiments.git

# Removing .git from subrepo
rm -rf experiments/.git

# Convert ipynb to html
JUPYTER_CMD=/home/pankajr141/.local/bin/jupyter
find ./ -type f -name *.ipynb -exec $JUPYTER_CMD nbconvert --to html {} \;

# Pushing code into GIT
git config --global user.email "pankajr141@gmail.com"
git config --global user.name "Pankaj Rawat"
git add .
git commit -m "Push New changes"
git push