    1  node --version
    2  which node
    3  which npm
    4  npm --version
    5  npm create nuxt@latest bb-ds
    6  cd bb-ds/
    7  npm install @thatopen/components @thatopen/components-front @thatopen/fragments @thatopen/ui @thatopen/ui-obc
    8  ls
    9  cat nuxt.config.ts 
   10  ls
   11  cat package.json 
   12  mkdir pages
   13  cd pages/
   14  wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/index.vue
   15  cd ..
   16  cat pages/index.vue 
   17  mkdir components
   18  cd components/
   19  wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue
   20  npm run dev -- --host
   21  ls -trla */
   22  ls -trlad */
   23  cd ..
   24  ls -trlad */
   25  ls -trlad .*/
   26  rm -rf .nuxt/
   27  npm run dev -- --host
   28  history > ~/his1.txt

    1  wget https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/nuxt.sh
    2  node --version
    3  which nvm
    4  nvm --ve
    5  which npm
    6  npm --version
    7  which yarn
    8  yarn --version
    9  bash nuxt.sh 
   10  joe nuxt.txt
   11  ls -trl
   12  joe nuxt.txt 
   13  cd ..
   14  ls
   15  cd app
   16  ls
   17  joe app.vue 
   18  ls
   19  cd ..
   20  cat nuxt.config.ts 
   21  mv app/app.vue ~/
   22  joe nuxt.config.ts 


==========

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
nuxt@ho:~/bb-ds$ ls
app                node_modules    package.json       public     tsconfig.json
eslint.config.mjs  nuxt.config.ts  package-lock.json  README.md
nuxt@ho:~/bb-ds$ cat nuxt.config.ts 
// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },

  modules: [
    '@nuxt/content',
    '@nuxt/eslint',
    '@nuxt/image',
    '@nuxt/scripts',
    '@nuxt/test-utils',
    '@nuxt/ui'
  ]
})nuxt@ho:~/bb-ds$ ls
app                node_modules    package.json       public     tsconfig.json
eslint.config.mjs  nuxt.config.ts  package-lock.json  README.md
nuxt@ho:~/bb-ds$ ls node_modules/
Display all 911 possibilities? (y or n)^C
nuxt@ho:~/bb-ds$ cat package.json 
{
  "name": "nuxt-app",
  "private": true,
  "type": "module",
  "scripts": {
    "build": "nuxt build",
    "dev": "nuxt dev",
    "generate": "nuxt generate",
    "preview": "nuxt preview",
    "postinstall": "nuxt prepare"
  },
  "dependencies": {
    "@nuxt/content": "^3.6.3",
    "@nuxt/eslint": "^1.7.1",
    "@nuxt/image": "^1.11.0",
    "@nuxt/scripts": "^0.11.10",
    "@nuxt/test-utils": "^3.19.2",
    "@nuxt/ui": "^3.3.0",
    "@thatopen/components": "^3.1.1",
    "@thatopen/components-front": "^3.1.3",
    "@thatopen/fragments": "^3.1.6",
    "@thatopen/ui": "^3.1.1",
    "@thatopen/ui-obc": "^3.1.2",
    "@unhead/vue": "^2.0.14",
    "eslint": "^9.32.0",
    "nuxt": "^4.0.1",
    "typescript": "^5.9.2",
    "vue": "^3.5.18",
    "vue-router": "^4.5.1"
  }
}
nuxt@ho:~/bb-ds$ mkdir pages
nuxt@ho:~/bb-ds$ cd pages/
nuxt@ho:~/bb-ds/pages$ wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/index.vue
--2025-08-05 22:43:08--  https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/pages/index.vue
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.108.133, 185.199.111.133, 185.199.109.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 205 [text/plain]
Saving to: ‘index.vue’

index.vue           100%[===================>]     205  --.-KB/s    in 0s      

2025-08-05 22:43:09 (5.77 MB/s) - ‘index.vue’ saved [205/205]

