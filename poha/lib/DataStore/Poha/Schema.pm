use utf8;
package Poha::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces;


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-03-18 20:46:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lDymkjfEWjCTe/YrOXGS/g

my $database = 'poha';
my $user = 'service';
my $password = 'sandkush';

__PACKAGE__->connection(
  "dbi:mysql:database=$database;host=localhost",$user,$password
);

1;
