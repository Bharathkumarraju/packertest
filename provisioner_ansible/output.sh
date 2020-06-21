bharathkumarraju@R77-NB193 provisioner_ansible % packer build ubuntu.json
amazon-ebs: output will be in this color.

==> amazon-ebs: Prevalidating any provided VPC information
==> amazon-ebs: Prevalidating AMI Name: ubuntu-1592722255
    amazon-ebs: Found Image ID: ami-04781752c9b20ea41
==> amazon-ebs: Creating temporary keypair: packer_5eef034f-cd29-e802-ecc2-399cdd944c14
==> amazon-ebs: Creating temporary security group for this instance: packer_5eef0355-b2ad-b0c2-bd38-aff8c3be4428
==> amazon-ebs: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> amazon-ebs: Launching a source AWS instance...
==> amazon-ebs: Adding tags to source instance
    amazon-ebs: Adding tag: "Name": "Packer Builder"
    amazon-ebs: Instance ID: i-0994e2114bd7219bb
==> amazon-ebs: Waiting for instance (i-0994e2114bd7219bb) to become ready...
==> amazon-ebs: Using ssh communicator to connect: 18.217.20.89
==> amazon-ebs: Waiting for SSH to become available...
==> amazon-ebs: Connected to SSH!
==> amazon-ebs: Provisioning with Ansible...
    amazon-ebs: Setting up proxy adapter for Ansible....
==> amazon-ebs: Executing Ansible: ansible-playbook -e packer_build_name=amazon-ebs -e packer_builder_type=amazon-ebs -e packer_http_addr=ERR_HTTP_ADDR_NOT_IMPLEMENTED_BY_BUILDER --ssh-extra-args '-o IdentitiesOnly=yes' --extra-vars ansible_python_interpreter=/usr/bin/python3 -e ansible_ssh_private_key_file=/var/folders/_s/plvslww5221_yy42vhrx557w0000gp/T/ansible-key013528831 -i /var/folders/_s/plvslww5221_yy42vhrx557w0000gp/T/packer-provisioner-ansible951825490 /Users/bharathkumarraju/external/packertest/provisioner_ansible/helloworld.yml
    amazon-ebs:
    amazon-ebs: PLAY [Echo] ********************************************************************
    amazon-ebs:
    amazon-ebs: TASK [Gathering Facts] *********************************************************
    amazon-ebs: ok: [default]
    amazon-ebs:
    amazon-ebs: TASK [print debug message] *****************************************************
    amazon-ebs: ok: [default] => {
    amazon-ebs:     "msg": "Hello world!!!"
    amazon-ebs: }
    amazon-ebs:
    amazon-ebs: PLAY RECAP *********************************************************************
    amazon-ebs: default                    : ok=2    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
    amazon-ebs:
==> amazon-ebs: Stopping the source instance...
    amazon-ebs: Stopping instance
==> amazon-ebs: Waiting for the instance to stop...
==> amazon-ebs: Creating AMI ubuntu-1592722255 from instance i-0994e2114bd7219bb
    amazon-ebs: AMI: ami-022b92d6168765ea0
==> amazon-ebs: Waiting for AMI to become ready...
==> amazon-ebs: Terminating the source AWS instance...
==> amazon-ebs: Cleaning up any extra volumes...
==> amazon-ebs: No volumes to clean up, skipping
==> amazon-ebs: Deleting temporary security group...
==> amazon-ebs: Deleting temporary keypair...
Build 'amazon-ebs' finished.

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-2: ami-022b92d6168765ea0

bharathkumarraju@R77-NB193 provisioner_ansible %
