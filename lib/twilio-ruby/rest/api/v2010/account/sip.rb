##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class SipList < ListResource
      ##
      # Initialize the SipList
      def initialize(version, account_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid
        }
        
        # Components
        @domains = None
        @ip_access_control_lists = None
        @credential_lists = None
      end
      
      ##
      # Access the domains
      def domains
        @domains ||= DomainList(@version, @solution)
      end
      
      ##
      # Access the ip_access_control_lists
      def ip_access_control_lists
        @ip_access_control_lists ||= IpAccessControlListList(@version, @solution)
      end
      
      ##
      # Access the credential_lists
      def credential_lists
        @credential_lists ||= CredentialListList(@version, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.SipList>'
      end
    end
  end
end