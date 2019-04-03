class BaseRepository

  attr_reader :relation

  class << self

    def model_class_name
      name.gsub(/Repository/, '')
    end

    def model_class
      model_class_name.constantize
    end

  end

  def initialize(relation = default_relation)
    self.relation = relation
  end

  def model_class
    self.class.model_class
  end

  def default_relation
    model_class.all
  end

  def limit(per_page)
    if per_page.present?
      self.class.new(
        relation.limit(per_page)
      )
    else
      self
    end
  end

  private

  attr_writer :relation

end
