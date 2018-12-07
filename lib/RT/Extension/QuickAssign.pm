package RT::Extension::QuickAssign;

use 5.010_001;
use strict;
use warnings;

our $VERSION='1.0.0';

=head1 NAME

RT-Extension-QuickAssign - Quick assign of users as AdminCC or Owner

=head1 DESCRIPTION

=over

=item * Quick assign of people as AdminCc or Owner [Configurable]

=item * Switched positions of ticket people and reminders

=over

=back

=back

=head1 RT VERSION

Works with RT 4.4.2

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::QuickAssign');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 CONFIGURATION

=head2 C<$QuickAssign_Enable>

If enabled, shows the form controls to quickly assign people as AdminCc or Owner.

=head2 C<$QuickAssign_Group>

Which group's members should be choosable when showing the quick assign form controls.

=head2 Example

=over

=item C<# Enables everything provided by RT::Extension::QuickAssign>

=item C<Set($QuickAssign_Enable, 1);>

=item C<Set($QuickAssign_Group, 'NETWAYS');>

=back

=head1 AUTHOR

NETWAYS GmbH <lt>support@netways.de<gt>

=head1 BUGS

All bugs should be reported on L<Gitlab|https://git.netways.org/rt4/rt-extension-quickassign>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2018 by NETWAYS GmbH

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
