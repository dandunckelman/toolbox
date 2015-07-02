deploy_keys::deploy_key { "r10k-control-repo":
  ssh_dir     => "/root/.ssh",
  owner       => "root",
  group       => "root",
  private_key => File.read("keys/puppet-repo-private-key")
  hostname    => "github.com",
  host_key    => {
    type     => "ssh-rsa",
    host_key => File.read("keys/puppet-repo-ssh-key"),
  }
}

class { "r10k":
  remote  => "ssh://git@github.com/dandunckelman/puppet.git",
  version => "1.5.1",
}
