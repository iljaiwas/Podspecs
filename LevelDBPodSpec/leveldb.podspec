Pod::Spec.new do |s|
  s.name         = "leveldb"
  s.version      = "0.0.1"
  s.summary      = "LevelDB is a fast key-value storage library written at Google."
  s.homepage     = "https://code.google.com/p/leveldb/"
  s.authors      = { "Jeffrey Dean" => "jeff@google.com", "Sanjay Ghemawat" => "sanjay@google.com" }
  s.source       = {:git => "https://code.google.com/p/leveldb"}
  
  s.source_files = 'db/*.{h,cc}', 'port/*.{h,cc}', 'util/*.{h,cc}', 'table/*.{h,cc}'

end
