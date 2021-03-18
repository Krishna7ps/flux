# #!/usr/bin/env bash
# rm -f ../zipkin-helm-1.0.0.tgz && \
# helm package ../dce20-pmi-zipkin && \
# export SECRET_STRING=$(aws secretsmanager get-secret-value --secret-id sm-dce20-zipkin-DEV --query SecretString --output text --profile pmi-prod) && \
# echo $SECRET_STRING | export HTTP_BASIC_USERNAME=$(jq --raw-output .http_basic_username)
# echo $SECRET_STRING | export HTTP_BASIC_PASSWORD=$(jq --raw-output .http_basic_password) 
# echo $SECRET_STRING | export ES_USERNAME=$(jq --raw-output .es_username)
# echo $SECRET_STRING | export ES_PASSWORD=$(jq --raw-output .es_password)
# htpasswd -b -c auth $HTTP_BASIC_USERNAME $HTTP_BASIC_PASSWORD
# kubectl create secret generic zipkin-http-auth --from-file auth
# helm install zipkin-helm ./zipkin-helm-1.0.0.tgz --debug \
# --set elastic.es_username=$ES_USERNAME \
# --set elastic.es_password=$ES_PASSWORD \
# --set zipkin_ui.ui_environment=development \
# --namespace dev-dce20