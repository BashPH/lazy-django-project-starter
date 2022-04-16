# Lazy Django Project Starter

### Lazy Django Project starter is a small project for creating a new django project with docker and postgres in Ubuntu automatically.


To start, make sure you have git and docker installed, then clone this repository 

```shell
git clone git@github.com:BashPH/lazy-django-project-starter.git
```
Then cd to the lazy-django-project-starter directory.

Ensure that create.sh is executable by running below command

```shell
sudo chmod +x create.sh
```

Then run the script

```shell
./create
```

This will ask you to enter your project name (no space), it is recommended to use PascalCase when naming the project, ie **RestApi**

Next you will need to fill in the path where you want your new project to reside, ie **/home/yansantos/Projects/BashPH**

Once you press enter, it will start creating the new project directory.

In the example above, it will create new project in /home/yansantos/Projects/BashPH/RestApi.

Once the setup is done, it will start automatically and you can visit your freshly created django project in http://localhost:8000/

The files django-admin created are owned by root, we now want to change it to current user by running below command in root directory

```shell
sudo chown -R $USER:$USER .
```

What is inside the newly created Project
![image](https://user-images.githubusercontent.com/34324691/163657190-6eb478b1-90f7-47c9-8edf-dc92c26605ee.png)



