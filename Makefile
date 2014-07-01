GO_EASY_ON_ME=1

TARGET := iphone:7.0:2.0
ARCHS := armv6 arm64

#ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FuckThatBounce
FuckThatBounce_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
