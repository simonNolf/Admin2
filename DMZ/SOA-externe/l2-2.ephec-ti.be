$ORIGIN l2-2.ephec-ti.be.
$TTL	3600
@	    IN	    SOA	    ns.l2-2.ephec-ti.be.   root.l2-2.ephec-ti.be. (

		    1	        ; Serial
			3600		; Refresh
			600		    ; Retry
			86400		; Expire
			600 )	    ; Negative Cache TTL

;Nom de serveur faisant autoriter sur le domaine tl2-2.ephec-ti.be.
l2-2.ephec-ti.be.      IN      NS      ns.l2-2.ephec-ti.be.


;Le nom de mon serveur assigner à son IP
ns			IN	A	176.96.231.179;