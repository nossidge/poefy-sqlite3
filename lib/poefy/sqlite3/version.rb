#!/usr/bin/env ruby
# Encoding: UTF-8

module Poefy

  module Sqlite3

    def self.version_number
      major = 2
      minor = 0
      tiny  = 2
      pre   = nil

      string = [major, minor, tiny, pre].compact.join('.')
      Gem::Version.new string
    end

    def self.version_date
      '2025-07-01'
    end

  end

end
