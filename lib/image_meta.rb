class ImageMeta
  attr_reader :title, :url, :description

  def initialize(fields)
    fields.each { |field, value| instance_variable_set "@#{field}", value.strip unless value.nil? }
  end

  def year
    "{{Date|#{@year}}}"
  end

  def raw_categories
    @categories.split(',').map(&:strip)
  end
end
