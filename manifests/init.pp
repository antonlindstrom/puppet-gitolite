class gitolite($user, $key) {

  class { 'params': }
  class { 'package': }
  class { 'user': }

  class { 'install':
    user => $user,
    key  => $key,
  }

}
