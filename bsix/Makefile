THEOS_DEVICE_IP =127.0.0.1
TARGET=iphone:9.1:7.0
ARCHS=armv7



include theos/makefiles/common.mk

TWEAK_NAME = bsix


bsix_FILES =Tweak.xm Utility/logger.m Utility/CPUtils.m
bsix_FRAMEWORKS = Foundation UIKit


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