nuxt@ho:~/bb-ds/pages$ cd ..
nuxt@ho:~/bb-ds$ cat pa
package.json       package-lock.json  pages/             
nuxt@ho:~/bb-ds$ cat pages/index.vue 
<template>
  <client-only>
    <WorldExample />
  </client-only>
</template>

<script setup lang="ts">
import WorldExample from '~/components/WorldExample.vue'

definePageMeta({
  ssr: false,
})
</script>
nuxt@ho:~/bb-ds$ mkdir components
nuxt@ho:~/bb-ds$ cd components/
nuxt@ho:~/bb-ds/components$ wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue
--2025-08-05 22:44:21--  https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.109.133, 185.199.111.133, 185.199.108.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.109.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5871 (5.7K) [text/plain]
Saving to: ‘WorldExample.vue’

WorldExample.vue    100%[===================>]   5.73K  --.-KB/s    in 0.003s  

2025-08-05 22:44:22 (2.02 MB/s) - ‘WorldExample.vue’ saved [5871/5871]

nuxt@ho:~/bb-ds/components$ npm run dev -- --host

> dev
> nuxt dev --host

Nuxt 4.0.3 with Nitro 2.12.4                                  nuxi 10:45:40 pm
                                                                   10:45:40 pm
 
              █▀▀▀▀▀▀▀███▀████▀▀█▀▀▀▀▀▀▀█
              █ █▀▀▀█ █ ▄▄██▄  ▀█ █▀▀▀█ █
              █ █   █ █▀ ▀█▀█▀ ▄█ █   █ █
              █ ▀▀▀▀▀ █ █ █ █▀▄ █ ▀▀▀▀▀ █
              █▀▀█▀██▀▀▄█▄█ ▀█▄▄█▀▀▀█▀▀██
              █▀▀▄▄▄█▀▀█▄██▀  ███ ▄▀██▀ █
              █  ▀ ▀▄▀▄▀▄ ██ ▀▀ █  █▀█▀▀█
              █▀▄ ▄▄▀▀████▀▀▄▄█ ▄▄▀█▄ █ █
              █▀ ▄  █▀  ▀█▄█▄  ▀   ▀ ▀▄██
              █▀▀▀▀▀▀▀█ ▀ ▄▀█▀▀ █▀█ ▄▄▀ █
              █ █▀▀▀█ ██▀█ █▀▄▄ ▀▀▀ ▄▄▄██
              █ █   █ █▄  ███  ▄ █▀ ▀ █▀█
              █ ▀▀▀▀▀ █ ▄ ▄█  █ ▀▀▀█▄█▀▀█
              ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
 
  ➜ Local:    http://localhost:3000/
  ➜ Network:  http://192.168.137.199:3000/ [QR code]


