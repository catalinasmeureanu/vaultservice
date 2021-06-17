
#!/usr/bin/env bash

cat > vault-server.hcl <<EOF
disable_mlock = true
ui            = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

storage "raft" {
  path = "/tmp/vault-data"
  node_id = "node "
}

api_addr = "http://10.0.1.160:8200"

cluster_addr = "http://10.0.1.160:8201"
EOF
sudo mkdir /etc/vault.d
sudo cp vault-server.hcl /etc/vault.d/vault.hcl

mkdir /tmp/vault-data

#Create Vault data directories
#sudo mkdir /etc/vault
sudo mkdir -p /var/lib/vault/data


#create user named vault

sudo useradd --system --home /etc/vault.d --shell /bin/false vault
sudo chown -R vault:vault /etc/vault.d /var/lib/vault /tmp/vault-data

#sudo chown vault:vault /etc/vault.d/vault.hcl
sudo chmod 640 /etc/vault.d/vault.hcl
sudo chmod -R 744 /tmp/vault-data


sudo curl -o /etc/systemd/system/vault.service https://raw.githubusercontent.com/catalinasmeureanu/vaultservice/main/vault.se$

sudo systemctl enable vault.service
sudo systemctl start vault.service

