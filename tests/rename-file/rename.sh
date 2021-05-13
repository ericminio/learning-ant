#!/bin/bash
source ./support/dir.sh

function test_rename_file {
    DIR=$(current_dir ${BASH_SOURCE[0]})
    ant -buildfile $DIR/build.xml
    local actual=`grep "hello" $DIR/inspect/world.txt`

    assertequals "$actual" "hello world"
}
