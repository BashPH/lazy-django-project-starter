#!/bin/bash
echo "Enter Project Name (no space)"
read -p "Project Name:" project_name;
echo "Enter Project Path, please use full path and dont include project name. ie /home/yansantos/Projects/BashPH"
read -p "Project Path:" project_path;

tar xf ubuntu-django-docker.tar.xz

sed -i "s/lazy_django_project_starter/$project_name/g" ubuntu-django-docker/docker-compose.yml
sed -i "s/lazy_django_project_starter/$project_name/g" ubuntu-django-docker/docker-compose-final.yml
mv ubuntu-django-docker $project_name
mkdir -p $project_path/$project_name
mv $project_name $project_path/
cd $project_path/$project_name
docker-compose run build
rm docker-compose.yml
mv docker-compose-final.yml docker-compose.yml
make build
make start

echo "Successfully created empty django project. Visit http://localhost:8000/"
echo "You can now open your new project at $project_path/$project_name"