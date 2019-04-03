module Web
  module Controllers
    module Leagues
      class Index
        include Web::Action

        expose :leagues

        def call(params)
          @leagues = LeagueRepository.new.relation.order(leagueid: :desc)
        end
      end
    end
  end
end
