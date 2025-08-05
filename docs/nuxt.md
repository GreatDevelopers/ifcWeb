$ tmux new -s bim
[detached (from session bim)]
$ tmux a -tbim


$ sudo adduser bimapp
New password:
Retype new password:
Enter the new value, or press ENTER for the default
        Full Name []: BIM App
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n] Y

Sudo is not needed.

Need
Vscode
node.js 20.x

$ sudo usermod -aG sudo bimapp

$ su - bimapp

Node Version Manager (NVM)
Related to Node.js

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$(basename $(curl -fsSLI -o /dev/null -w %{url_effective} https://github.com/nvm-sh/nvm/releases/latest))/install.sh | bash



# Install latest NVM (v0.39.7 as of July 2025)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

Or

 check the NVM GitHub releases page ( https://github.com/nvm-sh/nvm/releases ) for the most recent version, go for latest.

When choosing a Node.js version with NVM, always install an even-numbered, LTS version (e.g., nvm install --lts) for stability.


nvm install node      # Installs the latest version (including non-LTS)
nvm install --lts     # Installs the latest LTS (recommended)



# Load nvm into current shell (or restart terminal)
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# Add to ~/.bashrc if not already present
grep -q 'nvm.sh' ~/.bashrc || {
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
}




Tool
Minimum Version
Check Installed Version
Install Command (if missing/outdated)
curl
7.68.0
curl --version
sudo apt install -y curl
bc
1.07.1
bc --version
sudo apt install -y bc
git
2.25.0
git --version
sudo apt install -y git
build-essential
12.8
`dpkg -s build-essential
grep Version`
nvm
0.39.7+
nvm --version (after sourcing nvm)
See above
node
20.19.0
node -v
nvm install 20.19.0
npm
10.0.0+
npm -v
Comes with Node 20 via nvm
pnpm
8.15.6
pnpm -v
npm install -g pnpm@8.15.6


—

npm Node Package Manager
Pnpm Performant Node Package Manager

$ time bash ./setup-checker.sh


bimapp@ho:~$ time npm create nuxt@latest bb-ds
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

ℹ Welcome to Nuxt!                                            nuxi 7:57:38 pm
ℹ Creating a new project in bb-ds.                            nuxi 7:57:38 pm

✔ Which package manager would you like to use?
npm
◐ Installing dependencies...                                   nuxi 7:57:43 pm
npm warn deprecated node-domexception@1.0.0: Use your platform's native DOMException instead

> postinstall
> nuxt prepare


ℹ Nuxt collects completely anonymous data about usage.             8:00:11 pm
  This will help us improve Nuxt developer experience over time.
  Read more on https://github.com/nuxt/telemetry


✔ Are you interested in participating?
Yes

✔ Types generated in .nuxt                                    nuxi 8:04:39 pm

added 759 packages, and audited 761 packages in 7m

173 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
✔ Installation completed.                                     nuxi 8:04:39 pm

✔ Initialize git repository?
Yes
ℹ Initializing git repository...                              nuxi 8:04:44 pm

hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /home/bimapp/bb-ds/.git/

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
[nuxi 8:05:11 pm] ℹ The following modules are already included as dependencies of another module and will not be installed: @nuxt/fonts, @nuxt/icon
[nuxi 8:05:16 pm] ℹ Resolved @nuxt/content, @nuxt/eslint, @nuxt/image, @nuxt/scripts, @nuxt/test-utils, @nuxt/ui, adding modules...
[nuxi 8:05:16 pm] ℹ Installing @nuxt/content@3.6.3, @nuxt/eslint@1.7.1, @nuxt/image@1.10.0, @nuxt/scripts@0.11.10, @nuxt/test-utils@3.19.2, @nuxt/ui@3.3.0 as dependencies

added 486 packages, removed 3 packages, changed 1 package, and audited 1244 packages in 4m

374 packages are looking for funding
  run `npm fund` for details

2 high severity vulnerabilities

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.

added 3 packages, and audited 1247 packages in 5s

375 packages are looking for funding
  run `npm fund` for details

2 high severity vulnerabilities

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.
ℹ Adding @nuxt/content to the modules                         nuxi 8:08:55 pm
ℹ Adding @nuxt/eslint to the modules                          nuxi 8:08:55 pm
ℹ Adding @nuxt/image to the modules                           nuxi 8:08:55 pm
ℹ Adding @nuxt/scripts to the modules                         nuxi 8:08:55 pm
ℹ Adding @nuxt/test-utils to the modules                      nuxi 8:08:55 pm
ℹ Adding @nuxt/ui to the modules                              nuxi 8:08:55 pm

[@nuxt/content 8:08:57 pm]  WARN  No content configuration found, falling back to default collection. In order to have full control over your collections, create the config file in project root. See: https://content.nuxt.com/docs/getting-started/installation

[8:08:57 pm] ✔ ESLint config file created at /home/bimapp/bb-ds/eslint.config.mjs
[8:08:57 pm] ℹ If you have .eslintrc or .eslintignore files, you might want to migrate them to the new config file

[@nuxt/content 8:08:58 pm]  ERROR  Nuxt Content requires better-sqlite3 module to operate.


✔ Do you want to install `better-sqlite3` package?
Yes

added 38 packages in 3s

9 packages are looking for funding
  run `npm fund` for details
ℹ Nuxt Icon server bundle mode is set to local                     8:09:11 pm
✔ Types generated in bb-ds/.nuxt                              nuxi 8:09:13 pm
                                                               nuxi 8:09:13 pm
✨ Nuxt project has been created with the v4 template. Next steps:
 › cd bb-ds                                                    nuxi 8:09:13 pm
 › Start development server with npm run dev                   nuxi 8:09:13 pm



 yarn dev --host


real	11m43.256s
user	4m9.317s
sys	0m22.871s




 Initializing git repository...                                                  nuxi 3:47:34 PM

hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint:
hint:   git config --global init.defaultBranch main
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m main
Initialized empty Git repository in /home/bimapp/bb-ds/.git/


✨ Nuxt project has been created with the v4 template. Next steps:
 › cd bb-ds                                                                        nuxi 4:01:16 PM
 › Start development server with npm run dev


 yarn dev --host
 npm run dev -- --host

After dev two -
And before host two -

https://www.npmjs.com/org/thatopen

has

@thatopen/components
Collection of core functionalities to author BIM apps.
@thatopen/components-front
Collection of frontend tools to author BIM apps.
@thatopen/fragments
Simple geometric system built on top of Three.js to display 3D BIM data efficiently.
@thatopen/ui
Collection of web components (UI components) meant to be used, but not limited to, BIM applications.
@thatopen/ui-obc
Collection of web components (UI components) implementations to use with @thatopen/components.

 yarn dev --host
