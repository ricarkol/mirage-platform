#!/bin/sh -ex

prefix=${1:-$PREFIX}
if [ "$prefix" = "" ]; then
  prefix=`opam config var prefix`
fi

odir=$prefix/lib
mkdir -p $odir/mirage-solo5-posix
cp libsolo5posix.a $odir/mirage-solo5-posix/libsolo5posix.a
mkdir -p $odir/pkgconfig
cp mirage-solo5-posix.pc $odir/pkgconfig/mirage-solo5-posix.pc
idir=$prefix/include/mirage-solo5-posix/include
rm -rf $idir
mkdir -p $idir
cp -r include/* $idir
