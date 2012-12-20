package Acme::Segfault;
use utf8;

BEGIN {
  require Exporter;
  *{import} = \&Exporter::import;
}

our @EXPORT_OK = qw/segfault segfault_1 segfault_2 segfault_3/;
our $VERSION = '0.01';

sub segfault {
	&segfault_1();
	&segfault_2();
	&segfault_3();
}

sub segfault_1 { $x = []; push @$x, eval { $x = 1; return $x = 1; } }
sub segfault_2 { system("kill 11,$$"); }
sub segfault_3 { *::=%::=0 }

1;

__END__

=encoding utf8

=head1 NAME

Acme::Segfault - Attempt to make Perl segfault!

=head1 SYNOPSIS

	use warnings;
	use strict;
	use Acme::Segfault qw/segfault/;

	segfault();

=head1 DESCRIPTION

Segfault your Perls on purpose for once. Sabotage your employer! Troll users in #perl-help!

	#use warnings;
	#use strict;
	use Acme::Segfault qw/segfault/;
	...
	segfault();


=head1 METHODS

=head2 segfault

Runs the segfault suite of methods.

=head2 segfault_1

	$x = []; push @$x, eval { $x = 1; return $x = 1; }

Runs the segfault suite of methods.

=head2 segfault_2

	system("kill 11,$$");

=head2 segfault_3

	*::=%::=0

=head1 TODO

Test suite.

=head1 BUGS

Please report bugs to:

L<https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-Segfault>

=head1 AUTHOR

Nick Logan <F<ug@skunkds.com>>

=head1 LICENSE AND COPYRIGHT

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut


