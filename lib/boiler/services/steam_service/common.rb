module Boiler
  module SteamService
    module Common

      def apps
        get('/ISteamApps/GetAppList/v2')
      end

      def apis
        get('/ISteamWebAPIUtil/GetSupportedAPIList/v1')
      end

    end
  end
end
