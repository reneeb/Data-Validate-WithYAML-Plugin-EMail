package Data::Validate::WithYAML::Plugin::EMail;

use warnings;
use strict; 

use Carp;
use Regexp::Common qw[Email::Address];

# ABSTRACT: Plugin for Data::Validate::WithYAML to check email addresses

our $VERSION = '0.03';

sub check {
    my ($class, $value) = @_;

    croak "no value to check" unless defined $value;

    my $return = 0;
    if( $value =~ /($RE{Email}{Address})/ ){
        $return = 1;
    }

    return $return;
}


1; # End of Data::Validate::WithYAML::Plugin::EMail

=head1 SYNOPSIS

    use Data::Validate::WithYAML::Plugin::EMail;

    my $foo = Data::Validate::WithYAML::Plugin::EMail->check( 'test@exampl.com' );
    ...
    
    # use the plugin via Data::Validate::WithYAML
    
    use Data::Validate::WithYAML;
    
    my $email     = 'test@exampl.com';
    my $validator = Data::Validate::WithYAML->new( 'test.yml' );
    print "yes" if $validator->check( 'email', $email );

test.yml

  ---
  step1:
      email:
          plugin: EMail
          type: required


=head1 SUBROUTINES

=head2 check

