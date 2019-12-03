.PHONY: clean
all:
	git clone --depth 1 https://github.com/ComplianceAsCode/content
	(cd content; ./build_product rhel8)

clean:
	rm -rf content/
