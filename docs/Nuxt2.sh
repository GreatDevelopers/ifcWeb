1. Login to a new user say nuxt. nuxt might be a normal user with no sudo power.
2. Download following files, in a folder (say ~/hsr, in which you wish to do the installation):

mkdir hsr
cd hsr
wget https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/versionCheck.sh
wget https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/nuxt.sh
bash versionCheck.sh > Nuxt2.log
bash nuxt.sh >> Nuxt2.log
exit
Open Terminal
bash versionCheck.sh >> Nuxt2.log 
npm create nuxt@latest bb-ds
cd bb-ds/
npm install @thatopen/components @thatopen/components-front @thatopen/fragments @thatopen/ui @thatopen/ui-obc

mkdir pages
mkdir components
cd pages/
wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/index.vue
wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/indexRai.vue
cd ../components
wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue
cd ..
mv app/app.vue* ../


npm run dev -- --host


ls -trl
joe ~/fileChange.txt
