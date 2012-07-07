class gitolite::install($user, $key) {
  include gitolite::params

  $home = $gitolite::params::home

  file { "/var/tmp/${user}.pub":
    ensure  => present,
    owner   => $gitolite::params::user,
    group   => $gitolite::params::user,
    mode    => '0600',
    content => $key,
    require => Class['gitolite::user'],
  }

  exec { "setup_key_${user}":
    path        => '/usr/bin:/bin',
    user        => $gitolite::params::user,
    environment => "HOME=${home}",
    command     => "gl-setup /var/tmp/${user}.pub",
    logoutput   => on_failure,
    creates     => "${home}/.gitolite",
    require     => [
      File["/var/tmp/${user}.pub"],
      Class['gitolite::package'],
    ],
  }

}
