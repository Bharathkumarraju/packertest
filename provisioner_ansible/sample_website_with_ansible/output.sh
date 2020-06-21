bharathkumarraju@R77-NB193 sample_website_with_ansible % packer build ubuntu.json
amazon-ebs: output will be in this color.

==> amazon-ebs: Prevalidating any provided VPC information
==> amazon-ebs: Prevalidating AMI Name: ubuntu-1592723850
    amazon-ebs: Found Image ID: ami-04781752c9b20ea41
==> amazon-ebs: Creating temporary keypair: packer_5eef098a-b8f7-ce6a-2770-6bf768223783
==> amazon-ebs: Creating temporary security group for this instance: packer_5eef0991-1517-49f4-822f-ba4f60732622
==> amazon-ebs: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> amazon-ebs: Launching a source AWS instance...
==> amazon-ebs: Adding tags to source instance
    amazon-ebs: Adding tag: "Name": "Packer Builder"
    amazon-ebs: Instance ID: i-0e214eed185ff29cb
==> amazon-ebs: Waiting for instance (i-0e214eed185ff29cb) to become ready...
==> amazon-ebs: Using ssh communicator to connect: 13.59.78.165
==> amazon-ebs: Waiting for SSH to become available...
==> amazon-ebs: Connected to SSH!
==> amazon-ebs: Provisioning with Ansible...
    amazon-ebs: Setting up proxy adapter for Ansible....
