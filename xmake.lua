-- xmake port of CMakeLists.txt, targeting the 1.7-capable CommonLibSSE-NG
set_xmakever("3.0.5")

includes(os.getenv("CommonLibSSE-NG"))

set_project("PAPER")
set_version("2.2.4")
set_license("Apache-2.0")

set_languages("c++23")
set_warnings("allextra")
set_defaultmode("releasedbg")

add_rules("mode.debug", "mode.releasedbg")

set_config("skyrim_vr", false)

target("PAPER")
    add_deps("commonlibsse-ng")

    add_rules("commonlibsse-ng.plugin", {
        name = "PAPER",
        author = "Borgut1337",
        description = "The PAper Papyrus ExtendeR"
    })

    add_files("src/**.cpp")
    add_headerfiles("src/**.h", "include/**.h")
    add_includedirs("src", "include")
    set_pcxxheader("src/PCH.h")
