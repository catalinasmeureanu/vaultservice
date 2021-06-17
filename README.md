# How to use this repo

- copy sc.sh
- chmod +x sc.sh
- check vault service is running

systemctl status vault.service

Output: 

```

● vault.service - "HashiCorp Vault - A tool for managing secrets"
   Loaded: loaded (/etc/systemd/system/vault.service; enabled; vendor preset: enabled)
   Active: active (running) since Thu 2021-06-17 07:51:19 UTC; 22s ago
     Docs: https://www.vaultproject.io/docs/
 Main PID: 5264 (vault)
    Tasks: 8 (limit: 4617)
   CGroup: /system.slice/vault.service
           └─5264 /usr/local/bin/vault server -config=/etc/vault.d/vault.hcl

Jun 17 07:51:20 ip-10-0-3-239 vault[5264]:                Log Level: info
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]:                    Mlock: supported: true, enabled: false
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]:            Recovery Mode: false
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]:                  Storage: raft (HA available)
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]:                  Version: Vault v1.7.0+ent
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]:              Version Sha: f45845666b4e552bfc8ca775834a3ef6fc097fe0
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]: ==> Vault server started! Log data will stream in below:
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]: 2021-06-17T07:51:20.030Z [INFO]  proxy environment: http_proxy= https_proxy= no_proxy=
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]: 2021-06-17T07:51:20.067Z [INFO]  replication.perf.logshipper: Initializing new log shipper: max_elements=16384 max_by
Jun 17 07:51:20 ip-10-0-3-239 vault[5264]: 2021-06-17T07:51:20.067Z [INFO]  replication.dr.logshipper: Initializing new log shipper: max_elements=16384 max_byte


```
