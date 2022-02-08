# frozen_string_literal: true
#require_relative '../plantfacts'
require_relative "./plantfacts/scraper"
require_relative "./plantfacts/version"
require_relative "./plantfacts/cli"

require 'pry'
require 'nokogiri'
require 'open-uri'

module Plantfacts
  class Error < StandardError; end
  # Your code goes here...
end
