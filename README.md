#cloud-int Script to create users, software install 
 userData: |
  #cloud-config
  user: ferni
  password: Atnorth3
  chpasswd:
    expire: false
  yum_repos:
    appstream:
      name: Extra Packages for Enterprise Linux - AppStream 
      baseurl: http://content.example.com/rhel9.5/x86_64/dvd/AppStream 
      enabled: true
      gpgcheck: false 
    baseos:
      name: Extra Packages for Enterprise Linux - BaseOS
      baseurl: http://content.example.com/rhel9.5/x86_64/dvd/BaseOS
      enabled: true
      gpgcheck: false 
  runcmd:
    - "curl -o /var/www/html/index.php http://utility.lab.example.com:8080/openshift4/images/index.php"
    - "dnf install -y httpd php"
    - "systemctl enable --now httpd"
