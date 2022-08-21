$ORIGIN l2-2.ephec-ti.be.
$TTL	3600
@	IN	SOA	ns.l2-2.ephec-ti.be.   root.l2-2.ephec-ti.be. (

    2022061457 ; serial
    21600      ; refresh after 6 hours
    3600       ; retry after 1 hour
	1814000     ; expire after 3 week
	86400 )    ; minimum TTL of 1 day

;Nom de serveur faisant autoriter sur le domaine l2-2.ephec-ti.be.
@      IN      NS      ns.l2-2.ephec-ti.be.


;Le nom de mon serveur assigner à son IP
ns			IN	A	188.166.60.206;

;Server Web
b2b	IN	A	188.166.60.206;
www	IN	A	188.166.60.206;

;Server Mail
mail	IN	A	188.166.60.206;
@	IN	MX	10	mail;
@	IN 	TXT 	"v=spf1 ip4:188.166.60.206 -all";
;_dmarc          IN  TXT "v=DMARC1; p=none; pct=100; rua=mailto:dmarc-reports@l2-2.ephec-ti.be"

;Server VOIP
sip	IN	A	188.166.60.206;
_sip._tcp	86400	IN	SRV	10	100	5060	sip
_sip._udp	86400	IN	SRV	10	100	5060	sip
