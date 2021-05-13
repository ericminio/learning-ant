#!/bin/bash
source ./support/dir.sh

function test_rename_java_class {
    DIR=$(current_dir ${BASH_SOURCE[0]})
    ant -buildfile $DIR/build.xml
    local actual=`grep "Hello_World" $DIR/inspect/Hello_World.java`

    assertequals "$actual" "public class Hello_World {"
}
