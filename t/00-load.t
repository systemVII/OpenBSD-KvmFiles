#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'OpenBSD::KvmFiles' ) || print "Bail out!
";
}

my $fds = KvmGetFilesAmount($$);
# this is unsafe, so dont do it
# my @ofd = `/usr/bin/fstat -p $$`;
# is($fds,$#ofd)

diag( "Testing OpenBSD::KvmFiles $OpenBSD::KvmFiles::VERSION, Perl $], $^X, #$fds fd opened" );
