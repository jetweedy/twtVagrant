

### https://linuxhint.com/install_dot_net_core_ubuntu/

sudo apt install -y apt-transport-https
# egrep -r '^[ ^I]*[^#].*universe' /etc/apt/sources.list*
# sudo add-apt-repository universe
cd /tmp
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo apt-get install ./packages-microsoft-prod.deb
sudo apt update
sudo apt-get install -y dotnet-sdk-5.0
dotnet --version
cd /var/www
mkdir dotnet
cd dotnet

#dotnet new console -o helloworld
#cd helloworld
#dotnet run

## Download the code deb repo, possibly at "https://go.microsoft.com/fwlink/?LinkID=760868"
## sudo apt install 
sudo apt-get install -y libxshmfence-dev # Kind of randomly googled this to figure it out
dotnet new webapi -o TodoApi
cd TodoApi
dotnet add package Microsoft.EntityFrameworkCore.InMemory
code -r ../TodoApi

## ??? Trust the HTTPS development certificate
## dotnet dev-certs https --trust
## https://stackoverflow.com/questions/55485511/how-to-run-dotnet-dev-certs-https-trust

