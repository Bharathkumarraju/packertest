bharathkumarraju@R77-NB193 provisioners % packer build ubuntu.json
amazon-ebs: output will be in this color.

==> amazon-ebs: Prevalidating any provided VPC information
==> amazon-ebs: Prevalidating AMI Name: ubuntu-1592696783
    amazon-ebs: Found Image ID: ami-04781752c9b20ea41
==> amazon-ebs: Creating temporary keypair: packer_5eee9fcf-427c-5cea-d2ae-cd66d44954c9
==> amazon-ebs: Creating temporary security group for this instance: packer_5eee9fd5-27ff-bb9f-5123-d2e6f4937c24
==> amazon-ebs: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> amazon-ebs: Launching a source AWS instance...
==> amazon-ebs: Adding tags to source instance
    amazon-ebs: Adding tag: "Name": "Packer Builder"
    amazon-ebs: Instance ID: i-01e8c198f4f3a0f15
==> amazon-ebs: Waiting for instance (i-01e8c198f4f3a0f15) to become ready...
==> amazon-ebs: Using ssh communicator to connect: 3.23.89.23
==> amazon-ebs: Waiting for SSH to become available...
==> amazon-ebs: Connected to SSH!
==> amazon-ebs: Provisioning with shell script: /var/folders/_s/plvslww5221_yy42vhrx557w0000gp/T/packer-shell259808986
    amazon-ebs: Hello world
==> amazon-ebs: Stopping the source instance...
    amazon-ebs: Stopping instance
==> amazon-ebs: Waiting for the instance to stop...
==> amazon-ebs: Creating AMI ubuntu-1592696783 from instance i-01e8c198f4f3a0f15
    amazon-ebs: AMI: ami-04c5501769f34c9dc
==> amazon-ebs: Waiting for AMI to become ready...
==> amazon-ebs: Terminating the source AWS instance...
==> amazon-ebs: Cleaning up any extra volumes...
==> amazon-ebs: No volumes to clean up, skipping
==> amazon-ebs: Deleting temporary security group...
==> amazon-ebs: Deleting temporary keypair...
Build 'amazon-ebs' finished.

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-2: ami-04c5501769f34c9dc

bharathkumarraju@R77-NB193 provisioners %


-------------------------------------- packer with file ans shell provisioners ------------------------------------------


bharathkumarraju@R77-NB193 provisioners % aws ec2 run-instances --instance-type t2.micro --count 1 --key-name bharathkey --image-id ami-076a6e9c97f7ec38a
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "1effc7f9-c330-4e9e-b23d-a312d56e26a4",
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "1effc7f9-c330-4e9e-b23d-a312d56e26a4",
            "EbsOptimized": false,
:...skipping...
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "1effc7f9-c330-4e9e-b23d-a312d56e26a4",
            "EbsOptimized": false,
            "Hypervisor": "xen",
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "1effc7f9-c330-4e9e-b23d-a312d56e26a4",
            "EbsOptimized": false,
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
            "Architecture": "x86_64",
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-3b96e440",
            "VpcId": "vpc-70123119",
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-22-53.us-east-2.compute.internal",
            "PrivateIpAddress": "172.31.22.53",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
            },
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-2b",
                "GroupName": "",
                "Tenancy": "default"
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
            "Monitoring": {
                "State": "disabled"
            },
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
            "LaunchTime": "2020-06-21T06:36:19+00:00",
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
            "KeyName": "bharathkey",
:
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-076a6e9c97f7ec38a",
            "InstanceId": "i-0d3b92fb59ad33ba3",
            "InstanceType": "t2.micro",
bharathkumarraju@R77-NB193 provisioners %
