use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Data::Validate::WithYAML::Plugin::EMail',
    license             => 'perl',
    dist_author         => 'Renee Baecker <module@renee-baecker.de>',
    dist_version_from   => 'lib/Data/Validate/WithYAML/Plugin/EMail.pm',
    requires => {
        'Regexp::Common::Email::Address' => 1.01,
    },
    build_requires => {
        'Test::More'                     => 0,
    },
    add_to_cleanup      => [ 'Data::Validate::WithYAML::Plugin::EMail-*' ],
);

$builder->create_build_script();
