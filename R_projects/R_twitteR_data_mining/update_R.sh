#replace cran.fhcrc.org with a geographically appropriate choice from the list of CRAN mirrors.

codename=$(lsb_release -c -s)
#echo "deb http://cran.fhcrc.org/bin/linux/ubuntu $codename/" | sudo tee -a /etc/apt/sources.list > /dev/null
echo "deb https://pbil.univ-lyon1.fr/CRAN/bin/linux/ubuntu $codename/" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo add-apt-repository ppa:marutter/rdev
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install r-base r-base-dev