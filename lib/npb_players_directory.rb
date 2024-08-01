# frozen_string_literal: true

require_relative "npb_players_directory/version"
require "npb_players_directory/baystars"
require "npb_players_directory/giants"

module Npb
  class Error < StandardError; end

  def self.baystars
    NpbPlayersDirectory::Baystars.new
  end
end