==> amazon-ebs: Executing Ansible: ansible-playbook -e packer_build_name=amazon-ebs -e packer_builder_type=amazon-ebs -e packer_http_addr=ERR_HTTP_ADDR_NOT_IMPLEMENTED_BY_BUILDER --ssh-extra-args '-o IdentitiesOnly=yes' --extra-vars ansible_python_interpreter=/usr/bin/python3 -e ansible_ssh_private_key_file=/var/folders/_s/plvslww5221_yy42vhrx557w0000gp/T/ansible-key899923277 -i /var/folders/_s/plvslww5221_yy42vhrx557w0000gp/T/packer-provisioner-ansible156163144 /Users/bharathkumarraju/external/packertest/provisioner_ansible/sample_website_with_ansible/nginx.yml
    amazon-ebs:
    amazon-ebs: PLAY [all] *********************************************************************
    amazon-ebs:
    amazon-ebs: TASK [Gathering Facts] *********************************************************
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Install Required Debian and Ubuntu Dependencies] ***
    amazon-ebs: /usr/local/Cellar/ansible/2.9.9/libexec/lib/python3.8/site-packages/netaddr/strategy/__init__.py:189: SyntaxWarning: "is not" with a literal. Did you mean "!="?
    amazon-ebs:   if word_sep is not '':
    amazon-ebs: changed: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install Extra Package(s)] ************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install Extra Port(s)] ***************
    amazon-ebs: skipping: [default] => (item=security/ca_root_nss)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: APT OSs) Set Default APT NGINX Signing Key URL] ***
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: APT OSs) Set APT NGINX Signing Key URL] *******
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: APT OSs) Add APT NGINX Signing Key] ***********
    amazon-ebs: changed: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: RPM OSs) Set Default RPM NGINX Signing Key] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: RPM OSs) Set RPM NGINX Signing Key URL] *******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: RPM OSs) Add RPM NGINX Signing Key] ***********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: APK OSs) Set Default APK NGINX Signing Key URL] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: APK OSs) Set APK NGINX Signing Key URL] *******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: APK OSs) Download NGINX Signing Key] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Alpine) Set Default APK NGINX Repository] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Alpine) Set APK NGINX Repository] *************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Alpine) Add NGINX Repository] *****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Alpine) Install Required Alpine Dependencies] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Alpine) Install NGINX] ************************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Set Default APT NGINX Repository] ***
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Set APT NGINX Repository] ******
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Add NGINX Repository] **********
    amazon-ebs: changed: [default] => (item=deb [arch=amd64] https://nginx.org/packages/mainline/ubuntu/ xenial nginx)
    amazon-ebs: changed: [default] => (item=deb-src [arch=amd64] https://nginx.org/packages/mainline/ubuntu/ xenial nginx)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Install NGINX] *****************
    amazon-ebs: changed: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat) Set Default YUM NGINX Repository] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat) Set YUM NGINX Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat) Add NGINX Repository] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat) Install Required CentOS/RedHat Dependencies] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat) Install NGINX] *****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: SUSE) Set Default SUSE NGINX Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: SUSE) Set SUSE NGINX Repository] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: SUSE) Add NGINX Repository] *******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: SUSE) Install NGINX] **************************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install Python - Centos/RHEL] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Set Python3 default - Centos/RHEL] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install Build Tools - Centos/RHEL] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install backports repo for Buster] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install Build Tools - Debian/Ubuntu] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install Build Tools - Alpine] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Enable openrc - Alpine] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Check for PCRE Install] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Check for zlib Install] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Check for openssl Install] *************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Package: Centos/RHEL] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Package: Debian/Ubuntu] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Package: Alpine] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Download] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Unpack] *******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Configure] ****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Install] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install PCRE Dependency: Install] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Package: Centos/RHEL] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Package: Debian/Ubuntu] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Package: Alpine] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Download] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Unpack] *******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Configure] ****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Install] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install zlib Dependency: Install] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Package: Centos/RHEL] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Package: Debian/Ubuntu] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Package: Alpine] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Download] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Unpack] ****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Configure] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Make] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install OpenSSL Dependency: Install] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Get NGINX mainline version] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Set NGINX mainline version] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Get NGINX stable version 1/2] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Get NGINX stable version 2/2] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Set NGINX stable version] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Set NGINX download filename] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Check for NGINX Install] ***************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Add NGINX User] ************************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Download] ***************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Unpack] *****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Configure] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Make] *******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Install] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Create html directory] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Copy index.html] ********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Upload systemd NGINX service file] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Enable systemd NGINX service file] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Upload upstart NGINX service file] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Upload upstart NGINX service conf file] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Enable upstart NGINX service reload] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Start upstart NGINX service reload] ****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Upload sysvinit NGINX service file] ****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Upload openrc NGINX service file] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Enable openrc NGINX service] ***********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX: Cleanup Downloads] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX package] *****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Fetch Ports] *************************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Extract Ports] ***********************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install NGINX package] ***************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install NGINX port] ******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: OpenBSD) Install NGINX package] ***************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: OpenBSD) Install NGINX port] ******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: NetBSD) Install NGINX package] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: NetBSD) Install NGINX port] *******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: DragonFlyBSD) Install NGINX package] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: DragonFlyBSD) Install NGINX port] *************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: HardenedBSD) Install NGINX package] ***********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: HardenedBSD) Install NGINX port] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs Besides Alpine Linux) Create SSL Directory] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs Besides Alpine Linux) Copy NGINX Plus Certificate and License Key] ***
    amazon-ebs: skipping: [default] => (item=license/nginx-repo.crt)
    amazon-ebs: skipping: [default] => (item=license/nginx-repo.key)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Alpine Linux) Create APK Directory] *************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Alpine Linux) Copy NGINX Plus Key] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Alpine Linux) Copy NGINX Plus Certificate] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Alpine Linux) Setup NGINX Plus Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Debian/Ubuntu) Setup NGINX Plus Repository] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Debian/Ubuntu) Setup NGINX Plus License] ********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Debian/Ubuntu) Update APT Cache] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: CentOS/RedHat/Oracle Linux) Setup NGINX Plus Repository] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Amazon Linux) Setup NGINX Plus Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: SUSE) Setup NGINX Plus Certificate and License Keys] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: SUSE) Setup NGINX Plus Repository] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Linux) Install NGINX Plus] ********************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: FreeBSD) Setup NGINX Plus Repository] ***********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: FreeBSD) Setup NGINX Plus License] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install NGINX Plus] ******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs) Remove NGINX configuration files] ******
    amazon-ebs: skipping: [default] => (item=/etc/nginx/conf.d)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX Main Directory Exists] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Upload NGINX Main Configuration File] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX HTTP Directory Exists] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Upload NGINX HTTP Configuration Files] ***
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX Stream Directory Exists] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Upload NGINX Stream Configuration Files] ***
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX HTML Directory Exists] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Upload NGINX HTML Files] *************
    amazon-ebs: skipping: [default] => (item=/Users/bharathkumarraju/.ansible/roles/nginxinc.nginx/files/www/index.html)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure SSL Certificate Directory Exists] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure SSL Key Directory Exists] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Upload NGINX SSL Certificates] *******
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Upload NGINX SSL Keys] ***************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure HTML Directory Exists] ********
    amazon-ebs: skipping: [default] => (item={'key': 'default', 'value': {'template_file': 'www/index.html.j2', 'html_file_name': 'index.html', 'html_file_location': '/usr/share/nginx/html', 'web_server_name': 'Default'}})
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Dynamically Generate HTML Files] *****
    amazon-ebs: skipping: [default] => (item={'key': 'default', 'value': {'template_file': 'www/index.html.j2', 'html_file_name': 'index.html', 'html_file_location': '/usr/share/nginx/html', 'web_server_name': 'Default'}})
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX Main Directory Exists] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Dynamically Generate NGINX Main Configuration File] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX HTTP Directory Exists] ***
    amazon-ebs: skipping: [default] => (item={'key': 'default', 'value': {'template_file': 'http/default.conf.j2', 'conf_file_name': 'default.conf', 'conf_file_location': '/etc/nginx/conf.d/', 'servers': {'server1': {'listen': {'listen_localhost': {'ip': 'localhost', 'port': 8081, 'ssl': True, 'opts': []}}, 'server_name': 'localhost', 'include_files': [], 'error_page': '/usr/share/nginx/html', 'access_log': [{'name': 'main', 'location': '/var/log/nginx/access.log'}], 'error_log': {'location': '/var/log/nginx/error.log', 'level': 'warn'}, 'root': '/usr/share/nginx/html', 'autoindex': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'client_max_body_size': '1m', 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'ssl': {'cert': '/etc/ssl/certs/default.crt', 'key': '/etc/ssl/private/default.key', 'dhparam': '/etc/ssl/private/dh_param.pem', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'prefer_server_ciphers': True, 'session_cache': 'none', 'session_timeout': '5m', 'disable_session_tickets': False, 'trusted_cert': '/etc/ssl/certs/root_CA_cert_plus_intermediates.crt', 'stapling': True, 'stapling_verify': True}, 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}, 'web_server': {'locations': {'default': {'location': '/', 'include_files': [], 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'html_file_location': '/usr/share/nginx/html', 'html_file_name': 'index.html', 'autoindex': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'client_max_body_size': '1m', 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}}}, 'http_demo_conf': False}, 'reverse_proxy': {'locations': {'backend': {'location': '/', 'include_files': [], 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'proxy_connect_timeout': None, 'proxy_pass': 'http://backend', 'proxy_set_header': {'header_host': {'name': 'Host', 'value': '$host'}, 'header_x_real_ip': {'name': 'X-Real-IP', 'value': '$remote_addr'}, 'header_x_forwarded_for': {'name': 'X-Forwarded-For', 'value': '$proxy_add_x_forwarded_for'}, 'header_x_forwarded_proto': {'name': 'X-Forwarded-Proto', 'value': '$scheme'}}, 'proxy_read_timeout': None, 'proxy_send_timeout': None, 'proxy_ssl': {'cert': '/etc/ssl/certs/proxy_default.crt', 'key': '/etc/ssl/private/proxy_default.key', 'trusted_cert': '/etc/ssl/certs/proxy_ca.crt', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'verify': False, 'verify_depth': 1, 'session_reuse': True}, 'proxy_cache': 'backend_proxy_cache', 'proxy_cache_valid': [{'code': 200, 'time': '10m'}, {'code': 301, 'time': '1m'}], 'proxy_temp_path': {'path': '/var/cache/nginx/proxy/backend/temp'}, 'proxy_cache_lock': False, 'proxy_cache_min_uses': 3, 'proxy_cache_revalidate': False, 'proxy_cache_use_stale': ['http_403', 'http_404'], 'proxy_ignore_headers': ['Vary', 'Cache-Control'], 'proxy_cookie_path': {'path': '/web/', 'replacement': '/'}, 'proxy_buffering': False, 'proxy_http_version': 1.0, 'websocket': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}}}, 'health_check_plus': False}, 'returns': {'return301': {'location': '/', 'code': 301, 'value': 'http://$host$request_uri'}}}}, 'proxy_cache': {'proxy_cache_path': [{'path': '/var/cache/nginx/proxy/backend', 'keys_zone': {'name': 'backend_proxy_cache', 'size': '10m'}, 'levels': '1:2', 'max_size': '10g', 'inactive': '60m', 'use_temp_path': True}], 'proxy_temp_path': {'path': '/var/cache/nginx/proxy/temp'}, 'proxy_cache_valid': [{'code': 200, 'time': '10m'}, {'code': 301, 'time': '1m'}], 'proxy_cache_lock': True, 'proxy_cache_min_uses': 5, 'proxy_cache_revalidate': True, 'proxy_cache_use_stale': ['error', 'timeout'], 'proxy_ignore_headers': ['Expires']}, 'upstreams': {'upstream1': {'name': 'backend', 'lb_method': 'least_conn', 'zone_name': 'backend_mem_zone', 'zone_size': '64k', 'sticky_cookie': False, 'servers': {'server1': {'address': 'localhost', 'port': 8081, 'weight': 1, 'health_check': 'max_fails=1 fail_timeout=10s'}}}}}})
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX Proxy Cache Directories Exist] ***
    amazon-ebs: skipping: [default] => (item=[{'template_file': 'http/default.conf.j2', 'conf_file_name': 'default.conf', 'conf_file_location': '/etc/nginx/conf.d/', 'servers': {'server1': {'listen': {'listen_localhost': {'ip': 'localhost', 'port': 8081, 'ssl': True, 'opts': []}}, 'server_name': 'localhost', 'include_files': [], 'error_page': '/usr/share/nginx/html', 'access_log': [{'name': 'main', 'location': '/var/log/nginx/access.log'}], 'error_log': {'location': '/var/log/nginx/error.log', 'level': 'warn'}, 'root': '/usr/share/nginx/html', 'autoindex': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'client_max_body_size': '1m', 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'ssl': {'cert': '/etc/ssl/certs/default.crt', 'key': '/etc/ssl/private/default.key', 'dhparam': '/etc/ssl/private/dh_param.pem', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'prefer_server_ciphers': True, 'session_cache': 'none', 'session_timeout': '5m', 'disable_session_tickets': False, 'trusted_cert': '/etc/ssl/certs/root_CA_cert_plus_intermediates.crt', 'stapling': True, 'stapling_verify': True}, 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}, 'web_server': {'locations': {'default': {'location': '/', 'include_files': [], 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'html_file_location': '/usr/share/nginx/html', 'html_file_name': 'index.html', 'autoindex': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'client_max_body_size': '1m', 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}}}, 'http_demo_conf': False}, 'reverse_proxy': {'locations': {'backend': {'location': '/', 'include_files': [], 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'proxy_connect_timeout': None, 'proxy_pass': 'http://backend', 'proxy_set_header': {'header_host': {'name': 'Host', 'value': '$host'}, 'header_x_real_ip': {'name': 'X-Real-IP', 'value': '$remote_addr'}, 'header_x_forwarded_for': {'name': 'X-Forwarded-For', 'value': '$proxy_add_x_forwarded_for'}, 'header_x_forwarded_proto': {'name': 'X-Forwarded-Proto', 'value': '$scheme'}}, 'proxy_read_timeout': None, 'proxy_send_timeout': None, 'proxy_ssl': {'cert': '/etc/ssl/certs/proxy_default.crt', 'key': '/etc/ssl/private/proxy_default.key', 'trusted_cert': '/etc/ssl/certs/proxy_ca.crt', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'verify': False, 'verify_depth': 1, 'session_reuse': True}, 'proxy_cache': 'backend_proxy_cache', 'proxy_cache_valid': [{'code': 200, 'time': '10m'}, {'code': 301, 'time': '1m'}], 'proxy_temp_path': {'path': '/var/cache/nginx/proxy/backend/temp'}, 'proxy_cache_lock': False, 'proxy_cache_min_uses': 3, 'proxy_cache_revalidate': False, 'proxy_cache_use_stale': ['http_403', 'http_404'], 'proxy_ignore_headers': ['Vary', 'Cache-Control'], 'proxy_cookie_path': {'path': '/web/', 'replacement': '/'}, 'proxy_buffering': False, 'proxy_http_version': 1.0, 'websocket': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}}}, 'health_check_plus': False}, 'returns': {'return301': {'location': '/', 'code': 301, 'value': 'http://$host$request_uri'}}}}, 'proxy_cache': {'proxy_temp_path': {'path': '/var/cache/nginx/proxy/temp'}, 'proxy_cache_valid': [{'code': 200, 'time': '10m'}, {'code': 301, 'time': '1m'}], 'proxy_cache_lock': True, 'proxy_cache_min_uses': 5, 'proxy_cache_revalidate': True, 'proxy_cache_use_stale': ['error', 'timeout'], 'proxy_ignore_headers': ['Expires']}, 'upstreams': {'upstream1': {'name': 'backend', 'lb_method': 'least_conn', 'zone_name': 'backend_mem_zone', 'zone_size': '64k', 'sticky_cookie': False, 'servers': {'server1': {'address': 'localhost', 'port': 8081, 'weight': 1, 'health_check': 'max_fails=1 fail_timeout=10s'}}}}}, {'path': '/var/cache/nginx/proxy/backend', 'keys_zone': {'name': 'backend_proxy_cache', 'size': '10m'}, 'levels': '1:2', 'max_size': '10g', 'inactive': '60m', 'use_temp_path': True}])
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Dynamically Generate NGINX HTTP Configuration Files] ***
    amazon-ebs: skipping: [default] => (item={'key': 'default', 'value': {'template_file': 'http/default.conf.j2', 'conf_file_name': 'default.conf', 'conf_file_location': '/etc/nginx/conf.d/', 'servers': {'server1': {'listen': {'listen_localhost': {'ip': 'localhost', 'port': 8081, 'ssl': True, 'opts': []}}, 'server_name': 'localhost', 'include_files': [], 'error_page': '/usr/share/nginx/html', 'access_log': [{'name': 'main', 'location': '/var/log/nginx/access.log'}], 'error_log': {'location': '/var/log/nginx/error.log', 'level': 'warn'}, 'root': '/usr/share/nginx/html', 'autoindex': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'client_max_body_size': '1m', 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'ssl': {'cert': '/etc/ssl/certs/default.crt', 'key': '/etc/ssl/private/default.key', 'dhparam': '/etc/ssl/private/dh_param.pem', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'prefer_server_ciphers': True, 'session_cache': 'none', 'session_timeout': '5m', 'disable_session_tickets': False, 'trusted_cert': '/etc/ssl/certs/root_CA_cert_plus_intermediates.crt', 'stapling': True, 'stapling_verify': True}, 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}, 'web_server': {'locations': {'default': {'location': '/', 'include_files': [], 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'html_file_location': '/usr/share/nginx/html', 'html_file_name': 'index.html', 'autoindex': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'client_max_body_size': '1m', 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}}}, 'http_demo_conf': False}, 'reverse_proxy': {'locations': {'backend': {'location': '/', 'include_files': [], 'proxy_hide_headers': [], 'add_headers': {'strict_transport_security': {'name': 'Strict-Transport-Security', 'value': 'max-age=15768000; includeSubDomains', 'always': True}}, 'proxy_connect_timeout': None, 'proxy_pass': 'http://backend', 'proxy_set_header': {'header_host': {'name': 'Host', 'value': '$host'}, 'header_x_real_ip': {'name': 'X-Real-IP', 'value': '$remote_addr'}, 'header_x_forwarded_for': {'name': 'X-Forwarded-For', 'value': '$proxy_add_x_forwarded_for'}, 'header_x_forwarded_proto': {'name': 'X-Forwarded-Proto', 'value': '$scheme'}}, 'proxy_read_timeout': None, 'proxy_send_timeout': None, 'proxy_ssl': {'cert': '/etc/ssl/certs/proxy_default.crt', 'key': '/etc/ssl/private/proxy_default.key', 'trusted_cert': '/etc/ssl/certs/proxy_ca.crt', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'verify': False, 'verify_depth': 1, 'session_reuse': True}, 'proxy_cache': 'backend_proxy_cache', 'proxy_cache_valid': [{'code': 200, 'time': '10m'}, {'code': 301, 'time': '1m'}], 'proxy_temp_path': {'path': '/var/cache/nginx/proxy/backend/temp'}, 'proxy_cache_lock': False, 'proxy_cache_min_uses': 3, 'proxy_cache_revalidate': False, 'proxy_cache_use_stale': ['http_403', 'http_404'], 'proxy_ignore_headers': ['Vary', 'Cache-Control'], 'proxy_cookie_path': {'path': '/web/', 'replacement': '/'}, 'proxy_buffering': False, 'proxy_http_version': 1.0, 'websocket': False, 'auth_basic': None, 'auth_basic_user_file': None, 'try_files': '$uri $uri/index.html $uri.html =404', 'sub_filter': {'last_modified': 'off', 'once': 'on', 'types': 'text/html'}}}, 'health_check_plus': False}, 'returns': {'return301': {'location': '/', 'code': 301, 'value': 'http://$host$request_uri'}}}}, 'proxy_cache': {'proxy_cache_path': [{'path': '/var/cache/nginx/proxy/backend', 'keys_zone': {'name': 'backend_proxy_cache', 'size': '10m'}, 'levels': '1:2', 'max_size': '10g', 'inactive': '60m', 'use_temp_path': True}], 'proxy_temp_path': {'path': '/var/cache/nginx/proxy/temp'}, 'proxy_cache_valid': [{'code': 200, 'time': '10m'}, {'code': 301, 'time': '1m'}], 'proxy_cache_lock': True, 'proxy_cache_min_uses': 5, 'proxy_cache_revalidate': True, 'proxy_cache_use_stale': ['error', 'timeout'], 'proxy_ignore_headers': ['Expires']}, 'upstreams': {'upstream1': {'name': 'backend', 'lb_method': 'least_conn', 'zone_name': 'backend_mem_zone', 'zone_size': '64k', 'sticky_cookie': False, 'servers': {'server1': {'address': 'localhost', 'port': 8081, 'weight': 1, 'health_check': 'max_fails=1 fail_timeout=10s'}}}}}})
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Dynamically Generate NGINX API Configuration File] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Ensure NGINX Stream Directory Exists] ***
    amazon-ebs: skipping: [default] => (item={'key': 'default', 'value': {'template_file': 'stream/default.conf.j2', 'conf_file_name': 'default.conf', 'conf_file_location': '/etc/nginx/conf.d/stream/', 'network_streams': {'default': {'listen_address': 'localhost', 'listen_port': 80, 'udp_enable': False, 'include_files': [], 'proxy_pass': 'backend', 'proxy_timeout': '3s', 'proxy_connect_timeout': '1s', 'proxy_protocol': False, 'proxy_ssl': {'cert': '/etc/ssl/certs/proxy_default.crt', 'key': '/etc/ssl/private/proxy_default.key', 'trusted_cert': '/etc/ssl/certs/proxy_ca.crt', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'verify': False, 'verify_depth': 1, 'session_reuse': True}, 'health_check_plus': False}}, 'upstreams': {'upstream1': {'name': 'backend', 'lb_method': 'least_conn', 'zone_name': 'backend', 'zone_size': '64k', 'sticky_cookie': False, 'servers': {'server1': {'address': 'localhost', 'port': 8080, 'weight': 1, 'health_check': 'max_fails=1 fail_timeout=10s'}}}}}})
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Dynamically Generate NGINX Stream Configuration Files] ***
    amazon-ebs: skipping: [default] => (item={'key': 'default', 'value': {'template_file': 'stream/default.conf.j2', 'conf_file_name': 'default.conf', 'conf_file_location': '/etc/nginx/conf.d/stream/', 'network_streams': {'default': {'listen_address': 'localhost', 'listen_port': 80, 'udp_enable': False, 'include_files': [], 'proxy_pass': 'backend', 'proxy_timeout': '3s', 'proxy_connect_timeout': '1s', 'proxy_protocol': False, 'proxy_ssl': {'cert': '/etc/ssl/certs/proxy_default.crt', 'key': '/etc/ssl/private/proxy_default.key', 'trusted_cert': '/etc/ssl/certs/proxy_ca.crt', 'protocols': 'TLSv1 TLSv1.1 TLSv1.2', 'ciphers': 'HIGH:!aNULL:!MD5', 'verify': False, 'verify_depth': 1, 'session_reuse': True}, 'health_check_plus': False}}, 'upstreams': {'upstream1': {'name': 'backend', 'lb_method': 'least_conn', 'zone_name': 'backend', 'zone_size': '64k', 'sticky_cookie': False, 'servers': {'server1': {'address': 'localhost', 'port': 8080, 'weight': 1, 'health_check': 'max_fails=1 fail_timeout=10s'}}}}}})
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: NGINX Open Source) Enable NGINX Open Source Status] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: NGINX Plus) Enable NGINX Plus Status] ***********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Open Source JavaScript Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus JavaScript Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Load NGINX JavaScript Module] ********
    amazon-ebs: skipping: [default] => (item=load_module modules/ngx_http_js_module.so;)
    amazon-ebs: skipping: [default] => (item=load_module modules/ngx_stream_js_module.so;)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install Perl Dependency] *************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Open Source Perl Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus Perl Module] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Load NGINX Perl Module] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS) Install GeoIP Required CentOS Dependencies] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Open Source GeoIP Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus GeoIP Module] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Load NGINX GeoIP Module] *************
    amazon-ebs: skipping: [default] => (item=load_module modules/ngx_http_geoip_module.so;)
    amazon-ebs: skipping: [default] => (item=load_module modules/ngx_stream_geoip_module.so;)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Open Source Image Filter Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus Image Filter Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Load NGINX Image Filter Module] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus RTMP Module] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Load NGINX RTMP Module] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Open Source XSLT Module] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus XSLT Module] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All NGINX) Load NGINX XSLT Module] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Plus WAF Module] *******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: NGINX Plus) Load NGINX Plus WAF Module] *********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs) Register NGINX configuration] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs) Print NGINX configuration] *************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs) Set NGINX Plus License State] **********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs Besides Alpine Linux) Delete NGINX Plus License] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Alpine Linux) Delete NGINX Plus License] ********
    amazon-ebs: skipping: [default] => (item=/etc/apk/cert.key)
    amazon-ebs: skipping: [default] => (item=/etc/apk/cert.pem)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Alpine Linux) Setup NGINX Plus Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: FreeBSD) Setup NGINX Plus Repository] ***********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: FreeBSD) Setup NGINX Plus License] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Debian/Ubuntu) Setup NGINX Plus Repository] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Debian/Ubuntu) Setup NGINX Plus License] ********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Debian/Ubuntu) Update APT Cache] ****************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: CentOS/RedHat/Oracle Linux) Setup NGINX Plus Repository] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: Amazon Linux) Setup NGINX Plus Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: SUSE) Setup NGINX Plus Certificate and License Keys] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: SUSE) Setup NGINX Plus Repository] **************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Add NGINX Amplify Agent Repository] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat/Amazon Linux) Add NGINX Amplify Agent Repository] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: All OSs) Install NGINX Amplify Agent] *********
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs) Copy NGINX Configurator Agent Configuration Template] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Setup: All OSs) Configure NGINX Amplify Agent API Key] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu) Add NGINX Unit Repository] *****
    amazon-ebs: skipping: [default] => (item=deb [arch=amd64] https://packages.nginx.org/unit/ubuntu/ xenial unit)
    amazon-ebs: skipping: [default] => (item=deb-src [arch=amd64] https://packages.nginx.org/unit/ubuntu/ xenial unit)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: CentOS/RedHat) Add NGINX Unit Repository] *****
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Amazon Linux) Add NGINX Unit Repository] ******
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Fetch Ports] *************************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Extract Ports] ***********************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu/CentOS/RedHat) Install NGINX Unit] ***
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install NGINX Unit] ******************
    amazon-ebs: skipping: [default]
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: Debian/Ubuntu/CentOS/RedHat) Install NGINX Unit Modules] ***
    amazon-ebs: skipping: [default] => (item=None)
    amazon-ebs:
    amazon-ebs: TASK [nginxinc.nginx : (Install: FreeBSD) Install NGINX Unit Modules] **********
    amazon-ebs: skipping: [default] => (item=None)
    amazon-ebs:
    amazon-ebs: RUNNING HANDLER [nginxinc.nginx : (Handler: All OSs) Start NGINX] **************
    amazon-ebs: changed: [default]
    amazon-ebs:
    amazon-ebs: RUNNING HANDLER [nginxinc.nginx : (Handler: All OSs) Check NGINX] **************
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [upload website files] ****************************************************
    amazon-ebs: changed: [default]
    amazon-ebs:
    amazon-ebs: TASK [allow all access to tcp port 80] *****************************************
    amazon-ebs: changed: [default]
    amazon-ebs: [WARNING]: The value 80 (type int) in a string field was converted to '80'
    amazon-ebs: (type string). If this does not look like what you expect, quote the entire
    amazon-ebs: value to ensure it does not change.
    amazon-ebs:
    amazon-ebs: PLAY RECAP *********************************************************************
    amazon-ebs: default                    : ok=13   changed=7    unreachable=0    failed=0    skipped=186  rescued=0    ignored=0
    amazon-ebs:
==> amazon-ebs: Stopping the source instance...
    amazon-ebs: Stopping instance
==> amazon-ebs: Waiting for the instance to stop...
==> amazon-ebs: Creating AMI ubuntu-1592723850 from instance i-0e214eed185ff29cb
    amazon-ebs: AMI: ami-08681ad873e8fb27e
==> amazon-ebs: Waiting for AMI to become ready...
==> amazon-ebs: Terminating the source AWS instance...
==> amazon-ebs: Cleaning up any extra volumes...
==> amazon-ebs: No volumes to clean up, skipping
==> amazon-ebs: Deleting temporary security group...
==> amazon-ebs: Deleting temporary keypair...
Build 'amazon-ebs' finished.

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-2: ami-08681ad873e8fb27e

bharathkumarraju@R77-NB193 sample_website_with_ansible %