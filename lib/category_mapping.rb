class CategoryMapping
  MAPPING = {
    'Radierung' => 'Etchings',
    'Lithografie' => 'Lithographs',
    'Aquatinta' => 'Aquatint',
    'Mappe' => 'Portfolios'
  }

  def initialize(raw_categories)
    @raw_categories = raw_categories
  end

  def mapped_categories
    return [] if @raw_categories.nil?

    categories = []
    @raw_categories.each do |category|
      categories << MAPPING[category] if MAPPING[category]
    end

    categories.uniq
  end
end
