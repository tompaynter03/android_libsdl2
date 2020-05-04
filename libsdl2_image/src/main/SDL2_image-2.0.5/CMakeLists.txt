cmake_minimum_required(VERSION 3.10)

set(PNG_STATIC true)
set(PNG_SHARED false)
add_subdirectory(external/libpng-1.6.37)

string(TOLOWER "${CMAKE_BUILD_TYPE}" BUILD_TYPE)
link_directories("../../../../libsdl2/build/intermediates/cmake/${BUILD_TYPE}/obj/${ANDROID_ABI}/")

add_library(SDL2_image SHARED
    IMG.c           
    IMG_bmp.c       
    IMG_gif.c       
    IMG_jpg.c       
    IMG_lbm.c       
    IMG_pcx.c       
    IMG_png.c       
    IMG_pnm.c       
    IMG_svg.c       
    IMG_tga.c       
    IMG_tif.c       
    IMG_webp.c      
    IMG_WIC.c       
    IMG_xcf.c       
    IMG_xpm.c
    IMG_xv.c        
    IMG_xxx.c
)

target_include_directories(SDL2_image PUBLIC
    external/libpng-1.6.37
    ../../../../libsdl2/src/main/SDL2-2.0.12/include
)

target_compile_definitions(SDL2_image PUBLIC
    -DLOAD_BMP
    -DLOAD_GIF
    -DLOAD_LBM
    -DLOAD_PCX
    -DLOAD_PNM
    -DLOAD_SVG
    -DLOAD_TGA
    -DLOAD_XCF
    -DLOAD_XPM
    -DLOAD_XV
    -DLOAD_PNG
)


target_link_libraries(SDL2_image PRIVATE
    -lSDL2
    png_static
)








