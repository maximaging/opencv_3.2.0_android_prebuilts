file(REMOVE_RECURSE
  "../../../../lib/arm64-v8a/libcarotene.pdb"
  "../../../../lib/arm64-v8a/libcarotene.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/carotene.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
