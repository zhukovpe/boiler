module Boiler
  module SteamService
    class Service < Base
      include Common
      include DotaEndpoints

      # All API calls take the form http://api.steampowered.com/<interface name>/<method name>/v<version>/?key=<api key>&format=<format>.
      base_uri 'api.steampowered.com'
      debug_output

      def supported_api_list
        get('/ISteamWebAPIUtil/GetSupportedAPIList')
      end

      private

      def key
        ENV['STEAM_API_KEY']
      end

      def default_params
        { key: key, format: :json }
      end

    end
  end
end
