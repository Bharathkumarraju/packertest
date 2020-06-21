Building images allows us to reduce launch times by pre-installing platform tooling, such as monitoring services, log shippers or language runtimes.

But a second advantage is that we can specify a minimum sort of configuration that has to be present on each machine.
This is valuable for adhering to compliance and a minimum level of security.

We can then take this image, built to our standard requirements, and use it as a base image for further Packer images.
So, instead of building on a fresh Ubuntu image, provided by Canonical, we can build upon an Ubuntu image pre-configured by ourselves.

You may already have some hardening scripts and you could reuse them.
With Ansible, we can use community-provided playbooks, and in this video we're going to use those provided by dev-sec.io

https://dev-sec.io/

Harden Operatins system level and also harden SSH.

