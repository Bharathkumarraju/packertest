bharathkumarraju@R77-NB193 sample_website_with_ansible % packer build -debug ubuntu.json
Debug mode enabled. Builds will not be parallelized.
amazon-ebs: output will be in this color.

==> amazon-ebs: Prevalidating any provided VPC information
==> amazon-ebs: Prevalidating AMI Name: ubuntu-1592725190
==> amazon-ebs: Pausing after run of step 'StepPreValidate'. Press enter to continue.
    amazon-ebs: Found Image ID: ami-04781752c9b20ea41
==> amazon-ebs: Pausing after run of step 'StepSourceAMIInfo'. Press enter to continue.
Cancelling build after receiving interrupt
Build 'amazon-ebs' finished.
Cleanly cancelled builds after being interrupted.
bharathkumarraju@R77-NB193 sample_website_with_ansible %

------------------------------------------------------------------------------------------------------------------------------->

bharathkumarraju@R77-NB193 sample_website_with_ansible % PACKER_LOG=1 packer build -debug ubuntu.json |& tee debug.log
2020/06/21 15:41:41 [INFO] Packer version: 1.6.0 [go1.14.3 darwin amd64]
2020/06/21 15:41:41 Checking 'PACKER_CONFIG' for a config file path
