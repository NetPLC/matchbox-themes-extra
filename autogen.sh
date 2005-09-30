#!/bin/sh

dir=`echo "$0" | sed 's,[^/]*$,,'`
test "x${dir}" = "x" && dir='.'
 
if test "x`cd "${dir}" 2>/dev/null && pwd`" != "x`pwd`"
then
    echo "this script must be executed directly from the source directory."
    exit 1
fi
 
 # this might not be necessary with newer autotools:
rm -f config.cache

# older crap way
#aclocal
#autoconf
#autoheader
#automake -a -c

echo "Running:"
echo "- libtoolize"                   && \
libtoolize --copy --force --automake  && \
echo "- aclocal"                      && \
aclocal                               && \
echo "- autoconf"                     && \
autoconf                              && \
echo "- autoheader"                   && \
autoheader                            && \
echo "- automake"                     && \
automake --add-missing --gnu      && \
echo                                  && \
echo "Now run ./configure [options] and then make." && \
echo                                  && \
exit 0

#echo "Running ./configure ..."        && \
#./configure "$@"

exit 1