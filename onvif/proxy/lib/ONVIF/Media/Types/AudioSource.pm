package ONVIF::Media::Types::AudioSource;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(ONVIF::Media::Types::DeviceEntity);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Channels_of :ATTR(:get<Channels>);

__PACKAGE__->_factory(
    [ qw(        Channels

    ) ],
    {
        'Channels' => \%Channels_of,
    },
    {
        'Channels' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Channels' => 'Channels',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::AudioSource

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AudioSource from the namespace http://www.onvif.org/ver10/schema.

Representation of a physical audio input.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Channels




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::AudioSource
   Channels =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

