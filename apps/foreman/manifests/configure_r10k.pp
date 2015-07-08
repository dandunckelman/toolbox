class { "r10k":
  sources => {
    "puppet" => {
      "remote" => "ssh://git@github.com/dandunckelman/puppet.git",
      "basedir" => "${::settings::confdir}/environments",
    },
    "hiera" => {
      "remote" => "ssh://git@github.com/dandunckelman/hiera.git",
      "basedir" => "${::settings::confdir}/hiera",
    },
  },
  version => "2.0.2",
}
