config_setting(
    name = "linux_x64",
    constraint_values = [
        "@platforms//os:linux",
        "@platforms//cpu:x86_64",
    ],
)

cc_library(
    name = "z",
    srcs = glob(
        include = [
            "*.c",
            "*.h",
        ],
        exclude = [
            "zconf.h",
            "zlib.h",
        ],
    ),
    hdrs = [
        "zconf.h",
        "zlib.h",
    ],
    defines = ["_LARGEFILE64_SOURCE=1"],
    includes = [
        ".",
    ],
)

alias(
    name = "zlib",
    actual = "z",
    visibility = [
        "//visibility:public",
    ],
)

cc_test(
    name = "zlib_example",
    srcs = [
        "test/example.c",
    ],
    deps = [
        ":z",
    ],
)

cc_test(
    name = "zlib_example64",
    srcs = [
        "test/example.c",
    ],
    defines = ["_FILE_OFFSET_BITS=64"],
    deps = [
        ":z",
    ],
)
