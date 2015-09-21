use utf8;
package Poha::Schema::Result::Product;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Poha::Schema::Result::Product

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<products>

=cut

__PACKAGE__->table("products");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 parent_id

  data_type: 'integer'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 image

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 video

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 created_user

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 created_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 category_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "parent_id",
  { data_type => "integer", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "image",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "video",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "created_user",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "created_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "category_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Poha::Schema::Result::Catagory>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Poha::Schema::Result::Catagory",
  { id => "category_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 created_user

Type: belongs_to

Related object: L<Poha::Schema::Result::User>

=cut

__PACKAGE__->belongs_to(
  "created_user",
  "Poha::Schema::Result::User",
  { id => "created_user" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 recipes

Type: has_many

Related object: L<Poha::Schema::Result::Recipe>

=cut

__PACKAGE__->has_many(
  "recipes",
  "Poha::Schema::Result::Recipe",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_comments

Type: has_many

Related object: L<Poha::Schema::Result::UserComment>

=cut

__PACKAGE__->has_many(
  "user_comments",
  "Poha::Schema::Result::UserComment",
  { "foreign.product_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-03-18 20:46:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7qsODT2P9XgSS81DUONd7w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
