#!/bin/sh
#
# DynDNS Update Skript Linux v1.0 by Jonny Tutorials
# https://github.com/jonnytutorials/Strato-dyndns-linux/
#

#############################
###### IP-Get Services ######
#############################

#### IPv4 / IPv6 ####

# ifconfig.co
# icanhazip.com


#### only IPv4 ####

# api-ipv4.ip.sb/ip
# ifconfig.me
# checkip.amazonaws.com


IP=$(curl -s https://api-ipv4.ip.sb/ip) #Trage hier den IP-Get Service ein (standart Wert https://api-ipv4.ip.sb/ip)


######################
###### Settings ######
######################

PASSWORD='' # gesetztes Passwort für dyndns
USER='' # Domain
DOMAIN='' # Domain

curl -s https://$USER:$PASSWORD@dyndns.strato.com/nic/update?hostname=$DOMAIN&myip=$IP
