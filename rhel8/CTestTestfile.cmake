# CMake generated Testfile for 
# Source directory: /home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/rhel8
# Build directory: /home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/rhel8
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rhel8-ansible-playbooks-generated-for-all-rules "env" "PYTHONPATH=/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content" "/usr/bin/python3" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/tests/ansible_playbooks_generated_for_all_rules.py" "--build-dir" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build" "--product" "rhel8")
add_test(rhel8-ansible-assert-playbooks-schema "sh" "-c" "/usr/bin/python3 \$@" "_" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/tests/assert_ansible_schema.py" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/rhel8/playbooks/all/*")
add_test(validate-ssg-rhel8-cpe-dictionary.xml "/usr/bin/oscap" "cpe" "validate" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-cpe-dictionary.xml")
add_test(validate-ssg-rhel8-cpe-oval.xml "/usr/bin/oscap" "oval" "validate" "--schematron" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-cpe-oval.xml")
add_test(validate-ssg-rhel8-xccdf.xml "/usr/bin/oscap" "xccdf" "validate" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-xccdf.xml")
add_test(verify-references-ssg-rhel8-xccdf.xml "env" "PYTHONPATH=/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content" "/usr/bin/python3" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build-scripts/verify_references.py" "--rules-with-invalid-checks" "--ovaldefs-unused" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-xccdf.xml")
add_test(verify-ssg-rhel8-xccdf.xml-override-true-all-profile-titles "/usr/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"title\"][not(@override=\"true\")]" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-xccdf.xml")
set_tests_properties(verify-ssg-rhel8-xccdf.xml-override-true-all-profile-titles PROPERTIES  WILL_FAIL "true")
add_test(verify-ssg-rhel8-xccdf.xml-override-true-all-profile-descriptions "/usr/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"description\"][not(@override=\"true\")]" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-xccdf.xml")
set_tests_properties(verify-ssg-rhel8-xccdf.xml-override-true-all-profile-descriptions PROPERTIES  WILL_FAIL "true")
add_test(validate-ssg-rhel8-oval.xml "/usr/bin/oscap" "oval" "validate" "--schematron" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-oval.xml")
add_test(validate-ssg-rhel8-ds.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-ds.xml")
add_test(validate-ssg-rhel8-ds-1.2.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/runner/work/rhel8-stig-latest/rhel8-stig-latest/content/build/ssg-rhel8-ds-1.2.xml")
