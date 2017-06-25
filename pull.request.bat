cd C:\xampp\htdocs\hoa\database.backup
git add .
git commit -m %date:~-4,4%%date:~-7,2%%date:~-10,2%
git push -u origin master
pause