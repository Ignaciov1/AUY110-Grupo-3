# Changelog

Todas las modificaciones notables de este proyecto serán documentadas en este archivo de acuerdo con el estándar de Versionado Semántico (SemVer).

## [1.0.0] - 2026-05-28
### Changed
- Refactorización completa de la infraestructura: se eliminó el código monolítico local.
- El repositorio ahora actúa como Orquestador Central invocando módulos externos.
- Actualización del pipeline CI/CD (`cicd.yml`) para soportar la validación OPA en recursos anidados por módulos y añadir rollback automático (Destroy) en caso de fallos.

### Removed
- Eliminación de archivos locales `vpc.tf`, `ec2.tf`, `sg-group.tf` e `iam.tf` (migrados a repositorios modulares independientes).