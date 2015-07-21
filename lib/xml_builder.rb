require 'nokogiri'

class XMLBuilder
  def build_xml(metadata)
    builder = Nokogiri::XML::Builder.new(encoding: 'UTF-8') do
      images do
        metadata.each do |image|
          image do
            title image.title
            description image.description
            year image.year
            imageUrl image.url

            mapping = CategoryMapping.new(image.raw_categories)
            mapping.mapped_categories.each_with_index do |category, i|
              send "category#{i}", category
            end
          end
        end
      end
    end

    builder.to_xml
  end
end
