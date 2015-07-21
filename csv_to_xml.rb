$:.unshift File.dirname(__FILE__) + '/lib'
require 'csv_reader'
require 'image_meta'
require 'category_mapping'
require 'url_matcher'
require 'xml_builder'

metadata = CSVReader.new.read(ARGV[0])
metadata.map! { |fields| ImageMeta.new(fields) }
xml = XMLBuilder.new.build_xml(metadata)

puts xml
