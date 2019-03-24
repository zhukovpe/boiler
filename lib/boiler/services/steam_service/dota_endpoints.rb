module Boiler
  module SteamService
    module DotaEndpoints

      PREFIX = 'IDOTA2Match_205790'

      def league_listing
        get("/#{PREFIX}/GetLeagueListing/v1")
      end

      def match_history
        get("/#{PREFIX}/GetMatchHistory/V001")
      end

      def live_league_games(league_id: nil, match_id: nil)
        get("/#{PREFIX}/GetLiveLeagueGames/v1")
      end

    end
  end
end
