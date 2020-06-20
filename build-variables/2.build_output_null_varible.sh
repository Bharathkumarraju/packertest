bharathkumarraju@R77-NB193 build-variables % packer build ubuntu_null_key.json
Error initializing core: 1 error occurred:
        * required variable not set: aws_access_key


bharathkumarraju@R77-NB193 build-variables %


bharathkumarraju@R77-NB193 build-variables % packer build -var "aws_access_key=AYD38934ksjdfksdkiwuriwfnvk" ubuntu_null_key.json
Error: Failed to prepare build: "amazon-ebs"

1 error(s) occurred:

* `access_key` and `secret_key` must both be either set or not set.



==> Builds finished but no artifacts were created.
bharathkumarraju@R77-NB193 build-variables %


bharathkumarraju@R77-NB193 build-variables % packer build -var "aws_access_key=AKLDIDOFGHHJHTFWFNJDNLSLWJ" -var "aws_secret_key=HJLDAMNMLndlsjdlnRWNLWFmmmsRFWVNFDLKLsssfvfmlnv" ubuntu_null_key.json
amazon-ebs: output will be in this color.

==> amazon-ebs: Prevalidating any provided VPC information
==> amazon-ebs: Prevalidating AMI Name: ubuntu-1592692534
    amazon-ebs: Found Image ID: ami-04781752c9b20ea41
==> amazon-ebs: Creating temporary keypair: packer_5eee8f36-7284-bc0f-da36-ba8f892957f9
==> amazon-ebs: Creating temporary security group for this instance: packer_5eee8f3c-be89-05b3-ab1a-9e7783db0ec7
==> amazon-ebs: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> amazon-ebs: Launching a source AWS instance...
==> amazon-ebs: Adding tags to source instance
    amazon-ebs: Adding tag: "Name": "Packer Builder"
    amazon-ebs: Instance ID: i-0306b605985df26c2
==> amazon-ebs: Waiting for instance (i-0306b605985df26c2) to become ready...
==> amazon-ebs: Using ssh communicator to connect: 3.135.244.37
==> amazon-ebs: Waiting for SSH to become available...
==> amazon-ebs: Connected to SSH!
==> amazon-ebs: Stopping the source instance...
    amazon-ebs: Stopping instance
==> amazon-ebs: Waiting for the instance to stop...
==> amazon-ebs: Creating AMI ubuntu-1592692534 from instance i-0306b605985df26c2
    amazon-ebs: AMI: ami-0965e754ecfe349c4
==> amazon-ebs: Waiting for AMI to become ready...
==> amazon-ebs: Terminating the source AWS instance...
==> amazon-ebs: Cleaning up any extra volumes...
==> amazon-ebs: No volumes to clean up, skipping
==> amazon-ebs: Deleting temporary security group...
==> amazon-ebs: Deleting temporary keypair...
Build 'amazon-ebs' finished.

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-2: ami-0965e754ecfe349c4

bharathkumarraju@R77-NB193 build-variables %
