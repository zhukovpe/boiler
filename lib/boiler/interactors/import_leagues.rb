class ImportLeagues
  include Interactor

  def call
    response = service.league_listing
    context.fail! unless response.success?

    context.leagues ||= []
    response.parsed_response['result']['leagues'].each do |league_attrs|
      context.leagues << League.find_or_create_by(league_attrs)
    end
  end

  private

  def service
    @service ||= Boiler::SteamService.create
  end

end
