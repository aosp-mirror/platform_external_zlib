LOCAL_PATH := $(call my-dir)

$(TARGET_OUT_COMMON_GEN)/zlib_fingerprint : $(wildcard $(LOCAL_PATH)/src/*.[ch])
	printf '%s\n' $^ | LC_ALL=C sort | xargs cat | shasum -a 256 | \
		awk '{printf $$1}' > $@
