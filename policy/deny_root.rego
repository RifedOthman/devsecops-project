package main

deny[msg] {
  input.spec.template.spec.containers[_].securityContext.runAsUser == 0
  msg := "Erreur : le container ne doit pas tourner en tant que root (runAsUser: 0)"
}
