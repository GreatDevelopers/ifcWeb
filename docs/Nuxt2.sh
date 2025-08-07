1. Login to a new user say nuxt. nuxt might be a normal user with no sudo power.
2. Download following files, in a folde (say ~/hsr, in which you wish to do the installation):
   - https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/versionCheck.sh
   - https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/nuxt.sh
   
       Make sure you are in the right folder:
       cd ~/hsr
   54  bash versionCheck.sh > Nuxt2.log
   57  bash nuxt.sh >> Nuxt2.log
   60  exit
       Open Terminal
   65  bash versionCheck.sh >> Nuxt2.log 
   67  npm create nuxt@latest bb-ds
   69  cd bb-ds/
   73  npm install @thatopen/components @thatopen/components-front @thatopen/fragments @thatopen/ui @thatopen/ui-obc

   
   71  npm run dev -- --host
   

   74  ls -trl
   75  joe ~/fileChange.txt
   
