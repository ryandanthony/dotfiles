
#!/usr/bin/env bash
mkdir -p ~/bin/
version=1.8.1
curl -L https://github.com/laurent22/joplin/releases/download/v$version/Joplin-$version.AppImage -o ~/bin/joplin
chmod +x ~/bin/joplin
