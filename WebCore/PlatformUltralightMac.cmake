add_definitions(-D__STDC_CONSTANT_MACROS -DSTATICALLY_LINKED_WITH_WTF -DSTATICALLY_LINKED_WITH_JavaScriptCore -DULTRALIGHT_IMPLEMENTATION -DCURL_STATICLIB)

include(platform/ImageDecoders.cmake)
# include(platform/TextureMapper.cmake)

list(APPEND WebCore_INCLUDE_DIRECTORIES
    "${CMAKE_BINARY_DIR}/../include/private"
    "${CMAKE_BINARY_DIR}/../include/private/JavaScriptCore"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/ANGLE"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/ANGLE/include/KHR"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/ForwardingHeaders"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/API"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/assembler"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/builtins"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/bytecode"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/bytecompiler"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/dfg"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/disassembler"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/heap"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/debugger"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/interpreter"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/jit"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/llint"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/parser"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/profiler"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/runtime"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore/yarr"
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/WTF"
    "${WEBCORE_DIR}/ForwardingHeaders"
#    "${WEBCORE_DIR}/accessibility/win"
#    "${WEBCORE_DIR}/page/win"
    "${WEBCORE_DIR}/platform/cf"
#    "${WEBCORE_DIR}/platform/cf/win"
#    "${WEBCORE_DIR}/platform/graphics/egl"
#    "${WEBCORE_DIR}/platform/graphics/opengl"
#    "${WEBCORE_DIR}/platform/graphics/opentype"
#    "${WEBCORE_DIR}/platform/graphics/win"
#    "${WEBCORE_DIR}/platform/network/win"
#    "${WEBCORE_DIR}/platform/win"
#    "${WEBCORE_DIR}/plugins/win"
#    "${THIRDPARTY_DIR}/ANGLE/include"
#    "${THIRDPARTY_DIR}/ANGLE/include/egl"
	
    "${DERIVED_SOURCES_DIR}/ForwardingHeaders/JavaScriptCore"
#    "${DirectX_INCLUDE_DIRS}"
    "${WEBKIT_LIBRARIES_DIR}/include"
#    "${WEBKIT_LIBRARIES_DIR}/include/cairo"
    "${WEBKIT_LIBRARIES_DIR}/include/SQLite"
    "${WEBKIT_LIBRARIES_DIR}/include/zlib"
	"${WEBKIT_LIBRARIES_DIR}/include/harfbuzz"
    "${JAVASCRIPTCORE_DIR}/wtf/text"
    "${WEBCORE_DIR}/loader/archive/cf"
    "${WEBCORE_DIR}/platform/cf"
#    "${WEBCORE_DIR}/platform/graphics/cairo"
    "${WEBCORE_DIR}/platform/network/curl"
	
	"${WTF_DIR}"
    "${WEBCORE_DIR}/platform/ultralight"
	"${WEBCORE_DIR}/platform/graphics/ultralight"
	"${WEBCORE_DIR}/platform/graphics/harfbuzz"
	
	"${ULTRALIGHTCORE_DIR}/include"
	
	"${SQLITE_DIR}"
)

