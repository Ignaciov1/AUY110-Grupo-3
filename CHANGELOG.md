# Changelog
Todos los cambios notables en este proyecto serán documentados en este archivo.

## [Unreleased]
- Inicialización del repositorio. 08/04/2026 - 19:00

19:30 - Se agrego el archivo .gitignore y el CHANGELOG.md al repositorio.

20:09 - Se agrega el archivo provider.tf con su ultima version disponible.

20:13 - Se agrega el archivo vpc.tf con toda la configuracion de redes.

20:25 - Se agrega el archivo ec2.tf , el archivo iam.tf y el archivo sg-group.tf. 

20:50 - Se añadio el workflow con los archivos de prueba de seguridad de "Tflint" , "Checkov" y "Terraform Validate".

21:20 - Se verificó que el worflow funciona correctamente para poder pasar a la fase 4.

21:30 - Se añaden las últimas reglas rego para mantener la seguridad de la manera más estricta posible. Se modificó el workflow para que estas sigan el flujo. 