#This files creates the resources on our provider. It means resources at openstack level will be created. As shown below we are creating a security key pair

resource "openstack_compute_keypair_v2" "my-cloud-key" {
  name       = "my_keypair"
  public_key = "Place here the my_keypair.pub data" #generate "ssh-keygen -f my_keypair. This key will be used to authenticate with cloud-user at instance we will create in next step
}

resource "openstack_compute_instance_v2" "test12" {
  name            = "test12-vm"
  image_name      = "centos7"
  flavor_id       = "flavor-id"
  security_groups = ["default"]
  key_pair        = "${openstack_compute_keypair_v2.my-cloud-key.name}"
  network {
    name = "Network-name"
  }
  user_data       = "${file("bootstrap.sh")}"
}
