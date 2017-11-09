include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = igtrans
igtrans_FILES = igxRootListController.m 
igtrans_INSTALL_PATH = /Library/PreferenceBundles
igtrans_FRAMEWORKS = UIKit
igtrans_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/igtrans.plist$(ECHO_END)
