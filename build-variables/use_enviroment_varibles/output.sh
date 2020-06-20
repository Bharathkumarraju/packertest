bharathkumarraju@R77-NB193 separate_variables_file % export AWS_ACCESS_KEY="AKIAHKKDKHFBKLKFNLKSGGFLGLS"
bharathkumarraju@R77-NB193 separate_variables_file % export AWS_SECRET_KEY="HMRxcvrjSDJDLFDLbcmxmJSKFDSLDFGLDcccccsdfjlsdnkf"
bharathkumarraju@R77-NB193 separate_variables_file %

bharathkumarraju@R77-NB193 use_enviroment_varibles % packer build ubuntu_aws.json
amazon-ebs: output will be in this color.

==> amazon-ebs: Prevalidating any provided VPC information
==> amazon-ebs: Prevalidating AMI Name: ubuntu-1592693456
    amazon-ebs: Found Image ID: ami-04781752c9b20ea41
==> amazon-ebs: Creating temporary keypair: packer_5eee92d0-d24d-cd1c-cd58-d6cff2709d4f
==> amazon-ebs: Creating temporary security group for this instance: packer_5eee92d6-a0cb-d422-dc32-0577e76427af
==> amazon-ebs: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> amazon-ebs: Launching a source AWS instance...
==> amazon-ebs: Adding tags to source instance
    amazon-ebs: Adding tag: "Name": "Packer Builder"
    amazon-ebs: Instance ID: i-0d01b039471e6bf61
==> amazon-ebs: Waiting for instance (i-0d01b039471e6bf61) to become ready...
==> amazon-ebs: Using ssh communicator to connect: 13.58.153.19
==> amazon-ebs: Waiting for SSH to become available...
==> amazon-ebs: Connected to SSH!
==> amazon-ebs: Stopping the source instance...
    amazon-ebs: Stopping instance
==> amazon-ebs: Waiting for the instance to stop...
==> amazon-ebs: Creating AMI ubuntu-1592693456 from instance i-0d01b039471e6bf61
    amazon-ebs: AMI: ami-0d0625eb0e55da3c8
==> amazon-ebs: Waiting for AMI to become ready...
==> amazon-ebs: Terminating the source AWS instance...
==> amazon-ebs: Cleaning up any extra volumes...
==> amazon-ebs: No volumes to clean up, skipping
==> amazon-ebs: Deleting temporary security group...
==> amazon-ebs: Deleting temporary keypair...
Build 'amazon-ebs' finished.

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-2: ami-0d0625eb0e55da3c8

bharathkumarraju@R77-NB193 use_enviroment_varibles %
