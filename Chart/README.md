# Prerequisite:

* aws-cli command tool installed
	* aws profile configured (called pmi-prod) with permission to access AWS SM of account: dce-microservice-hub
* jq utility installed
* helm installed

# First Installation


		chmod +x install.sh
		./install.sh


# Retrieving Secrets

Keys available:
1. http_basic_username
2. http_basic_password
3. es_host
4. es_username
5. es_password
6. es_index
7. k8s_ingress_host
8. k8s_ingress_internal_dns
9. k8s_ingress_external_dns

# Uninstall


		chmod +x uninstall.sh
		./uninstall.sh


# Reinstall (Uninstall-Install)


		chmod +x reinstall.sh
		./reinstall.sh