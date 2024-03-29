PACKAGE_NAME := ./DISampleAppPackage
MOCKOLO_SCAN_PATH := ./$(PACKAGE_NAME)/Sources
MOCKOLO_OUTPUT_PATH := ./$(PACKAGE_NAME)/Sources/Presentation/Domain/Entity/Mocks.swift

.PHONY: help
help:
	@awk 'BEGIN {FS = ":"} /^[a-zA-Z0-9_-]+:/ {if ($$2 == "") print "make " $$1}' Makefile

.PHONY: mint-bootstrap
mint-bootstrap:
	swift run --package-path $(PACKAGE_NAME) mint bootstrap

.PHONY: githooks-setup
githooks-setup:
	git config --local core.hooksPath .githooks

.PHONY: githooks-cleanup
githooks-cleanup:
	git config --local --unset core.hooksPath .githooks

.PHONY: swiftformat-run
swiftformat-run:
	swift run --package-path $(PACKAGE_NAME) mint run swiftformat .

.PHONY: swiftformat-lint
swiftformat-lint:
	swift run --package-path $(PACKAGE_NAME) mint run swiftformat --lint .

.PHONY: mockolo-run
mockolo-run:
	swift run --package-path $(PACKAGE_NAME) mint run mockolo -s $(MOCKOLO_SCAN_PATH) -d $(MOCKOLO_OUTPUT_PATH) --custom-imports DomainLayer Combine -x Images Strings --mock-final

.PHONY: sourcery-presentation-code-gen
sourcery-presentation-code-gen:
	./Sourcery/Script/presentation_code_gen.sh $(VIEW) $(ROUTER)

.PHONY: presentation-code-gen
presentation-code-gen:
	$(MAKE) sourcery-presentation-code-gen
	$(MAKE) mockolo-run

.PHONY: swift-docc-gen
swift-docc-gen:
	./Swift-DocC/Script/docc_gen.sh $(PACKAGE_NAME)

.PHONY: periphery-scan
periphery-scan:
	./Periphery/Script/periphery_scan.sh $(CURDIR)

.PHONY: spm-dependencies-mermaid-gen
spm-dependencies-mermaid-gen:
	./Depermaid/Script/spm_dependencies_mermaid_gen.sh

.PHONY: document-update
document-update:
	$(MAKE) swift-docc-gen
	$(MAKE) periphery-scan
	$(MAKE) spm-dependencies-mermaid-gen

.PHONY: setup
setup:
	$(MAKE) mint-bootstrap
	$(MAKE) githooks-setup
	$(MAKE) open

.PHONY: cleanup
cleanup:
	$(MAKE) githooks-cleanup
