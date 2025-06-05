cd C:\logicaapp
git init
git remote add origin https://github.com/seu-usuario/logicaapp.git
git add .
git commit -m "primeiro commit"
git branch -M main
git push -u origin main


baixar repositorio da primeira vez
git clone https://github.com/seu-usuario/logicaapp.git

depois

baixar atualizações remotas
git pull

subir atualizações locais
git add .
git commit -m "quais atualizações foram feitas"
git push

para verificar alterações
git diff <nome do arquivo>