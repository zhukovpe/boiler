class League
  include Mongoid::Document

  field :name, type: String
  field :leagueid, type: Integer
  field :description, type: String
  field :tournament_url, type: String
  field :itemdef, type: Integer
end
