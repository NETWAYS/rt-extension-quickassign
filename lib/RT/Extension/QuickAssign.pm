package RT::Extension::QuickAssign;

use 5.010_001;
use strict;
use warnings;

our $VERSION='2.2.0';

RT->AddStyleSheets('quickassign.css');

=head1 NAME

RT-Extension-QuickAssign - Quickly assign ticket people from a configured group

=head1 DESCRIPTION

Adds a "Quick Assign" widget to the ticket display page. It lets you
assign people as Owner, AdminCc, Cc or Requestor by picking them from
the members of a single configured group, instead of searching the
whole user database. The member list is rendered into the page, so
filtering happens instantly in the browser without autocomplete
queries - useful on installations with a very large number of
contacts.

Typing at least 2 characters into the search field drops down matching
members as a floating overlay, each with a B<Set Owner> button plus
one B<Add> button per applicable AdminCc/Cc/Requestor role. The widget
also offers one-click B<Take>/B<Steal> and B<Add me as AdminCc>
buttons, and each AdminCc, Cc and Requestor in the People box gets a
small remove button. All updates go through RT's standard ticket
update machinery (rights checks and notifications apply) and refresh
the People box in place without a page reload.

=head1 RT VERSION

Works with RT 6.

For RT 4.4 use version 1.x of this extension.

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt6/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::QuickAssign');

=item Clear your mason cache

    rm -rf /opt/rt6/var/mason_data/obj

=item Restart your webserver

=back

=head1 SETUP

The widget is not shown automatically. Add it to the ticket display
page layout: go to Admin -> Page Layouts, edit the layout for class
C<RT::Ticket>, page C<Display>, and place the C<QuickAssign> widget
where you want it (for example below the C<People> widget).

=head1 CONFIGURATION

=head2 C<$QuickAssign_Group>

Name of the user-defined group whose members are offered in the Quick
Assign widget. The widget is hidden if this option is not set.

    Set($QuickAssign_Group, 'Support');

Note that RT's usual rights apply: to be assigned as owner, the picked
user needs the C<OwnTicket> right on the ticket's queue.

=head2 C<$QuickAssign_ExtraUsers>

Optional list of user names offered in the Quick Assign widget in
addition to the group members, for example shared or role accounts.
Unknown and disabled users are skipped.

    Set($QuickAssign_ExtraUsers, ['NETWAYS']);

=head1 LIMITATIONS

The remove buttons in the People box are only shown if the current
user has the C<ModifyTicket> right. Group watchers do not get a remove
button, as RT core offers no hook for decorating them; remove them via
the People box inline edit instead.

=head1 AUTHOR

NETWAYS GmbH <lt>support@netways.de<gt>

=head1 BUGS

All bugs should be reported on L<GitHub|https://github.com/NETWAYS/rt-extension-quickassign/issues>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2018-2026 by NETWAYS GmbH

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
