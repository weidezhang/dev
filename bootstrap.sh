cp -r ./* ~/
#ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

#CUDA

sudo apt-get update

sudo apt-get install vim,git,ros-indigo-desktop-full,screen,exuberant-ctags

#Install docker 
sudo apt-get install apt-transport-https ca-certificates

sudo apt-key adv \
	               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
				   --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list 

sudo apt-get update

sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo reboot

