Pod::Spec.new do |s|
  s.name         = "leveldb"
  s.version      = "0.0.1"
  s.summary      = "LevelDB is a fast key-value storage library written at Google."
  s.homepage     = "https://code.google.com/p/leveldb/"
  s.authors      = { "Jeffrey Dean" => "jeff@google.com", "Sanjay Ghemawat" => "sanjay@google.com" }
  s.source       = {:git => "https://code.google.com/p/leveldb"}
  
  s.source_files = 'db/*.{h,cc}', 'port/*.{h,cc}', 'util/*.{h,cc}', 'table/*.{h,cc}', 'include/leveldb/*.h'
  s.exclude_files = 'db/*_test.cc', 'port/*_test.cc', 'util/*_test.cc', 'table/*_test.cc'
  
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/leveldb/ $(SRCROOT)/leveldb/include' }
  s.compiler_flags = '-DLEVELDB_PLATFORM_POSIX', '-DOS_MACOSX'
  
  s.pre_install do |pod, target_definition|
    Dir.chdir(pod.root){ `mv table/block.h table/ldb_block.h` }
    Dir.chdir(pod.root){ `cd table && sed -i "s,table/block.h,table/ldb_block.h" *` }
  end
end