list(APPEND WebCore_SOURCES
    platform/ultralight/AXObjectCacheUltralight.cpp
    platform/ultralight/CryptoDigestUltralight.cpp
    platform/ultralight/CursorUltralight.cpp
	platform/ultralight/DNSResolveQueueUltralight.cpp
	platform/ultralight/EditorUltralight.cpp
    platform/ultralight/EventHandlerUltralight.cpp
	platform/ultralight/EventLoopUltralight.cpp
	platform/ultralight/FileSystemUltralight.cpp
	platform/ultralight/IconUltralight.cpp
	platform/ultralight/ImageUltralight.cpp
	platform/ultralight/KeyEventUltralight.cpp
	platform/ultralight/LoggingUltralight.cpp
	platform/ultralight/MainThreadSharedTimerUltralight.cpp
	platform/ultralight/MIMETypeRegistryUltralight.cpp
	platform/ultralight/PasteboardUltralight.cpp
	platform/ultralight/PlatformMouseEventUltralight.cpp
	platform/ultralight/PlatformScreenUltralight.cpp
	platform/ultralight/RenderThemeUltralight.cpp
	platform/ultralight/ScrollbarThemeUltralight.cpp
	platform/ultralight/SharedBufferUltralight.cpp
	platform/ultralight/SoundUltralight.cpp
	platform/ultralight/SSLKeyGeneratorUltralight.cpp
    platform/ultralight/SSLKeyGeneratorUltralightMac.mm
	platform/ultralight/SynchronousLoaderClientUltralight.cpp
	platform/ultralight/TextBreakIteratorInternalICUUltralight.cpp
	platform/ultralight/WidgetUltralight.cpp
	platform/ultralight/LocalizedStringsUltralight.cpp
	platform/ultralight/HyphenationUltralight.cpp
	platform/ultralight/KeyedEncoderUltralight.cpp
	platform/ultralight/KeyedDecoderUltralight.cpp
	platform/ultralight/PreserveSymbolsUltralight.cpp
	platform/ultralight/FileURLLoader.h
	platform/ultralight/FileURLLoader.cpp
	platform/ultralight/DragImageUltralight.cpp
	platform/ultralight/DragDataUltralight.cpp
	platform/ultralight/DragControllerUltralight.cpp

	platform/graphics/ultralight/GradientUltralight.cpp
	platform/graphics/ultralight/GraphicsContextPlatformPrivateUltralight.h
	platform/graphics/ultralight/GraphicsContextUltralight.cpp
	platform/graphics/ultralight/ImageBufferDataUltralight.h
	platform/graphics/ultralight/ImageBufferUltralight.cpp
	platform/graphics/ultralight/ImageUltralight.cpp
	platform/graphics/ultralight/IntRectUltralight.cpp
	platform/graphics/ultralight/PathUltralight.cpp
	platform/graphics/ultralight/PatternUltralight.cpp
	platform/graphics/ultralight/PlatformContextUltralight.cpp
	platform/graphics/ultralight/PlatformContextUltralight.h
	platform/graphics/ultralight/RefPtrUltralight.cpp
	platform/graphics/ultralight/RefPtrUltralight.h
	platform/graphics/ultralight/TransformationMatrixUltralight.cpp
	platform/graphics/ultralight/BitmapImageUltralight.cpp
	platform/graphics/ultralight/FloatRectUltralight.cpp
	platform/graphics/ultralight/FontCacheUltralight.cpp
	platform/graphics/ultralight/FontCustomPlatformData.cpp
	platform/graphics/ultralight/FontCustomPlatformData.h
	platform/graphics/ultralight/FontPlatformDataUltralight.cpp
	platform/graphics/ultralight/FontUltralight.cpp
	platform/graphics/ultralight/FreeTypeLib.cpp
	platform/graphics/ultralight/GlyphPageUltralight.cpp
	platform/graphics/ultralight/ImageDecoderUltralight.cpp
	platform/graphics/ultralight/GraphicsLayerUltralight.cpp
	platform/graphics/ultralight/GraphicsLayerUltralight.h
	platform/graphics/ultralight/UltralightStubs.cpp
	platform/graphics/ultralight/NativeImageUltralight.cpp
	platform/graphics/ultralight/FontRenderer.h
	platform/graphics/ultralight/FontRenderer.cpp
	platform/graphics/ultralight/CanvasImage.h
	platform/graphics/ultralight/CanvasImage.cpp
	
	platform/image-decoders/ultralight/ImageBackingStoreUltralight.cpp
	
#	platform/graphics/harfbuzz/ComplexTextControllerHarfBuzz.cpp
	platform/graphics/harfbuzz/HarfBuzzFace.cpp
	platform/graphics/harfbuzz/HarfBuzzFace.h
	platform/graphics/harfbuzz/HarfBuzzFaceUltralight.cpp
	platform/graphics/harfbuzz/HarfBuzzShaper.cpp
	platform/graphics/harfbuzz/HarfBuzzShaper.h
	
    platform/Cursor.cpp
    platform/KillRingNone.cpp
    platform/LocalizedStrings.cpp
	
#	platform/cf/CFURLExtras.cpp
#    platform/cf/FileSystemCF.cpp
#    platform/cf/KeyedDecoderCF.cpp
#    platform/cf/KeyedEncoderCF.cpp
#    platform/cf/SharedBufferCF.cpp
#    platform/cf/URLCF.cpp
	
#	loader/archive/cf/LegacyWebArchive.cpp
	
	platform/text/LocaleNone.cpp
#    platform/text/cf/HyphenationCF.cpp
	
	platform/network/NetworkStorageSessionStub.cpp
	
	platform/network/curl/CookieJarCurl.cpp
    platform/network/curl/CredentialStorageCurl.cpp
    platform/network/curl/CurlCacheEntry.cpp
    platform/network/curl/CurlCacheManager.cpp
    platform/network/curl/CurlDownload.cpp
    platform/network/curl/DNSCurl.cpp
    platform/network/curl/FormDataStreamCurl.cpp
    platform/network/curl/MultipartHandle.cpp
    platform/network/curl/ProxyServerCurl.cpp
    platform/network/curl/ResourceHandleCurl.cpp
    platform/network/curl/ResourceHandleManager.cpp
    platform/network/curl/SSLHandle.cpp
    platform/network/curl/SocketStreamHandleImplCurl.cpp

    WebCorePrefix.cpp
)

