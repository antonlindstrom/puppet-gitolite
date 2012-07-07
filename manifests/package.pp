class gitolite::package($ensure='present') {

  package { 'gitolite':
    ensure => $ensure,
  }

}
