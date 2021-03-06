package ONVIF::Media::Types::ActionEngineEventPayload;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %RequestInfo_of :ATTR(:get<RequestInfo>);
my %ResponseInfo_of :ATTR(:get<ResponseInfo>);
my %Fault_of :ATTR(:get<Fault>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        RequestInfo
        ResponseInfo
        Fault
        Extension

    ) ],
    {
        'RequestInfo' => \%RequestInfo_of,
        'ResponseInfo' => \%ResponseInfo_of,
        'Fault' => \%Fault_of,
        'Extension' => \%Extension_of,
    },
    {
        'RequestInfo' => 'ONVIF::Media::Types::Envelope',
        'ResponseInfo' => 'ONVIF::Media::Types::Envelope',
        'Fault' => 'ONVIF::Media::Types::Fault',
        'Extension' => 'ONVIF::Media::Types::ActionEngineEventPayloadExtension',
    },
    {

        'RequestInfo' => 'RequestInfo',
        'ResponseInfo' => 'ResponseInfo',
        'Fault' => 'Fault',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::ActionEngineEventPayload

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ActionEngineEventPayload from the namespace http://www.onvif.org/ver10/schema.

Action Engine Event Payload data structure contains the information about the ONVIF command invocations. Since this event could be generated by other or proprietary actions, the command invocation specific fields are defined as optional and additional extension mechanism is provided for future or additional action definitions.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RequestInfo


=item * ResponseInfo


=item * Fault


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::ActionEngineEventPayload
   RequestInfo =>  { # ONVIF::Media::Types::Envelope
     Header =>  { # ONVIF::Media::Types::Header
     },
     Body =>  { # ONVIF::Media::Types::Body
     },
   },
   ResponseInfo =>  { # ONVIF::Media::Types::Envelope
     Header =>  { # ONVIF::Media::Types::Header
     },
     Body =>  { # ONVIF::Media::Types::Body
     },
   },
   Fault =>  { # ONVIF::Media::Types::Fault
     faultcode =>  $some_value, # QName
     faultstring =>  $some_value, # string
     faultactor =>  $some_value, # anyURI
     detail =>  { # ONVIF::Media::Types::detail
     },
   },
   Extension =>  { # ONVIF::Media::Types::ActionEngineEventPayloadExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