list(APPEND WebCore_USER_AGENT_STYLE_SHEETS
#    ${WEBCORE_DIR}/css/themeWin.css
#    ${WEBCORE_DIR}/css/themeWinQuirks.css
)

set(WebCore_FORWARDING_HEADERS_DIRECTORIES
    .
    accessibility
    bindings
    bridge
    contentextensions
    css
    dom
    editing
    fileapi
    history
    html
    inspector
    loader
    page
    platform
    plugins
    rendering
    storage
    style
    svg
    websockets
    workers
    xml

    Modules/geolocation
    Modules/indexeddb
    Modules/websockets

    Modules/indexeddb/client
    Modules/indexeddb/legacy
    Modules/indexeddb/server
    Modules/indexeddb/shared
    Modules/notifications
    Modules/webdatabase

    # accessibility/win

    bindings/js

    bridge/c
    bridge/jsc

    css/parser

    history/cf

    html/forms
    html/parser
    html/shadow
    html/track

    loader/appcache
    loader/archive
    loader/cache
    loader/icon

    loader/archive/cf

    page/animation
    page/csp
    page/scrolling
    # page/win

    platform/animation
    platform/audio
    platform/cf
    platform/graphics
    platform/mock
    platform/network
	platform/network/curl
    platform/sql
    platform/text
    # platform/win

    # platform/cf/win

    platform/graphics/filters
    platform/graphics/opengl
    platform/graphics/opentype
    platform/graphics/texmap
    platform/graphics/transforms
    # platform/graphics/win

    platform/mediastream/libwebrtc

    platform/text/transcoder

    rendering/line
    rendering/shapes
    rendering/style
    rendering/svg

    svg/animation
    svg/graphics
    svg/properties

    svg/graphics/filters
)

set_source_files_properties("platform/ultralight/SSLKeyGeneratorUltralightMac.mm" PROPERTIES COMPILE_FLAGS "-x objective-c++")

find_library(SECURITY_LIBRARY Security)
#find_package(openssl REQUIRED)
#message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
#find_package(freetype REQUIRED)
#find_package(curl REQUIRED)
#find_package(icu REQUIRED)
#find_package(harfbuzz REQUIRED)
#find_package(jpeg REQUIRED)
find_package(zlib REQUIRED)
#find_package(png REQUIRED)
#find_package(libxml2 REQUIRED)

