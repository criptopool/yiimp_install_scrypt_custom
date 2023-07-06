#!/bin/bash
################################################################################ 
#
# Program:
#   Install needed Package to compile crypto currency
# 
################################################################################
    
	
function package_compile_crypto
{
    # Installing Package to compile crypto currency
    output " "
    output "Installing needed Package to compile crypto currency"
    output " "
    sleep 3

    	apt_install libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev zlib1g-dev libz-dev
	apt_install libzmq5 libseccomp-dev libcap-dev libminiupnpc-dev gettext
	if [ "${DISTRO}" == "16" ] || [ "${DISTRO}" == "18" ] || [ "${DISTRO}" == "20" ]; then

		apt_install libminiupnpc17
		sudo add-apt-repository -y ppa:bitcoin/bitcoin -qq > /dev/null 2>&1
		sudo apt -y update && sudo apt -y upgrade -qq > /dev/null 2>&1
		apt_install libdb5.3 libdb5.3++ libminiupnpc-dev
		#libdb4.8-dev libdb4.8++-dev
	else
		apt_install libminiupnpc-dev libdb5.3 libdb5.3++
	fi
    	apt_install libcanberra-gtk-module libqrencode-dev libzmq3-dev
    	apt_install libqt5gui5 libqt5core5a libqt5webkit5-dev libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
	apt_install build-essential libzmq5 libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev
	apt_install zlib1g-dev libz-dev libseccomp-dev libcap-dev libminiupnpc-dev gettext libcanberra-gtk-module libqrencode-dev libzmq3-dev
	apt_install libqt5gui5 libqt5core5a libqt5webkit5-dev libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
	hide_output sudo apt -y update && sudo apt -y upgrade > /dev/null 2>&1

	apt_install install libgmp-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev
	apt_install libpgm-dev libhidapi-dev libusb-1.0-0-dev libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev
	apt_install libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev
	apt_install python3 ccache doxygen graphviz default-libmysqlclient-dev libnghttp2-dev librtmp-dev libssh2-1 libssh2-1-dev libldap2-dev libidn11-dev libpsl-dev
}
