cp -r ./* ~/
#ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

#CUDA

sudo apt-get update

sudo apt-get install vim,git,cuda,ros-indigo-desktop-full,screen,exuberant-ctags
