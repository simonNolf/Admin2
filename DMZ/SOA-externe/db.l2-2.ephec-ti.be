$ORIGIN l2-2.ephec-ti.be.
$TTL	3600
@	IN	SOA	ns.l2-2.ephec-ti.be.   root.l2-2.ephec-ti.be. (

	1	; Serial
	3600	; Refresh
	600	; Retry
	86400	; Expire
	600 ) ; Negative Cache TTL

;Nom de serveur faisant autoriter sur le domaine l2-2.ephec-ti.be.
@      IN      NS      ns.l2-2.ephec-ti.be.


;Le nom de mon serveur assigner à son IP
ns			IN	A	176.96.231.177;

;Server Web
b2b	IN	A	176.96.231.177;
www	IN	A	176.96.231.177;

;Server Mail
mail	IN	A	176.96.231.177;
@	IN	MX	10	mail.l2-2.ephec-ti.be;

;Server VOIP
sip	IN	A	176.96.231.177;
_sip._tcp	86400	IN	SRV	10	100	5060	sip
_sip._udp	86400	IN	SRV	10	100	5060	sip

$INCLUDE "/etc/bind/keys/l2-2.ephec-ti.be.zsk.key" ;
$INCLUDE "/etc/bind/keys/l2-2.ephec-ti.be.ksk.key" ;