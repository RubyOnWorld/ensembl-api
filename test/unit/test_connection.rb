require 'pathname'
libpath = Pathname.new(File.join(File.dirname(__FILE__), ['..'] * 2, 'lib')).cleanpath.to_s
$:.unshift(libpath) unless $:.include?(libpath)

require 'test/unit'

require 'ensembl'


class TestConnection < Test::Unit::TestCase

  def test_remote_core_connection
    assert_nothing_raised do 
      Ensembl::Core::DBConnection.connect('homo_sapiens',53)
    end
  end

  # This is to check if the overwrite of the default parameters is possible, 
  # so you can specify an Ensembl database on a host that is different from the official Ensembl website.

  def test_local_core_connection
    
    # Change username, password, host and port in order to test the connection with a different Ensembl db server
    assert_nothing_raised do 
      Ensembl::Core::DBConnection.connect('homo_sapiens',53,:username => "anonymous",:host => "ensembldb.ensembl.org", :port => 5306)
    end
  end
  
  def test_remote_variation_connection
    assert_nothing_raised do 
      Ensembl::Variation::DBConnection.connect('homo_sapiens',53)
    end
  end
  
  def test_local_variation_connection
    
    # Change username, password, host and port in order to test the connection with a different Ensembl db server
    assert_nothing_raised do 
      Ensembl::Variation::DBConnection.connect('bos_taurus',53,:username => "anonymous",:host => "ensembldb.ensembl.org", :port => 5306)
    end
  end
  
  def test_connection_ensembl_genomes
    assert_nothing_raised do
      Ensembl::Core::DBConnection.connect("bacillus_collection",1,:host => "mysql.ebi.ac.uk", :port => 4157)
    end
  end
  
end

