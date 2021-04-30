DERIVED_DATA_PATH='./.derivedData'
PLATFORM='iOS Simulator,name=iPhone 12,OS=latest'

build:
	set -o pipefail && xcodebuild \
		-project DeviceKit-Test.xcodeproj \
		-scheme DeviceKit-Test \
		-configuration Debug \
		-derivedDataPath $(DERIVED_DATA_PATH) \
		-destination platform=$(PLATFORM) \
		build-for-testing
test:
	set -o pipefail && xcodebuild \
		-project DeviceKit-Test.xcodeproj \
		-scheme DeviceKit-Test \
		-configuration Debug \
		-derivedDataPath $(DERIVED_DATA_PATH) \
		-destination platform=$(PLATFORM) \
		test-without-building