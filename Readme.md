# Compte rendu : 

## Question 4

Tous les containers que nous avons dans le compose :
- La base de données MySQL (db)
- Le back en Quarkus (back)
- Le front en angular (front)
- Le mailer (mail)
- Le gestionnaire de pad (etherpad)
- PhpMyAdmin pour avoir un accès visuel aux données(myadmin)

## Question 5 : Mise en place du déploiement continue

https://levelup.gitconnected.com/automated-deployment-using-docker-github-actions-and-webhooks-54018fc12e32
Lancer cette ligne de commande depuis la VM :
webhook ./webHooks/hooks.json -verbose
Mise en place de webhooks pour le redéploiement disponible dans webHooks/hooks.json

## Question 6 : Mise en place Grafana & Prometheus

https://medium.com/ouidou/un-monitoring-complet-en-quelques-minutes-avec-prometheus-33e849e6392e
On ajoute un container Prometheus et un container Grafana
Prometheus permet de récupérer des Metrics
Grafana permet de faire un affichage en Dashboard