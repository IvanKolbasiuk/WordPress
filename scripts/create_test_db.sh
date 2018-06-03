#!/bin/bash
RESULT=`mysqlshow -uroot | grep -o test`
if [ "$RESULT" == "test" ]; then
    echo YES
else
mysql -uroot <<CREATE_TEST_DB
CREATE DATABASE test;
CREATE_TEST_DB
fi
