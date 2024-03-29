use strict;

use ExtUtils::MakeMaker;


my %args = (
  NAME => 'Callback::Frame',
  VERSION_FROM => 'lib/Callback/Frame.pm',
  LIBS => [''],
  INC => '-I lib/',
  PREREQ_PM => {
    'Guard' => 0,
  },
  LICENSE => 'perl',
  dist => {
    PREOP => 'perldoc -uT lib/Callback/Frame.pm > README.pod; pod2text README.pod > $(DISTVNAME)/README',
  },
);


my $eummv = eval ($ExtUtils::MakeMaker::VERSION);
if ($eummv >= 6.45) {
    $args{META_MERGE} = {
        resources => {
            repository => 'git://github.com/hoytech/Callback-Frame.git',
            bugtracker => 'https://github.com/hoytech/Callback-Frame/issues',
        },
    };
}

WriteMakefile(%args);
