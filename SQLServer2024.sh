Installation and Uninstallation of SQL Server 2017 in Ubuntu 16.4
File Name:SQLServer2017.sh
Installation of SQL Server :
1)curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
2)sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
3)sudo apt-get update
  sudo apt-get install -y mssql-server
4)sudo /opt/mssql/bin/mssql-conf setup
5)systemctl status mssql-server

Installation of SQL server Command Line Tools:

1)curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
2)sudo add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
3)sudo apt-get update
  sudo apt-get install -y mssql-tools unixodbc-dev
4)echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
  echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
  source ~/.bashrc
5)sqlcmd -S localhost -U SA -P '<Set your password>'

Check SQL Server Version::
1) sqlcmd -S localhost -U SA -Q 'select @@VERSION'

Uninstallation of SQL Server from Ubuntu 16.4

1) sudo apt-get remove mssql-server

Remove Folder:

1)pwd
2)ls
3)su
4)Enter the password
5)cd /opt
6)ls
7)rm -rf microsoft
8)cd ..
9)ls
10)clear
11)pwd
