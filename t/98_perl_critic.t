#!perl -T

use Test::More tests => 1;
use Perl::Critic;
use Data::Validate::WithYAML::Plugin::EMail;

my $pc = Perl::Critic->new();
my @violations = $pc->critique($INC{'Data/Validate/WithYAML/Plugin/EMail.pm'});
is_deeply(\@violations,[],'Perl::Critic');
