class V2010HolodeckResource < HolodeckResource
  require './spec/holodeck/decks/resources/v2010/account/recording/transcription/transcription.rb'

  class RecordingInstanceHolodeckResource < HolodeckResource
    @sub_resources = {
        transcriptions: V2010HolodeckResource::TranscriptionInstanceHolodeckResource,
    }
    @holograms = [
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_read_200_empty.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/Recordings.json",
            auth: ["ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_read_200_partial.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACcccccccccccccccccccccccccccccccc/Recordings.json",
            auth: ["ACcccccccccccccccccccccccccccccccc", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_read_200_multi.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_create_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_update_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 204,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_204.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings/REllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_read_401.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings/REllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_create_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings/REllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_update_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings/REkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_read_404.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings/REkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_create_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings/REkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_update_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings/REmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_read_500.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings/REmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_create_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings/REmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_update_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
    ]
  end
end

class V2010HolodeckResource < HolodeckResource
  require './spec/holodeck/decks/resources/v2010/account/recording/transcription/transcription.rb'

  class RecordingInstanceHolodeckResource < HolodeckResource
    @sub_resources = {
        transcriptions: V2010HolodeckResource::TranscriptionInstanceHolodeckResource,
    }
    @holograms = [
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_read_200_empty.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/Recordings.json",
            auth: ["ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_read_200_partial.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACcccccccccccccccccccccccccccccccc/Recordings.json",
            auth: ["ACcccccccccccccccccccccccccccccccc", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_read_200_multi.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_create_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "recording_update_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 204,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_204.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings/REllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_read_401.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings/REllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_create_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/Recordings/REllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "recording_update_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings/REkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_read_404.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings/REkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_create_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/Recordings/REkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "recording_update_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings/REmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_delete_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_read_500.json"),
            query_params: '{"DateCreated": "date_created"}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings/REmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_fetch_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_create_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/Recordings/REmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "recording_update_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
    ]
  end
end