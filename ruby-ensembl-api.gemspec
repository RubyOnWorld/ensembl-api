Gem::Specification.new do |s|
  s.name = "ruby-ensembl-api"
  s.version = "0.9.2"

  s.authors = ["Jan Aerts"]
  s.email = "jan.aerts@gmail.com"
  s.homepage = "http://rubyforge.org/projects/bioruby-annex/"
  s.summary = "API to Ensembl databases"
  s.description = "ensembl-api provides a ruby API to the Ensembl databases (http://www.ensembl.org)"

  s.has_rdoc = true

  s.platform = Gem::Platform::RUBY
  s.files = ["bin/ensembl","lib/ensembl/core/activerecord.rb","lib/ensembl/core/project.rb","lib/ensembl/core/slice.rb","lib/ensembl/core/transcript.rb","lib/ensembl/core/transform.rb","lib/ensembl/db_connection.rb","lib/ensembl/variation/activerecord.rb","lib/ensembl.rb","samples/examples_perl_tutorial.rb","samples/small_example_ruby_api.rb","test/unit/release_45/core/run_tests.rb","test/unit/release_45/core/test_project.rb","test/unit/release_45/core/test_project_human.rb","test/unit/release_45/core/test_relationships.rb","test/unit/release_45/core/test_sequence.rb","test/unit/release_45/core/test_slice.rb","test/unit/release_45/core/test_transcript.rb","test/unit/release_45/core/test_transform.rb","test/unit/release_45/variation/test_activerecord.rb","test/unit/release_50/core/run_tests.rb","test/unit/release_50/core/test_project.rb","test/unit/release_50/core/test_project_human.rb","test/unit/release_50/core/test_relationships.rb","test/unit/release_50/core/test_sequence.rb","test/unit/release_50/core/test_slice.rb","test/unit/release_50/core/test_transcript.rb","test/unit/release_50/core/test_transform.rb","test/unit/release_50/variation/test_activerecord.rb","test/unit/test_releases.rb","doc/classes/Ensembl/Core/Analysis.html","doc/classes/Ensembl/Core/AnalysisDescription.html","doc/classes/Ensembl/Core/AssemblyException.html","doc/classes/Ensembl/Core/AssemblyLink.html","doc/classes/Ensembl/Core/AttribType.html","doc/classes/Ensembl/Core/CoordSystem.html","doc/classes/Ensembl/Core/CoordSystem.src/M000041.html","doc/classes/Ensembl/Core/CoordSystem.src/M000042.html","doc/classes/Ensembl/Core/CoordSystem.src/M000043.html","doc/classes/Ensembl/Core/CoordSystem.src/M000044.html","doc/classes/Ensembl/Core/CoordSystem.src/M000045.html","doc/classes/Ensembl/Core/CoordSystem.src/M000055.html","doc/classes/Ensembl/Core/CoordSystem.src/M000056.html","doc/classes/Ensembl/Core/CoordSystem.src/M000057.html","doc/classes/Ensembl/Core/CoordSystem.src/M000058.html","doc/classes/Ensembl/Core/CoordSystem.src/M000059.html","doc/classes/Ensembl/Core/CoordSystem.src/M000060.html","doc/classes/Ensembl/Core/CoordSystem.src/M000061.html","doc/classes/Ensembl/Core/CoordSystem.src/M000062.html","doc/classes/Ensembl/Core/CoordSystem.src/M000063.html","doc/classes/Ensembl/Core/CoordSystem.src/M000064.html","doc/classes/Ensembl/Core/CoordSystem.src/M000065.html","doc/classes/Ensembl/Core/CoordSystem.src/M000066.html","doc/classes/Ensembl/Core/CoordSystem.src/M000067.html","doc/classes/Ensembl/Core/CoordSystem.src/M000068.html","doc/classes/Ensembl/Core/CoordSystem.src/M000069.html","doc/classes/Ensembl/Core/CoordSystem.src/M000070.html","doc/classes/Ensembl/Core/CoordSystem.src/M000071.html","doc/classes/Ensembl/Core/CoordSystem.src/M000072.html","doc/classes/Ensembl/Core/CoordSystem.src/M000073.html","doc/classes/Ensembl/Core/CoordSystem.src/M000074.html","doc/classes/Ensembl/Core/CoordSystem.src/M000075.html","doc/classes/Ensembl/Core/CoreDBConnection.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000031.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000045.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000050.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000051.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000054.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000056.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000057.html","doc/classes/Ensembl/Core/CoreDBConnection.src/M000058.html","doc/classes/Ensembl/Core/DensityFeature.html","doc/classes/Ensembl/Core/DensityType.html","doc/classes/Ensembl/Core/Dna.html","doc/classes/Ensembl/Core/DnaAlignFeature.html","doc/classes/Ensembl/Core/Exon.html","doc/classes/Ensembl/Core/Exon.src/M000011.html","doc/classes/Ensembl/Core/Exon.src/M000012.html","doc/classes/Ensembl/Core/Exon.src/M000013.html","doc/classes/Ensembl/Core/ExonStableId.html","doc/classes/Ensembl/Core/ExonSupportingFeature.html","doc/classes/Ensembl/Core/ExonTranscript.html","doc/classes/Ensembl/Core/ExternalDb.html","doc/classes/Ensembl/Core/ExternalDb.src/M000046.html","doc/classes/Ensembl/Core/ExternalDb.src/M000061.html","doc/classes/Ensembl/Core/ExternalDb.src/M000066.html","doc/classes/Ensembl/Core/ExternalDb.src/M000067.html","doc/classes/Ensembl/Core/ExternalDb.src/M000068.html","doc/classes/Ensembl/Core/ExternalDb.src/M000071.html","doc/classes/Ensembl/Core/ExternalDb.src/M000074.html","doc/classes/Ensembl/Core/ExternalDb.src/M000075.html","doc/classes/Ensembl/Core/ExternalDb.src/M000076.html","doc/classes/Ensembl/Core/ExternalDb.src/M000077.html","doc/classes/Ensembl/Core/ExternalSynonym.html","doc/classes/Ensembl/Core/Gap.html","doc/classes/Ensembl/Core/Gap.src/M000006.html","doc/classes/Ensembl/Core/Gap.src/M000007.html","doc/classes/Ensembl/Core/Gap.src/M000009.html","doc/classes/Ensembl/Core/Gap.src/M000010.html","doc/classes/Ensembl/Core/Gap.src/M000011.html","doc/classes/Ensembl/Core/Gap.src/M000012.html","doc/classes/Ensembl/Core/Gene.html","doc/classes/Ensembl/Core/Gene.src/M000047.html","doc/classes/Ensembl/Core/Gene.src/M000048.html","doc/classes/Ensembl/Core/Gene.src/M000049.html","doc/classes/Ensembl/Core/Gene.src/M000062.html","doc/classes/Ensembl/Core/Gene.src/M000063.html","doc/classes/Ensembl/Core/Gene.src/M000064.html","doc/classes/Ensembl/Core/Gene.src/M000067.html","doc/classes/Ensembl/Core/Gene.src/M000068.html","doc/classes/Ensembl/Core/Gene.src/M000069.html","doc/classes/Ensembl/Core/Gene.src/M000070.html","doc/classes/Ensembl/Core/Gene.src/M000071.html","doc/classes/Ensembl/Core/Gene.src/M000072.html","doc/classes/Ensembl/Core/Gene.src/M000073.html","doc/classes/Ensembl/Core/Gene.src/M000074.html","doc/classes/Ensembl/Core/Gene.src/M000076.html","doc/classes/Ensembl/Core/Gene.src/M000077.html","doc/classes/Ensembl/Core/Gene.src/M000078.html","doc/classes/Ensembl/Core/Gene.src/M000079.html","doc/classes/Ensembl/Core/Gene.src/M000080.html","doc/classes/Ensembl/Core/Gene.src/M000081.html","doc/classes/Ensembl/Core/GeneAttrib.html","doc/classes/Ensembl/Core/GeneStableId.html","doc/classes/Ensembl/Core/GoXref.html","doc/classes/Ensembl/Core/Karyotype.html","doc/classes/Ensembl/Core/Map.html","doc/classes/Ensembl/Core/Map.src/M000032.html","doc/classes/Ensembl/Core/Map.src/M000046.html","doc/classes/Ensembl/Core/Map.src/M000051.html","doc/classes/Ensembl/Core/Map.src/M000052.html","doc/classes/Ensembl/Core/Map.src/M000053.html","doc/classes/Ensembl/Core/Map.src/M000056.html","doc/classes/Ensembl/Core/Map.src/M000059.html","doc/classes/Ensembl/Core/Map.src/M000060.html","doc/classes/Ensembl/Core/Map.src/M000061.html","doc/classes/Ensembl/Core/Marker.html","doc/classes/Ensembl/Core/Marker.src/M000026.html","doc/classes/Ensembl/Core/Marker.src/M000027.html","doc/classes/Ensembl/Core/Marker.src/M000028.html","doc/classes/Ensembl/Core/Marker.src/M000029.html","doc/classes/Ensembl/Core/Marker.src/M000030.html","doc/classes/Ensembl/Core/Marker.src/M000040.html","doc/classes/Ensembl/Core/Marker.src/M000041.html","doc/classes/Ensembl/Core/Marker.src/M000042.html","doc/classes/Ensembl/Core/Marker.src/M000043.html","doc/classes/Ensembl/Core/Marker.src/M000044.html","doc/classes/Ensembl/Core/Marker.src/M000045.html","doc/classes/Ensembl/Core/Marker.src/M000046.html","doc/classes/Ensembl/Core/Marker.src/M000047.html","doc/classes/Ensembl/Core/Marker.src/M000048.html","doc/classes/Ensembl/Core/Marker.src/M000049.html","doc/classes/Ensembl/Core/Marker.src/M000050.html","doc/classes/Ensembl/Core/Marker.src/M000051.html","doc/classes/Ensembl/Core/Marker.src/M000052.html","doc/classes/Ensembl/Core/Marker.src/M000053.html","doc/classes/Ensembl/Core/Marker.src/M000054.html","doc/classes/Ensembl/Core/Marker.src/M000055.html","doc/classes/Ensembl/Core/Marker.src/M000056.html","doc/classes/Ensembl/Core/Marker.src/M000057.html","doc/classes/Ensembl/Core/MarkerFeature.html","doc/classes/Ensembl/Core/MarkerMapLocation.html","doc/classes/Ensembl/Core/MarkerSynonym.html","doc/classes/Ensembl/Core/Meta.html","doc/classes/Ensembl/Core/MetaCoord.html","doc/classes/Ensembl/Core/MiscAttrib.html","doc/classes/Ensembl/Core/MiscAttrib.src/M000050.html","doc/classes/Ensembl/Core/MiscAttrib.src/M000051.html","doc/classes/Ensembl/Core/MiscAttrib.src/M000052.html","doc/classes/Ensembl/Core/MiscFeature.html","doc/classes/Ensembl/Core/MiscFeature.src/M000048.html","doc/classes/Ensembl/Core/MiscFeature.src/M000049.html","doc/classes/Ensembl/Core/MiscFeature.src/M000050.html","doc/classes/Ensembl/Core/MiscFeature.src/M000051.html","doc/classes/Ensembl/Core/MiscFeatureMiscSet.html","doc/classes/Ensembl/Core/MiscSet.html","doc/classes/Ensembl/Core/ObjectXref.html","doc/classes/Ensembl/Core/OligoArray.html","doc/classes/Ensembl/Core/OligoFeature.html","doc/classes/Ensembl/Core/OligoProbe.html","doc/classes/Ensembl/Core/PredictionExon.html","doc/classes/Ensembl/Core/PredictionTranscript.html","doc/classes/Ensembl/Core/ProteinAlignFeature.html","doc/classes/Ensembl/Core/ProteinFeature.html","doc/classes/Ensembl/Core/RegulatoryFactor.html","doc/classes/Ensembl/Core/RegulatoryFeature.html","doc/classes/Ensembl/Core/RepeatConsensus.html","doc/classes/Ensembl/Core/RepeatFeature.html","doc/classes/Ensembl/Core/SeqRegion.html","doc/classes/Ensembl/Core/SeqRegion.src/M000033.html","doc/classes/Ensembl/Core/SeqRegion.src/M000034.html","doc/classes/Ensembl/Core/SeqRegion.src/M000035.html","doc/classes/Ensembl/Core/SeqRegion.src/M000036.html","doc/classes/Ensembl/Core/SeqRegion.src/M000037.html","doc/classes/Ensembl/Core/SeqRegion.src/M000039.html","doc/classes/Ensembl/Core/SeqRegion.src/M000047.html","doc/classes/Ensembl/Core/SeqRegion.src/M000048.html","doc/classes/Ensembl/Core/SeqRegion.src/M000049.html","doc/classes/Ensembl/Core/SeqRegion.src/M000050.html","doc/classes/Ensembl/Core/SeqRegion.src/M000051.html","doc/classes/Ensembl/Core/SeqRegion.src/M000052.html","doc/classes/Ensembl/Core/SeqRegion.src/M000053.html","doc/classes/Ensembl/Core/SeqRegion.src/M000054.html","doc/classes/Ensembl/Core/SeqRegion.src/M000055.html","doc/classes/Ensembl/Core/SeqRegion.src/M000056.html","doc/classes/Ensembl/Core/SeqRegion.src/M000057.html","doc/classes/Ensembl/Core/SeqRegion.src/M000058.html","doc/classes/Ensembl/Core/SeqRegion.src/M000059.html","doc/classes/Ensembl/Core/SeqRegion.src/M000060.html","doc/classes/Ensembl/Core/SeqRegion.src/M000061.html","doc/classes/Ensembl/Core/SeqRegion.src/M000062.html","doc/classes/Ensembl/Core/SeqRegion.src/M000063.html","doc/classes/Ensembl/Core/SeqRegion.src/M000064.html","doc/classes/Ensembl/Core/SeqRegion.src/M000065.html","doc/classes/Ensembl/Core/SeqRegion.src/M000066.html","doc/classes/Ensembl/Core/SeqRegion.src/M000067.html","doc/classes/Ensembl/Core/SeqRegion.src/M000068.html","doc/classes/Ensembl/Core/SeqRegionAttrib.html","doc/classes/Ensembl/Core/SimpleFeature.html","doc/classes/Ensembl/Core/Slice.html","doc/classes/Ensembl/Core/Slice.src/M000012.html","doc/classes/Ensembl/Core/Slice.src/M000013.html","doc/classes/Ensembl/Core/Slice.src/M000014.html","doc/classes/Ensembl/Core/Slice.src/M000015.html","doc/classes/Ensembl/Core/Slice.src/M000016.html","doc/classes/Ensembl/Core/Slice.src/M000017.html","doc/classes/Ensembl/Core/Slice.src/M000018.html","doc/classes/Ensembl/Core/Slice.src/M000019.html","doc/classes/Ensembl/Core/Slice.src/M000020.html","doc/classes/Ensembl/Core/Slice.src/M000021.html","doc/classes/Ensembl/Core/Slice.src/M000022.html","doc/classes/Ensembl/Core/Slice.src/M000023.html","doc/classes/Ensembl/Core/Slice.src/M000024.html","doc/classes/Ensembl/Core/Slice.src/M000025.html","doc/classes/Ensembl/Core/Slice.src/M000026.html","doc/classes/Ensembl/Core/Slice.src/M000027.html","doc/classes/Ensembl/Core/Slice.src/M000028.html","doc/classes/Ensembl/Core/Slice.src/M000029.html","doc/classes/Ensembl/Core/Slice.src/M000030.html","doc/classes/Ensembl/Core/Sliceable.html","doc/classes/Ensembl/Core/Sliceable.src/M000001.html","doc/classes/Ensembl/Core/Sliceable.src/M000002.html","doc/classes/Ensembl/Core/Sliceable.src/M000003.html","doc/classes/Ensembl/Core/Sliceable.src/M000004.html","doc/classes/Ensembl/Core/Sliceable.src/M000005.html","doc/classes/Ensembl/Core/Sliceable.src/M000006.html","doc/classes/Ensembl/Core/Sliceable.src/M000007.html","doc/classes/Ensembl/Core/Sliceable.src/M000008.html","doc/classes/Ensembl/Core/Sliceable.src/M000009.html","doc/classes/Ensembl/Core/Sliceable.src/M000010.html","doc/classes/Ensembl/Core/Transcript.html","doc/classes/Ensembl/Core/Transcript.src/M000008.html","doc/classes/Ensembl/Core/Transcript.src/M000009.html","doc/classes/Ensembl/Core/Transcript.src/M000010.html","doc/classes/Ensembl/Core/Transcript.src/M000011.html","doc/classes/Ensembl/Core/Transcript.src/M000026.html","doc/classes/Ensembl/Core/Transcript.src/M000027.html","doc/classes/Ensembl/Core/Transcript.src/M000028.html","doc/classes/Ensembl/Core/Transcript.src/M000029.html","doc/classes/Ensembl/Core/Transcript.src/M000030.html","doc/classes/Ensembl/Core/Transcript.src/M000031.html","doc/classes/Ensembl/Core/Transcript.src/M000032.html","doc/classes/Ensembl/Core/Transcript.src/M000033.html","doc/classes/Ensembl/Core/Transcript.src/M000034.html","doc/classes/Ensembl/Core/Transcript.src/M000035.html","doc/classes/Ensembl/Core/Transcript.src/M000036.html","doc/classes/Ensembl/Core/Transcript.src/M000037.html","doc/classes/Ensembl/Core/Transcript.src/M000038.html","doc/classes/Ensembl/Core/Transcript.src/M000039.html","doc/classes/Ensembl/Core/Transcript.src/M000040.html","doc/classes/Ensembl/Core/Transcript.src/M000041.html","doc/classes/Ensembl/Core/Transcript.src/M000042.html","doc/classes/Ensembl/Core/Transcript.src/M000043.html","doc/classes/Ensembl/Core/Transcript.src/M000044.html","doc/classes/Ensembl/Core/Transcript.src/M000045.html","doc/classes/Ensembl/Core/Transcript.src/M000046.html","doc/classes/Ensembl/Core/Transcript.src/M000047.html","doc/classes/Ensembl/Core/Transcript.src/M000048.html","doc/classes/Ensembl/Core/Transcript.src/M000049.html","doc/classes/Ensembl/Core/TranscriptAttrib.html","doc/classes/Ensembl/Core/TranscriptStableId.html","doc/classes/Ensembl/Core/TranscriptSupportingFeature.html","doc/classes/Ensembl/Core/Translation.html","doc/classes/Ensembl/Core/Translation.src/M000052.html","doc/classes/Ensembl/Core/Translation.src/M000055.html","doc/classes/Ensembl/Core/Translation.src/M000058.html","doc/classes/Ensembl/Core/Translation.src/M000059.html","doc/classes/Ensembl/Core/Translation.src/M000060.html","doc/classes/Ensembl/Core/TranslationAttrib.html","doc/classes/Ensembl/Core/TranslationStableId.html","doc/classes/Ensembl/Core/Xref.html","doc/classes/Ensembl/Core/Xref.src/M000057.html","doc/classes/Ensembl/Core/Xref.src/M000058.html","doc/classes/Ensembl/Core/Xref.src/M000059.html","doc/classes/Ensembl/Core.html","doc/classes/Ensembl/DummyDBConnection.html","doc/classes/Ensembl/Variation/FlankingSequence.html","doc/classes/Ensembl/Variation/Variation.html","doc/classes/Ensembl/Variation/VariationDBConnection.html","doc/classes/Ensembl/Variation/VariationDBConnection.src/M000001.html","doc/classes/Ensembl/Variation/VariationFeature.html","doc/classes/Ensembl/Variation/VariationSynonym.html","doc/classes/Ensembl/Variation.html","doc/classes/Ensembl.html","doc/files/lib/ensembl/core/activerecord_rb.html","doc/files/lib/ensembl/core/project_rb.html","doc/files/lib/ensembl/core/slice_rb.html","doc/files/lib/ensembl/core/transcript_rb.html","doc/files/lib/ensembl/core/transfer_rb.html","doc/files/lib/ensembl/core/transform_rb.html","doc/files/lib/ensembl/db_connection_rb.html","doc/files/lib/ensembl/variation/activerecord_rb.html","doc/files/lib/ensembl_rb.html","doc/files/README.html","doc/files/TUTORIAL.html","doc/fr_class_index.html","doc/fr_file_index.html","doc/fr_method_index.html","doc/index.html"]
  s.extra_rdoc_files = ["TUTORIAL"]

  s.test_files = ["test/unit/release_45/core/test_project.rb","test/unit/release_45/core/test_project_human.rb","test/unit/release_45/core/test_relationships.rb","test/unit/release_45/core/test_sequence.rb","test/unit/release_45/core/test_slice.rb","test/unit/release_45/core/test_transcript.rb","test/unit/release_45/core/test_transform.rb","test/unit/release_45/variation/test_activerecord.rb","test/unit/release_50/core/test_project.rb","test/unit/release_50/core/test_project_human.rb","test/unit/release_50/core/test_relationships.rb","test/unit/release_50/core/test_sequence.rb","test/unit/release_50/core/test_slice.rb","test/unit/release_50/core/test_transcript.rb","test/unit/release_50/core/test_transform.rb","test/unit/release_50/variation/test_activerecord.rb","test/unit/test_releases.rb"]


  s.add_dependency("bio", [">=1"])
  s.add_dependency("activerecord")

  s.require_paths = ["lib","bin"]
  s.autorequire = "ensembl"

  s.bindir = "bin"
  s.executables = ["ensembl"]
  s.default_executable = "ensembl"
end
