## Copyright 2009-2021 Intel Corporation
## SPDX-License-Identifier: Apache-2.0

SET(EMBREE_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../")
GET_FILENAME_COMPONENT(EMBREE_ROOT_DIR "${EMBREE_ROOT_DIR}" ABSOLUTE)

SET(EMBREE_INCLUDE_DIRS "${EMBREE_ROOT_DIR}/include")
SET(EMBREE_LIBRARY "${EMBREE_ROOT_DIR}/lib/libembree3.a")
SET(EMBREE_LIBRARIES ${EMBREE_LIBRARY})

SET(EMBREE_VERSION 3.13.3)
SET(EMBREE_VERSION_MAJOR 3)
SET(EMBREE_VERSION_MINOR 13)
SET(EMBREE_VERSION_PATCH 3)
SET(EMBREE_VERSION_NOTE "")

SET(EMBREE_MAX_ISA DEFAULT)
SET(EMBREE_ISA_SSE2  ON)
SET(EMBREE_ISA_SSE42 OFF)
SET(EMBREE_ISA_AVX OFF) 
SET(EMBREE_ISA_AVX2  OFF)
SET(EMBREE_ISA_AVX512 OFF)
SET(EMBREE_ISA_AVX512SKX OFF) # just for compatibility
SET(EMBREE_ISA_NEON OFF)

SET(EMBREE_BUILD_TYPE Release)
SET(EMBREE_ISPC_SUPPORT OFF)
SET(EMBREE_STATIC_LIB ON)
SET(EMBREE_TUTORIALS OFF)

SET(EMBREE_RAY_MASK OFF)
SET(EMBREE_STAT_COUNTERS OFF)
SET(EMBREE_BACKFACE_CULLING OFF)
SET(EMBREE_FILTER_FUNCTION ON)
SET(EMBREE_IGNORE_INVALID_RAYS OFF)
SET(EMBREE_TASKING_SYSTEM INTERNAL)
SET(EMBREE_COMPACT_POLYS OFF)

SET(EMBREE_GEOMETRY_TRIANGLE ON)
SET(EMBREE_GEOMETRY_QUAD ON)
SET(EMBREE_GEOMETRY_CURVE ON)
SET(EMBREE_GEOMETRY_SUBDIVISION ON)
SET(EMBREE_GEOMETRY_USER ON)
SET(EMBREE_GEOMETRY_POINT ON)

SET(EMBREE_RAY_PACKETS ON)
SET(EMBREE_MAX_INSTANCE_LEVEL_COUNT 1)
SET(EMBREE_CURVE_SELF_INTERSECTION_AVOIDANCE_FACTOR 2.0)
SET(EMBREE_MIN_WIDTH OFF)

IF (EMBREE_STATIC_LIB)
  INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/sys-targets.cmake")
  INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/math-targets.cmake")
  INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/simd-targets.cmake")
  INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/lexers-targets.cmake")
  INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/tasking-targets.cmake")

  IF (EMBREE_ISA_SSE42)
    INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/embree_sse42-targets.cmake")
  ENDIF()

  IF (EMBREE_ISA_AVX)
    INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/embree_avx-targets.cmake")
  ENDIF()

  IF (EMBREE_ISA_AVX2)
    INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/embree_avx2-targets.cmake")
  ENDIF()

  IF (EMBREE_ISA_AVX512)
    INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/embree_avx512-targets.cmake")
  ENDIF()

ENDIF()

INCLUDE("${EMBREE_ROOT_DIR}/lib/cmake/embree-3.13.3/embree-targets.cmake")
