#!/bin/bash

function test_ready {
    local actual=`ant -version | cut -d" " -f 2`

    assertequals "$actual" "Ant(TM)"
}
