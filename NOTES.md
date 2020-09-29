Web deploy
==========

* Build website in /build/web
flutter build web

* Deploy
cd build/web
git init
git remote add origin https://github.com/dave/groupshare.git
git checkout -b deploy
git add .
git commit -m "build"
git push --set-upstream origin deploy --force

* Use
https://dave.github.io/groupshare/
