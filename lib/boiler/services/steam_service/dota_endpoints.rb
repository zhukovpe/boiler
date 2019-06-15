module Boiler
  module SteamService
    module DotaEndpoints

      PREFIX = 'IDOTA2Match_205790' # Dota2 Beta TEST API
      # PREFIX = 'IDOTA2Match_570' # Dota2 Beta API
      FANTASY = 'IDOTA2Fantasy_205790'

      def league_listing
        get("/#{PREFIX}/GetLeagueListing/v1")
      end

      def live_league_games(league_id: nil, match_id: nil)
        get("/#{PREFIX}/GetLiveLeagueGames/v1")
      end

      def match_history(
          hero_id:            nil,  # uint32    The ID of the hero that must be in the matches being queried
          game_mode:          nil,  # uint32    Which game mode to return matches for
          skill:              nil,  # uint32    The average skill range of the match, these can be [1-3] with lower numbers being lower skill. Ignored if an account ID is specified
          min_players:        nil,  # string    Minimum number of human players that must be in a match for it to be returned
          account_id:         nil,  # string    An account ID to get matches from. This will fail if the user has their match history hidden
          league_id:          nil,  # string    The league ID to return games from
          start_at_match_id:  nil,  # uint64    The minimum match ID to start from
          matches_requested:  nil   # string    The number of requested matches to return
        )

        params = {
          hero_id: hero_id,
          game_mode: game_mode,
          skill: skill,
          min_players: min_players,
          account_id: account_id,
          league_id: league_id,
          start_at_match_id: start_at_match_id,
          matches_requested: matches_requested
        }.compact

        get("/#{PREFIX}/GetMatchHistory/v1", query: params)
      end

      def match_details(match_id)
        params = { match_id: match_id }
        get("/#{PREFIX}/GetMatchDetails/v1", query: params)
      end

      def top_live_event_game(partner)
        params = { partner: partner }
        get("/#{PREFIX}/GetTopLiveEventGame/v1", query: params)
      end

      def pro_player_list
        get("/#{FANTASY}/GetProPlayerList/v1")
      end

      def schema
        get('/IEconItems_570/GetSchemaURL/v1')
      end

    end
  end
end
