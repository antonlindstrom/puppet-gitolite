class gitolite::user($ensure='present') {
  include gitolite::params

  user { $gitolite::params::user:
    ensure     => $ensure,
    managehome => true,
    comment    => 'Gitolite system account',
  }


}
