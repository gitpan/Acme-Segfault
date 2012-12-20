use strict;
use warnings; 
use ExtUtils::MakeMaker;

my $pm =   'lib/Acme/Segfault.pm';
my $bugs = 'https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-Segfault';

WriteMakefile (
    NAME => 'Acme::Segfault',
    VERSION_FROM => $pm, 
    ABSTRACT_FROM => $pm,
    AUTHOR => 'Nick Logan <ug@skunkds.org>',
    LICENSE => 'perl',
    BUILD_REQUIRES => {
	'Test::More'		=> 0,
    },
    META_MERGE => {
        resources => { 
            bugtracker => "$bugs",
        },
    },
    depend => { '$(FIRST_MAKEFILE)' => '$(VERSION_FROM)' },
);
