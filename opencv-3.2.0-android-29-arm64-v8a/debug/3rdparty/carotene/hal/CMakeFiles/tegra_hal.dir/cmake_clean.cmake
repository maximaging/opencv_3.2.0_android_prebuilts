file(REMOVE_RECURSE
  "../../lib/arm64-v8a/libtegra_hal.pdb"
  "../../lib/arm64-v8a/libtegra_hal.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/tegra_hal.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
