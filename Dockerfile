from ubuntu

workdir /root

run apt update; apt install nmap ncat iproute2 python3-pip micro curl ranger git -y --force-yes
run wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
run chmod +x ./dotnet-install.sh; ./dotnet-install.sh --version latest; ./dotnet-install.sh --version latest --runtime aspnetcore

env PATH="${PATH}:/root/.dotnet/"
env DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
