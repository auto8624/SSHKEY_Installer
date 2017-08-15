#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA3EnKabjZHv353JEtgmpbPz7G7kYJHYiCwnNVFZaoIjuG4HKyMgjIDlUTAdKYwg9kFPpYaMr0KgkszjENrVP5qodmjRCAQJTgVbCgX5XipwOwIAsWDY6uD24tHG0662QeUxQ0BCMkxaq4NhruqMkv0ICIMB9mVHryHpK98vpXxOcvu40AHVFLKFgW05Z6RPwESZTTuP/d4xiqOIcHFDFsScMsyS7zaM8qcOObdJRxzg5PRNDVZdk47xMuPQYCbBDqUmXQDGAWAC/5rkefLuku7r4RjNxYdfUxQgcEStE1UmYmPH12B9azCys9IyIKMVS7vHT8BKEYweWs9tdjRvlxPw== rsa-key-20170815' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
