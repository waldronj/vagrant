host vagrant* {
    file{'c:/users/vagrant/desktop/test.txt':
        content => 'test',
        ensure => present,
    }
}
