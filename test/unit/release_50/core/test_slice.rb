#
# = test/unit/test_project.rb - Unit test for Ensembl::Core
#
# Copyright::   Copyright (C) 2007
#               Jan Aerts <jan.aerts@bbsrc.ac.uk>
# License::     Ruby's
#
# $Id:
require 'pathname'
libpath = Pathname.new(File.join(File.dirname(__FILE__), ['..'] * 4, 'lib')).cleanpath.to_s
$:.unshift(libpath) unless $:.include?(libpath)

require 'test/unit'
require 'ensembl'

include Ensembl::Core
DBConnection.connect('bos_taurus', 50)

class GetFeatures < Test::Unit::TestCase
  # Chr4.003.122 has no simple features in itself, but the corresponding region
  # covered by the chromosome has 37. In addition, contigs within the scaffold
  # have 85. Total should therefore be 122.
  def test_simple_features
    contig = SeqRegion.find_by_name('AAFC03055312')
    assert_equal(19, contig.simple_features.length)
    assert_equal(19, contig.slice.simple_features.length)
    slice = Slice.fetch_by_region('contig','AAFC03055312')
    assert_equal(19, slice.simple_features.length)
  end
end

class SliceMethodMissing < Test::Unit::TestCase
  def setup
    @slice = Slice.fetch_by_region('chromosome','4',10000,10000000)
  end
  
  # There is not NotExistingTable class
  def test_non_existing_tables
    assert_raise(NoMethodError) { @slice.not_existing_tables }
  end
  
  # A slice can get its exons
  def test_exons
    assert_equal(291, @slice.exons.length)
    assert_equal(Exon, @slice.exons[0].class)
  end
  
  # A slice can _not_ get its markers; it has marker_features instead.
  def test_markers
    assert_raise(NoMethodError) { @slice.markers }
  end
  
  def test_transcripts
    assert_equal(36, @slice.transcripts.length)
  end
end
