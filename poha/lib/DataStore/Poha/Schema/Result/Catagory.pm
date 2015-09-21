use utf8;
package Poha::Schema::Result::Catagory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Poha::Schema::Result::Catagory

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<catagory>

=cut

__PACKAGE__->table("catagory");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 products

Type: has_many

Related object: L<Poha::Schema::Result::Product>

=cut

__PACKAGE__->has_many(
  "products",
  "Poha::Schema::Result::Product",
  { "foreign.category_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-03-18 20:46:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9A78l2kd9m6V2k1Q6RnWxA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
