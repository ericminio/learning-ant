#!/bin/bash
source ./support/dir.sh

function test_rename_file {
    DIR=$(current_dir ${BASH_SOURCE[0]})
    ant -buildfile $DIR/build.xml rename
    local actual=`grep "hello" $DIR/build/world.txt`

    assertequals "$actual" "hello world"
}
