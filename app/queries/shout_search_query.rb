class ShoutSearchQuery
  def initialize(term:)
    @term = term
  end

  def to_relation
    hits = Shout.search { fulltext term }.hits
    Shout.where(id: (hits.map(&:primary_key)))
  end

  private

  attr_reader :term
end
