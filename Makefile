# Copyright (C) 2014 Cloudius Systems, Ltd.
#
# This work is open source software, licensed under the terms of the
# BSD license as described in the LICENSE file in the top-level directory.

TARGET = sqlite

quiet = $(if $V, $1, @echo " $2"; $1)
very-quiet = $(if $V, $1, @$1)

all: $(TARGET).so bench.sql

$(TARGET).so:
	./GET
bench.sql:
	ruby bench.rb > bench.sql

clean:
	$(call quiet, rm -rf upstream $(TARGET).so, CLEAN)
