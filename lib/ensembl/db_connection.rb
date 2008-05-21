require 'rubygems'
require_gem 'activerecord'

DB_ADAPTER = 'mysql'
DB_HOST = 'ensembldb.ensembl.org'
DB_USERNAME = 'anonymous'
DB_PASSWORD = ''

module Ensembl
  class DummyDBConnection < ActiveRecord::Base
    self.abstract_class = true

    establish_connection(
                        :adapter => DB_ADAPTER,
                        :host => DB_HOST,
                        :database => '',
                        :username => DB_USERNAME,
                        :password => DB_PASSWORD
                      )
  end

  module Core
    # = DESCRIPTION
    # The Ensembl::Core::CoreDBConnection is the actual connection established
    # with the Ensembl server.
    class CoreDBConnection < ActiveRecord::Base
      self.abstract_class = true
      self.pluralize_table_names = false

      # = DESCRIPTION
      # The Ensembl::Core::CoreDBConnection#connect method makes the connection
      # to the Ensembl core database for a given species. By default, it connects
      # to release 45 for that species. You _could_ use a lower number, but
      # some parts of the API might not work, or worse: give the wrong results.
      #
      # = USAGE
      #  # Connect to release 45 of human
      #  Ensembl::Core::CoreDBConnection.connect('homo_sapiens')
      #
      #  # Connect to release 42 of chicken
      #  Ensembl::Core::CoreDBConnection.connect('gallus_gallus')
      #
      # ---
      # *Arguments*:
      # * species:: species to connect to. Arguments should be in snake_case
      # * ensembl_release:: the release of the database to connect to
      #  (default = 45)
      def self.connect(species, release = ENSEMBL_RELEASE)
        db_name = Ensembl::DummyDBConnection.connection.select_values('show databases').select{|v| v =~ /#{species}_core_#{ENSEMBL_RELEASE.to_s}/}[0]

        if db_name.nil?
          warn "WARNING: No connection to database established. Check that the species is in snake_case (was: #{species})."
        else
          establish_connection(
                              :adapter => DB_ADAPTER,
                              :host => DB_HOST,
                              :database => db_name,
                              :username => DB_USERNAME,
                              :password => DB_PASSWORD
                            )
        end

      end

    end

  end
end
