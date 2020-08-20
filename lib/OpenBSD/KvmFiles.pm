package OpenBSD::KvmFiles;

use warnings;
use strict;

=head1 NAME

OpenBSD::KvmFiles - OpenBSD kvm_getfiles.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Use kvm_getfiles to extract number of openend file of a process.

    use OpenBSD::KvmFiles;

    my $opened_file = KvmGetFiles($pid);
    ...

=head1 EXPORT

KvmGetFiles

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub KvmGetFiles {
}

=head1 AUTHOR

Dohnuts, C<< <dohnuts at no-reply.github.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-openbsd-kvmfiles at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=OpenBSD-KvmFiles>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc OpenBSD::KvmFiles


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<https://github.com/systemVII/OpenBSD-KvmFiles>
L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=OpenBSD-KvmFiles>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/OpenBSD-KvmFiles>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/OpenBSD-KvmFiles>

=item * Search CPAN

L<http://search.cpan.org/dist/OpenBSD-KvmFiles/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2020 Dohnuts.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of OpenBSD::KvmFiles
