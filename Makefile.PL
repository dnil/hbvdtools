use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;


WriteMakefile(
    NAME                => 'Bvdb',
    AUTHOR              => q{Jessada Thutkawkorapin <jessada@kth.se>},
#    VERSION_FROM        => 'lib/Bvdb.pm',
#    ABSTRACT            => 'lib/Bvdb.pm',
    ($ExtUtils::MakeMaker::VERSION >= 0
      ? ('LICENSE'=> 'perl')
      : ()),
    PREREQ_PM => {
        'Log::Log4perl' => 0,             # any version
    },    
    PL_FILES            => {},
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'hbvdb-*' },
);



