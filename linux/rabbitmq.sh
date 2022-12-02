# install 
sudo apt install rabbitmq-server -y

# enable and start
sudo systemctl enable rabbitmq-server.service 
sudo systemctl start rabbitmq-server.service
sudo rabbitmqctl status

# check and add plugins
sudo rabbitmq-plugins list
sudo rabbitmq-plugins enable rabbitmq_management
sudo cat /etc/rabbitmq/enabled_plugins

# add a user
sudo rabbitmqctl add_user $RABBITMQ_USER $RABBITMQ_PASSWORD
sudo rabbitmqctl set_user_tags $RABBITMQ_USER administrator
sudo rabbitmqctl set_permissions -p / $RABBITMQ_USER ".*" ".*" ".*"

# check available queues
sudo rabbitmqctl list_queues

# admin panel is available by
echo http://your_server_ip:15672/

# on windows need to copy .erlang.coockie
# from C:\Windows\System32\config\systemprofile
# to C:\Users\Administrator

# windows
# rabbitmq-plugins enable rabbitmq_management
# rabbitmqctl add_user %RABBITMQ_USER% %RABBITMQ_PASSWORD%
# rabbitmqctl set_user_tags %RABBITMQ_USER% administrator
# rabbitmqctl set_permissions -p / %RABBITMQ_USER% ".*" ".*" ".*"

