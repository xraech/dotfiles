#!/bin/sh

if grep -q close /proc/acpi/button/lid/LID0/state ; then
	echo hi
fi
