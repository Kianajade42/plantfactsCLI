# frozen_string_literal: true
#require_relative '../plantfacts'
require_relative "./plantfacts/list.rb"
require_relative "./plantfacts/version.rb"
require_relative "./plantfacts/cli.rb"
require_relative "./plantfacts/scraper.rb"

require 'pry'
require 'nokogiri'
require 'open-uri'

module Plantfacts
  class Error < StandardError; end
  # Your code goes here...
end
