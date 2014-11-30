node 'default'{
    file { 'c:/users/vagrant/desktop/test.txt':
        ensure => present,
        content => 'This is a test and only a test',
    }
}
