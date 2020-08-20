#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'OpenBSD::KvmFiles' ) || print "Bail out!
";
}

diag( "Testing OpenBSD::KvmFiles $OpenBSD::KvmFiles::VERSION, Perl $], $^X" );
