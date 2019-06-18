licenses(["notice"])

config_setting(
    name = "windows",
    values = {"host_cpu": "x64_windows"},
    visibility = ["//visibility:public"],
)

exports_files([
    "NOTICE",
])

genrule(
    name = "copy_zconf",
    srcs = ["src/zconf.h.in"],
    outs = ["src/zconf.h"],
    cmd = "cp $(location src/zconf.h.in) $@",
)

cc_library(
    name = "zlib",
    srcs = [
        "src/adler32.c",
        "src/compress.c",
        "src/crc32.c",
        "src/deflate.c",
        "src/gzclose.c",
        "src/gzlib.c",
        "src/gzread.c",
        "src/gzwrite.c",
        "src/infback.c",
        "src/inffast.c",
        "src/inflate.c",
        "src/inftrees.c",
        "src/trees.c",
        "src/uncompr.c",
        "src/zutil.c",
    ],
    hdrs = [
        "src/crc32.h",
        "src/deflate.h",
        "src/gzguts.h",
        "src/inffast.h",
        "src/inffixed.h",
        "src/inflate.h",
        "src/inftrees.h",
        "src/trees.h",
        "src/zlib.h",
        "src/zutil.h",
        ":copy_zconf",
    ],
    copts = select({
        "windows": [],
        "//conditions:default": [
            "-Wno-unused-variable",
            "-Wno-implicit-function-declaration",
        ],
    }),
    includes = [
        "src",
    ],
    visibility = ["//visibility:public"],
)
