include $(THEOS)/makefiles/common.mk

TWEAK_NAME = warnaig
warnaig_FILES = Tweak.xm
warnaig_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += igtrans
include $(THEOS_MAKE_PATH)/aggregate.mk
