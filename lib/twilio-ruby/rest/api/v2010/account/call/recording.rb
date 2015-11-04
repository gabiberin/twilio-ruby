##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class RecordingList < ListResource
      ##
      # Initialize the RecordingList
      def initialize(version, account_sid, call_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid,
            call_sid: call_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/Calls/#{@solution[:call_sid]}/Recordings.json"
      end
      
      ##
      # Reads RecordingInstance records from the API as a list.
      def read(self, date_created_before=values.unset, date_created=values.unset, date_created_after=values.unset, limit=nil, page_size=nil)
        @version.read(
            date_created_before,
            date_created,
            date_created_after,
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of RecordingInstance records from the API.
      def page(self, date_created_before=values.unset, date_created=values.unset, date_created_after=values.unset, page_token=None, page_number=None, page_size=None)
        params = values.of({
            DateCreated<: serialize.iso8601_date(date_created_before),
            DateCreated: serialize.iso8601_date(date_created),
            DateCreated>: serialize.iso8601_date(date_created_after),
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            RecordingInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a RecordingContext
      def get(sid)
        RecordingContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.RecordingList>'
      end
    end
  end
end