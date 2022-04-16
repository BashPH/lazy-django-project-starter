#!/bin/bash
echo "Enter Project Name (no space)"
read -p "Project Name:" project_name;
echo "Enter Project Path, please use full path and dont include project name. ie /home/yansantos/Projects/BashPH"
read -p "Project Path:" project_path;

# copy to new dir
cp -r ubuntu-django-docker $project_name
# replace lazy_django_project_starter with project name
sed -i "s/lazy_django_project_starter/$project_name/g" $project_name/docker-compose.yml
sed -i "s/lazy_django_project_starter/$project_name/g" $project_name/docker-compose-final.yml
# create new dir from the path
mkdir -p $project_path/$project_name
# move new proj to the path
mv $project_name $project_path/
# cd's nuts
cd $project_path/$project_name
# download django
docker-compose run build
# remove old compose
rm docker-compose.yml
# move the final docker compose file
mv docker-compose-final.yml docker-compose.yml
# docker-compose build
make build
# docker-compose up
make start

echo "Successfully created empty django project. Visit http://localhost:8000/"
echo "You can now open your new project at $project_path/$project_name"