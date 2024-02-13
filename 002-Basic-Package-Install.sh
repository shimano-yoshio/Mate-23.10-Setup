# Dist upgrade
sudo apt update

# Linux kernel header
sudo apt -y install linux-headers-$(uname -r)

# Development Toolsa
sudo apt -y install build-essential cmake make ninja-build bison llvm autoconf

# Libraries for development
# Text
sudo apt -y install dkms libreadline-dev libreadline6-dev  libyaml-dev libxml2-dev libxslt1-dev libncurses5-dev

# Databese sqlite
sudo apt -y install libsqlite3-dev sqlite3

# Compress
sudo apt -y install zlib1g-dev libbz2-dev zlib1g-dev

# Network
sudo apt -y install  libssl-dev

# GUI
sudo apt -y install tk-dev libgmp3-dev

# Computation
sudo apt -y install libfreetype6-dev libblas-dev liblapack-dev gfortran

