How does Packer help with the process of creating a customized image?

Packer manages the launching of an instance, connecting to it, co-ordinating the customisations,
the image creation, and cleaning up any resources used.


Builders, Provisioners, Post-Provisioners

How to get the base image for packer in AWS:
---------------------------------------------->
The first thing we can do is make sure that we are only gathering images from Canonical.
So we are gonna filter by the owner value here.
And if we go to Canonicals documentation, they actually tell us that this is their owner ID.
So we can copy that, and paste that in as the owner.
So Canonical are providing still thousands of images,
and what we want to do is get to 16.04, so we will put that in as a search criteria

i.e. official ubuntu cloud guest Amazon machine images (or) Canonical ubuntu cloud guest Amazon machine images

https://help.ubuntu.com/community/EC2StartersGuide

Official Ubuntu Cloud Guest Amazon Machine Images (AMIs)
---------------------------------------------------------------------------------------->

The Official AMI Ids can be obtained from http://cloud-images.ubuntu.com/locator/ec2/.
Official Ubuntu AMIs are published by the 'Canonical' user, with Amazon ID '099720109477'.
Images containing the string 'ubuntu' but not owned by that ID are not official AMIs.

Release images can be found at http://cloud-images.ubuntu.com/releases/,
for example 14.04 LTS Trusty Tahr can be found under http://cloud-images.ubuntu.com/releases/14.04/release/


ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20200610

ami-0a0ddd875a1ea2c7f

ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20200610
ami-0a0ddd875a1ea2c7f
099720109477/ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20200610
099720109477

For redhat:
------------->
https://access.redhat.com/articles/2962171



