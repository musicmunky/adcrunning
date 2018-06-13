class Stravapi

	require 'strava/api/v3'
	require 'net/http'
	require 'uri'
	require 'logger'


	def self.getMemberList()
        result = {}
		begin
	    @apikey = Service.where(name: "adc_strava_api").first.apikey
            @client = Strava::Api::V3::Client.new(:access_token => @apikey)
            @club_id = 335436
			logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))

			result = {}
            result = @client.list_club_members(@club_id)
            logger.debug("Result is:  #{result}")
        rescue => error
			result['status']  = "failure"
			result['message'] = "Error: #{error.message}"
			result['content'] = error.backtrace
        ensure
            return result
        end
    end

end
