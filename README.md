# Các câu lệnh của git

...or create a new repository on the command line
echo "# quan_tri_du_an" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/doan-david/quan_tri_du_an.git
git push -u origin main

…or push an existing repository from the command line
git remote add origin https://github.com/doan-david/quan_tri_du_an.git
git branch -M main
git push -u origin main

git status --porcelain
