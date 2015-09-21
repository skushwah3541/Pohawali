use utf8;
package Poha::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Poha::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<user>

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 password

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 first_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 last_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 last_logged

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 created_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 logged_in

  data_type: 'bit'
  is_nullable: 1
  size: 1

=head2 must_change_password

  data_type: 'bit'
  is_nullable: 1
  size: 1

=head2 nick_name

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "password",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "first_name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "last_name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "last_logged",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "created_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "logged_in",
  { data_type => "bit", is_nullable => 1, size => 1 },
  "must_change_password",
  { data_type => "bit", is_nullable => 1, size => 1 },
  "nick_name",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<email_UNIQUE>

=over 4

=item * L</email>

=back

=cut

__PACKAGE__->add_unique_constraint("email_UNIQUE", ["email"]);

=head1 RELATIONS

=head2 products

Type: has_many

Related object: L<Poha::Schema::Result::Product>

=cut

__PACKAGE__->has_many(
  "products",
  "Poha::Schema::Result::Product",
  { "foreign.created_user" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_comments

Type: has_many

Related object: L<Poha::Schema::Result::UserComment>

=cut

__PACKAGE__->has_many(
  "user_comments",
  "Poha::Schema::Result::UserComment",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-03-18 20:46:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:srAIzrijuIRTuU+8Jezr4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