include_directories(
#    ${OPENSSL_INCLUDE_DIR}
#    ${FREETYPE_INCLUDE_DIRS}
#    ${CURL_INCLUDE_DIR}
#    ${ICU_INCLUDE_DIR}
#    ${HARFBUZZ_INCLUDE_DIRS}
#    ${JPEG_INCLUDE_DIR}
    ${ZLIB_INCLUDE_DIR}
#    ${PNG_INCLUDE_DIR}
#    ${LIBXML2_INCLUDE_DIR}
)

message(STATUS "Freetype include ${FREETYPE_INCLUDE_DIRS}")


list(APPEND WebCore_LIBRARIES
    ${SECURITY_LIBRARY}
#    ${OPENSSL_LIBRARIES}
#    ${FREETYPE_LIBRARIES}
#    ${CURL_LIBRARIES}
#    ${ICU_LIBRARIES}
#    ${HARFBUZZ_LIBRARIES}
#    ${JPEG_LIBRARIES}
    ${ZLIB_LIBRARIES}
#    ${PNG_LIBRARIES}
#    ${LIBXML2_LIBRARIES}
    sqlite3
    crypto
    ssl
    curl
    icudata
    icui18n
    icuuc
    freetype
    harfbuzz
    harfbuzz-icu
    jpeg
    png16
    xml2
    iconv
    xslt
)

file(MAKE_DIRECTORY ${DERIVED_SOURCES_DIR}/ForwardingHeaders/WebCore)

set(BUILD_TMP "${CMAKE_BINARY_DIR}/tmp/")
file(MAKE_DIRECTORY "${BUILD_TMP}")

set(WebCore_DERIVED_SOURCES_PRE_BUILD_COMMAND "${CMAKE_BINARY_DIR}/DerivedSources/WebCore/preBuild.sh")
set(WebCore_POST_BUILD_COMMAND "${CMAKE_BINARY_DIR}/DerivedSources/WebCore/postBuild.sh")

# Write the pre-build bash script
file(WRITE "${BUILD_TMP}/preBuild.sh" "#!/bin/bash\ncp -R ${WEBCORE_DIR}/ForwardingHeaders/ ${DERIVED_SOURCES_DIR}/ForwardingHeaders/WebCore 2>/dev/null\n")
foreach (_directory ${WebCore_FORWARDING_HEADERS_DIRECTORIES})
file(APPEND "${BUILD_TMP}/preBuild.sh" "rsync -aqW ${WEBCORE_DIR}/${_directory}/*.h ${DERIVED_SOURCES_DIR}/ForwardingHeaders/WebCore 2>/dev/null\n")
endforeach ()

# Write the post-build bash script
file(WRITE "${BUILD_TMP}/postBuild.sh" "#!/bin/bash\nrsync -aqW ${DERIVED_SOURCES_WEBCORE_DIR}/*.h ${DERIVED_SOURCES_DIR}/ForwardingHeaders/WebCore 2>/dev/null\n")

# Copy bash scripts over and chmod to executable
file (COPY "${BUILD_TMP}/preBuild.sh" DESTINATION "${CMAKE_BINARY_DIR}/DerivedSources/WebCore" FILE_PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ)
file (COPY "${BUILD_TMP}/postBuild.sh" DESTINATION "${CMAKE_BINARY_DIR}/DerivedSources/WebCore" FILE_PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ)

# Remove temp directory
file(REMOVE_RECURSE "${BUILD_TMP}")

#set(WebCore_FORWARDING_HEADERS_FILES
#)


#WEBKIT_CREATE_FORWARDING_HEADERS(WebCore DIRECTORIES ${WebCore_FORWARDING_HEADERS_DIRECTORIES} FILES ${WebCore_FORWARDING_HEADERS_FILES})

list(APPEND WebCore_LIBRARIES WTF)
list(APPEND WebCore_LIBRARIES JavaScriptCore)
list(APPEND WebCore_LIBRARIES WebCoreDerivedSources)
list(APPEND WebCore_LIBRARIES UltralightCore)
list(APPEND WebCoreTestSupport_LIBRARIES WTF)
