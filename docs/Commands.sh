    1  wget https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/nuxt.sh
    9  bash nuxt.sh 
    5  npm create nuxt@latest bb-ds

    6  cd bb-ds/
    7  npm install @thatopen/components @thatopen/components-front @thatopen/fragments @thatopen/ui @thatopen/ui-obc
    9  cat nuxt.config.ts // add lined to this file
   12  mkdir pages
   13  cd pages/
   14  wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/index.vue
   15  cd ..
   17  mkdir components
   18  cd components/
   19  wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue
   15  cd ~/bb-ds/app
   17  joe app.vue 
   19  cd ..
   21  mv app/app.vue ~/
   20  npm run dev -- --host   
   23  cd ..
   26  rm -rf .nuxt/
   27  npm run dev -- --host


==========
cd ~/bb-ds
nuxt@ho:~/bb-ds$ cat package.json // see if it needed to be amended

===============

  ➜ Local:    http://localhost:3000/
  ➜ Network:  http://192.168.137.199:3000/ [QR code]


[@nuxt/content 10:45:42 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation


nuxt@ho:~$ npm create nuxt@latest bb-ds
Need to install the following packages:
create-nuxt@3.27.0
Ok to proceed? (y) 


> npx
> create-nuxt bb-ds


        .d$b.
       i$$A$$L  .d$b
     .$$F` `$$L.$$A$$.
    j$$'    `4$$:` `$$.
   j$$'     .4$:    `$$.
  j$$`     .$$:      `4$L
 :$$:____.d$$:  _____.:$$:
 `4$$$$$$$$P` .i$$$$$$$$P`

ℹ Welcome to Nuxt!                                           nuxi 10:28:01 pm
ℹ Creating a new project in bb-ds.                           nuxi 10:28:01 pm

✔ Which package manager would you like to use?
npm
◐ Installing dependencies...                                  nuxi 10:28:30 pm
npm warn deprecated node-domexception@1.0.0: Use your platform's native DOMException instead

> postinstall
> nuxt prepare


ℹ Nuxt collects completely anonymous data about usage.            10:31:16 pm
  This will help us improve Nuxt developer experience over time.
  Read more on https://github.com/nuxt/telemetry


✔ Are you interested in participating?
No

✔ Types generated in .nuxt                                   nuxi 10:31:30 pm

added 769 packages, and audited 771 packages in 3m

174 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
✔ Installation completed.                                    nuxi 10:31:30 pm

✔ Initialize git repository?
No

✔ Would you like to install any of the official modules?
Yes

✔ Pick the modules to install:
@nuxt/content – The file-based CMS with support for Markdown, YAML, JSON,
@nuxt/eslint – Project-aware, easy-to-use, extensible and future-proof ESLint
integration, @nuxt/fonts – Add custom web fonts with performance in mind,
@nuxt/icon – Icon module for Nuxt with 200,000+ ready to use icons from Iconify,
@nuxt/image – Add images with progressive processing, lazy-loading, resizing and
providers support, @nuxt/scripts – Add 3rd-party scripts without sacrificing
performance, @nuxt/test-utils – Test utilities for Nuxt, @nuxt/ui – The
Intuitive UI Library powered by Reka UI and Tailwind CSS
[nuxi 10:32:11 pm] ℹ The following modules are already included as dependencies of another module and will not be installed: @nuxt/fonts, @nuxt/icon
[nuxi 10:32:14 pm] ℹ Resolved @nuxt/content, @nuxt/eslint, @nuxt/image, @nuxt/scripts, @nuxt/test-utils, @nuxt/ui, adding modules...
[nuxi 10:32:14 pm] ℹ Installing @nuxt/content@3.6.3, @nuxt/eslint@1.7.1, @nuxt/image@1.11.0, @nuxt/scripts@0.11.10, @nuxt/test-utils@3.19.2, @nuxt/ui@3.3.0 as dependencies

added 477 packages, removed 3 packages, changed 1 package, and audited 1245 packages in 5m

375 packages are looking for funding
  run `npm fund` for details

2 high severity vulnerabilities

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.

added 3 packages, and audited 1248 packages in 13s

376 packages are looking for funding
  run `npm fund` for details

2 high severity vulnerabilities

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.
ℹ Adding @nuxt/content to the modules                        nuxi 10:37:09 pm
ℹ Adding @nuxt/eslint to the modules                         nuxi 10:37:09 pm
ℹ Adding @nuxt/image to the modules                          nuxi 10:37:09 pm
ℹ Adding @nuxt/scripts to the modules                        nuxi 10:37:09 pm
ℹ Adding @nuxt/test-utils to the modules                     nuxi 10:37:09 pm
ℹ Adding @nuxt/ui to the modules                             nuxi 10:37:09 pm

[@nuxt/content 10:37:11 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

[10:37:11 pm] ✔ ESLint config file created at /home/nuxt/bb-ds/eslint.config.mjs
[10:37:11 pm] ℹ If you have .eslintrc or .eslintignore files, you might want to migrate them to the new config file

[@nuxt/content 10:37:12 pm]  ERROR  Nuxt Content requires better-sqlite3 module to operate.


✔ Do you want to install `better-sqlite3` package?
Yes

added 38 packages in 11s

9 packages are looking for funding
  run `npm fund` for details
ℹ Nuxt Icon server bundle mode is set to local                    10:37:34 pm
✔ Types generated in bb-ds/.nuxt                             nuxi 10:37:36 pm
                                                              nuxi 10:37:36 pm
✨ Nuxt project has been created with the v4 template. Next steps:
 › cd bb-ds                                                   nuxi 10:37:36 pm
 › Start development server with npm run dev                  nuxi 10:37:36 pm
nuxt@ho:~$ cd bb-ds/
nuxt@ho:~/bb-ds$ npm install @thatopen/components @thatopen/components-front @thatopen/fragments @thatopen/ui @thatopen/ui-obc

added 31 packages, and audited 1279 packages in 37s

379 packages are looking for funding
  run `npm fund` for details

2 high severity vulnerabilities

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.
