use utf8;
package Poha::Schema::Result::Recipe;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Poha::Schema::Result::Recipe

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<recipe>

=cut

__PACKAGE__->table("recipe");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 product_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 step_sequence

  data_type: 'integer'
  is_nullable: 1

=head2 step

  data_type: 'text'
  is_nullable: 1

=head2 created_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "product_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "step_sequence",
  { data_type => "integer", is_nullable => 1 },
  "step",
  { data_type => "text", is_nullable => 1 },
  "created_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 product

Type: belongs_to

Related object: L<Poha::Schema::Result::Product>

=cut

__PACKAGE__->belongs_to(
  "product",
  "Poha::Schema::Result::Product",
  { id => "product_id" },
  { is_deferrable => 1, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-03-18 20:46:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r47DInr2w5Y8TCVB8doGRw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
