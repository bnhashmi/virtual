#cloud-int Script to create users, software install 
 userData: |
  #cloud-config
  user: ferni
  password: Atnorth3
  chpasswd:
    expire: false
  ssh_authorized_keys:
    - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGtUW3ismHyuCW4CDdTVOOOq6aySdtYenXFWWx7HJa4VTepkG00aaLId9ocra10hc+MB0GTJMCyabDv3i8NKdi6GDH/aOLVsp/Ewy8DEzZMBlJDCt4v2i4/wU4liw6KgEFkZs+5hnqU8d4QzldyGJ5onr+AGvFOKG68CS0BBl40Z1twf1HhCyx8k6nzD2ovlkxWRFZKPAFrtPCBVvQDkOfVFZF+lwzaSztgAjbFZ4A9jqQyUYx4kOJ5DtRef36ucdUdVQale0+8lICl7/gb142SPpYfhxe88/BJScLPRjvVNeu1TxRmoHtVazqnAoRxQYAn2MoI6AG+w6QuZf8f7aL LabGradingKey
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
