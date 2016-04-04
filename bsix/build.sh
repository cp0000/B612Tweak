#!/bin/sh -x
rm com.cp.bsix_0.0.1-*_iphoneos-arm.deb
make package
mv com.cp.bsix_0.0.1-*_iphoneos-arm.deb tmp.deb
mv tmp.deb com.cp.bsix_0.0.1-1_iphoneos-arm.deb
scp -P 2222 com.cp.bsix_0.0.1-1_iphoneos-arm.deb root@localhost:/usr/