include theos/makefiles/common.mk

TWEAK_NAME = NoCarrier
NoCarrier_FILES = Tweak.xm
NoCarrier_FRAMEWORKS = UIKit
ARCHS = armv7 arm64

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
