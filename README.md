# m6-terraform-gcp

# Iniciar backend
```
# Command
$ terraform init \
    -backend-config="bucket=<bucket>" \
    -backend-config="prefix=tf-app" \
    -backend-config="credentials=./credentials.json"
```

 https://www.terraform.io/docs/language/settings/backends/configuration.html#partial-configuration


En Cloud Shell, obtén el ID del proyecto que acabas de seleccionar:
```
$ gcloud config get-value project

# Si este comando no muestra el ID del proyecto, configura Cloud Shell para que use tu proyecto. Reemplaza PROJECT_ID por el ID del proyecto.

$ gcloud config set project PROJECT_ID
```

Habilita las API necesarias:
```
$ gcloud services enable cloudbuild.googleapis.com compute.googleapis.com

```