[@nuxt/content 10:45:42 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:45:43 pm

[@nuxt/content 10:45:43 pm] ✔ Processed 2 collections and 0 files in 62.70ms (0 cached, 0 parsed)
ℹ Nuxt Icon server bundle mode is set to local                    10:45:47 pm
✔ Vite client built in 75ms                                       10:45:50 pm
✔ Vite server built in 89ms                                       10:45:50 pm
✔ Nuxt Nitro server built in 2364ms                         nitro 10:45:52 pm
ℹ Vite client warmed up in 4ms                                    10:45:52 pm
ℹ Vite server warmed up in 82ms                                   10:45:53 pm
[10:46:35 pm] ℹ ✨ new dependencies optimized: @vue/devtools-core, @vue/devtools-kit
ℹ ✨ optimized dependencies changed. reloading                    10:46:35 pm
ℹ hmr update /app.vue                                             10:50:34 pm
[10:50:34 pm] ℹ hmr update /@fs/home/nuxt/bb-ds/node_modules/nuxt/dist/app/components/nuxt-root.vue
✔ Vite server hmr 9 files in 2.839ms                              10:50:43 pm
^C
nuxt@ho:~/bb-ds/components$ npm run dev -- --host

> dev
> nuxt dev --host

Nuxt 4.0.3 with Nitro 2.12.4                                  nuxi 10:51:01 pm
                                                                   10:51:01 pm
 
              █▀▀▀▀▀▀▀███▀████▀▀█▀▀▀▀▀▀▀█
              █ █▀▀▀█ █ ▄▄██▄  ▀█ █▀▀▀█ █
              █ █   █ █▀ ▀█▀█▀ ▄█ █   █ █
              █ ▀▀▀▀▀ █ █ █ █▀▄ █ ▀▀▀▀▀ █
              █▀▀█▀██▀▀▄█▄█ ▀█▄▄█▀▀▀█▀▀██
              █▀▀▄▄▄█▀▀█▄██▀  ███ ▄▀██▀ █
              █  ▀ ▀▄▀▄▀▄ ██ ▀▀ █  █▀█▀▀█
              █▀▄ ▄▄▀▀████▀▀▄▄█ ▄▄▀█▄ █ █
              █▀ ▄  █▀  ▀█▄█▄  ▀   ▀ ▀▄██
              █▀▀▀▀▀▀▀█ ▀ ▄▀█▀▀ █▀█ ▄▄▀ █
              █ █▀▀▀█ ██▀█ █▀▄▄ ▀▀▀ ▄▄▄██
              █ █   █ █▄  ███  ▄ █▀ ▀ █▀█
              █ ▀▀▀▀▀ █ ▄ ▄█  █ ▀▀▀█▄█▀▀█
              ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
 
  ➜ Local:    http://localhost:3000/
  ➜ Network:  http://192.168.137.199:3000/ [QR code]


[@nuxt/content 10:51:02 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:51:03 pm

[@nuxt/content 10:51:04 pm] ✔ Processed 2 collections and 0 files in 120.85ms (0 cached, 0 parsed)
ℹ Nuxt Icon server bundle mode is set to local                    10:51:04 pm
ℹ Re-optimizing dependencies because vite config has changed      10:51:08 pm
✔ Vite client built in 142ms                                      10:51:08 pm
✔ Vite server built in 114ms                                      10:51:08 pm
✔ Nuxt Nitro server built in 2854ms                         nitro 10:51:11 pm
ℹ Vite client warmed up in 5ms                                    10:51:11 pm
ℹ Vite server warmed up in 81ms                                   10:51:11 pm
[10:51:15 pm] ℹ ✨ new dependencies optimized: @vue/devtools-core, @vue/devtools-kit
ℹ ✨ optimized dependencies changed. reloading                    10:51:15 pm
[10:51:19 pm] ℹ ✨ new dependencies optimized: three, @thatopen/ui, @thatopen/components
ℹ ✨ optimized dependencies changed. reloading                    10:51:19 pm

 ERROR  [unhandledRejection] read ECONNRESET                       10:51:20 pm

    at TCP.onStreamRead (node:internal/stream_base_commons:218:20)
    at TCP.callbackTrampoline (node:internal/async_hooks:130:17)


[@nuxt/content 10:51:22 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:51:23 pm

[@nuxt/content 10:51:23 pm] ✔ Processed 2 collections and 0 files in 108.48ms (0 cached, 0 parsed)
ℹ Nuxt Icon server bundle mode is set to local                    10:51:23 pm
✔ Vite client built in 65ms                                       10:51:27 pm
✔ Vite server built in 68ms                                       10:51:27 pm
✔ Nuxt Nitro server built in 2220ms                         nitro 10:51:29 pm
ℹ Vite client warmed up in 4ms                                    10:51:29 pm
ℹ Vite server warmed up in 57ms                                   10:51:29 pm
ℹ nuxt.config.ts updated. Restarting Nuxt...                      10:52:00 pm
nuxt.config.ts updated. Restarting Nuxt...

[@nuxt/content 10:52:00 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation


[@nuxt/content 10:52:00 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:52:00 pm

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:52:00 pm

[@nuxt/content 10:52:00 pm] ✔ Processed 2 collections and 0 files in 27.42ms (0 cached, 0 parsed)
[@nuxt/content 10:52:00 pm] ✔ Processed 2 collections and 0 files in 25.43ms (0 cached, 0 parsed)
ℹ Nuxt Icon server bundle mode is set to local                    10:52:00 pm
ℹ Nuxt Icon server bundle mode is set to local                    10:52:00 pm
ℹ Re-optimizing dependencies because vite config has changed      10:52:03 pm

[10:52:03 pm]  WARN  Failed to resolve dependency: stats.js, present in client 'optimizeDeps.include'

✔ Vite client built in 160ms                                      10:52:03 pm

[10:52:03 pm]  WARN  Failed to resolve dependency: stats.js, present in client 'optimizeDeps.include'

✔ Vite client built in 79ms                                       10:52:03 pm
✔ Vite server built in 144ms                                      10:52:03 pm
✔ Vite server built in 126ms                                      10:52:03 pm
^C
nuxt@ho:~/bb-ds/components$ ls -trla */
ls: cannot access '*/': No such file or directory
nuxt@ho:~/bb-ds/components$ ls -trlad */
ls: cannot access '*/': No such file or directory
nuxt@ho:~/bb-ds/components$ cd ..
nuxt@ho:~/bb-ds$ ls -trlad */
drwxrwxr-x   2 nuxt nuxt  4096 Aug  5 22:28 public/
drwxr-xr-x 912 nuxt nuxt 36864 Aug  5 22:38 node_modules/
drwxr-xr-x   2 nuxt nuxt  4096 Aug  5 22:43 pages/
drwxr-xr-x   2 nuxt nuxt  4096 Aug  5 22:44 components/
drwxrwxr-x   2 nuxt nuxt  4096 Aug  5 22:50 app/
nuxt@ho:~/bb-ds$ ls -trlad .*/
drwxr-xr-x  3 nuxt nuxt 4096 Aug  5 22:37 .data/
drwxr-xr-x 10 nuxt nuxt 4096 Aug  5 22:52 .nuxt/
nuxt@ho:~/bb-ds$ rm -rf .nuxt/
nuxt@ho:~/bb-ds$ npm run dev -- --host

> dev
> nuxt dev --host

Nuxt 4.0.3 with Nitro 2.12.4                                  nuxi 10:53:17 pm
                                                                   10:53:17 pm
 
              █▀▀▀▀▀▀▀███▀████▀▀█▀▀▀▀▀▀▀█
              █ █▀▀▀█ █ ▄▄██▄  ▀█ █▀▀▀█ █
              █ █   █ █▀ ▀█▀█▀ ▄█ █   █ █
              █ ▀▀▀▀▀ █ █ █ █▀▄ █ ▀▀▀▀▀ █
              █▀▀█▀██▀▀▄█▄█ ▀█▄▄█▀▀▀█▀▀██
              █▀▀▄▄▄█▀▀█▄██▀  ███ ▄▀██▀ █
              █  ▀ ▀▄▀▄▀▄ ██ ▀▀ █  █▀█▀▀█
              █▀▄ ▄▄▀▀████▀▀▄▄█ ▄▄▀█▄ █ █
              █▀ ▄  █▀  ▀█▄█▄  ▀   ▀ ▀▄██
              █▀▀▀▀▀▀▀█ ▀ ▄▀█▀▀ █▀█ ▄▄▀ █
              █ █▀▀▀█ ██▀█ █▀▄▄ ▀▀▀ ▄▄▄██
              █ █   █ █▄  ███  ▄ █▀ ▀ █▀█
              █ ▀▀▀▀▀ █ ▄ ▄█  █ ▀▀▀█▄█▀▀█
              ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
 
  ➜ Local:    http://localhost:3000/
  ➜ Network:  http://192.168.137.199:3000/ [QR code]


[@nuxt/content 10:53:19 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:53:20 pm

[@nuxt/content 10:53:20 pm] ✔ Processed 2 collections and 0 files in 77.37ms (0 cached, 0 parsed)
ℹ Nuxt Icon server bundle mode is set to local                    10:53:21 pm

[10:53:24 pm]  WARN  Failed to resolve dependency: stats.js, present in client 'optimizeDeps.include'

✔ Vite client built in 96ms                                       10:53:24 pm
✔ Vite server built in 147ms                                      10:53:24 pm
✔ Nuxt Nitro server built in 2902ms                         nitro 10:53:27 pm
ℹ Vite client warmed up in 4ms                                    10:53:27 pm
ℹ Vite server warmed up in 69ms                                   10:53:27 pm
[10:53:38 pm] ℹ ✨ new dependencies optimized: @vue/devtools-core, @vue/devtools-kit
ℹ ✨ optimized dependencies changed. reloading                    10:53:38 pm

 ERROR  [unhandledRejection] read ECONNRESET                       10:53:38 pm

    at TCP.onStreamRead (node:internal/stream_base_commons:218:20)
    at TCP.callbackTrampoline (node:internal/async_hooks:130:17)


[@nuxt/content 10:53:40 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

  ➜ DevTools: press Shift + Alt + D in the browser (v2.6.2)        10:53:41 pm

[@nuxt/content 10:53:41 pm] ✔ Processed 2 collections and 0 files in 67.13ms (0 cached, 0 parsed)
ℹ Nuxt Icon server bundle mode is set to local                    10:53:42 pm
✔ Vite client built in 65ms                                       10:53:45 pm
✔ Vite server built in 64ms                                       10:53:45 pm
✔ Nuxt Nitro server built in 1882ms                         nitro 10:53:47 pm
ℹ Vite client warmed up in 4ms                                    10:53:47 pm
ℹ Vite server warmed up in 42ms                                   10:53:47 pm
^C
nuxt@ho:~/bb-ds$ history > ~/his1.txt
nuxt@ho:~/bb-ds$ joe ~/his1.txt
























^K  IW   ~/his1.txt (Modified)                                                                 Row 52   Col 1   
    1  wget https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/nuxt.sh
    2  node --version
    3  which nvm
    4  nvm --ve
    5  which npm
    6  npm --version
    7  which yarn
    8  yarn --version
    9  bash nuxt.sh 
   10  joe nuxt.txt
   11  ls -trl
   12  joe nuxt.txt 
   13  cd ..
   14  ls
   15  cd app
   16  ls
   17  joe app.vue 
   18  ls
   19  cd ..
   20  cat nuxt.config.ts 
   21  mv app/app.vue ~/
   22  joe nuxt.config.ts 

File /home/nuxt/his1.txt saved
nuxt@ho:~/bb-ds$ joe ~/his1.txt
























^K  IW   ~/his1.txt                                                                            Row 30   Col 98  
   19  wget https://raw.githubusercontent.com/GreatDevelopers/bb-ds/refs/heads/main/components/WorldExample.vue
   20  npm run dev -- --host
   21  ls -trla */
   22  ls -trlad */
   23  cd ..
   24  ls -trlad */
   25  ls -trlad .*/
   26  rm -rf .nuxt/
   27  npm run dev -- --host
   28  history > ~/his1.txt

    1  wget https://raw.githubusercontent.com/GreatDevelopers/ifcWeb/refs/heads/main/docs/nuxt.sh
    2  node --version
    3  which nvm
    4  nvm --ve
    5  which npm
    6  npm --version
    7  which yarn
    8  yarn --version
    9  bash nuxt.sh 
   10  joe nuxt.txt
   11  ls -trl
   12  joe nuxt.txt 
File /home/nuxt/his1.txt not changed so no update needed
nuxt@ho:~/bb-ds$ 
