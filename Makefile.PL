use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'OpenBSD::KvmFiles',
    AUTHOR              => q{Dohnuts <dohnuts@no-reply.github.org>},
    VERSION_FROM        => 'lib/OpenBSD/KvmFiles.pm',
    ABSTRACT_FROM       => 'lib/OpenBSD/KvmFiles.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'OpenBSD-KvmFiles-*' },
);
