#
# DynDNS Update Skript Linux v1.0 by Jonny Tutorials
#
#
#############################
###### IP-Get Services ######
#############################
#
#### IPv6 ####
#
# http://tnx.nl/ip
# https://icanhazip.com/
#
#
#### IPv4 ####
#
# https://checkip.amazonaws.com/
# https://api-ipv4.ip.sb/ip
#
#
aktuelleip=$(curl -s https://api-ipv4.ip.sb/ip) #Trage hier den IP-Get Service ein (standart Wert https://api-ipv4.ip.sb/ip)
#
#
######################
####### STRATO #######
######################
#
password='' #dein gesetztes Passwort auf Strato für dyndns
benutzer='' #deine Domain
domain='' #nochmals deine Domain
#
curl -s https://$benutzer:$password@dyndns.strato.com/nic/update?hostname=$domain&myip=$aktuelleip
