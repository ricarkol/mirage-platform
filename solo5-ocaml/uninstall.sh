#!/bin/sh -ex

prefix=$1
if [ "$prefix" = "" ]; then
  prefix=`opam config var prefix`
fi

odir=$prefix/lib
rm -f $odir/pkgconfig/mirage-solo5-ocaml.pc
rm -rf $odir/mirage-solo5-ocaml
rm -rf $prefix/include/mirage-solo5-ocaml
