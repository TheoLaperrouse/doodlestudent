# !/bin/sh
# https://levelup.gitconnected.com/automated-deployment-using-docker-github-actions-and-webhooks-54018fc12e32
#On close l'appli
#lancer webhook -hooks /my/path/to/hooks/hooks.json -verbose
docker-compose down
docker-compose rm -f
#On récupère la MAJ
docker system prune -f
git pull
#On build les images
docker-compose build
#Et on relance l'appli
docker-compose up
exit 0