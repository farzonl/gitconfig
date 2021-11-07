Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install  git vscode clink docker-desktop ninja cmake

pushd ~
Invoke-WebRequest https://raw.githubusercontent.com/farzonl/gitconfig/master/.gitconfig -OutFile .gitconfig
Invoke-WebRequest https://raw.githubusercontent.com/farzonl/gitconfig/master/.vimrc -OutFile .vimrc
popd
