#!/bin/sh
mount -o rw,remount /system_root
cd /system_root/system/product/overlay
rm -rf *infinix* *sony* *alldocube* *asus* *blackview* *bq-jeice* *duoqin* *fairphone* *htc* *huawei* *lenovo* *lg* *mbi* *meizu* *spen* *moto* *nokia* *nubia* *oneplus* *onn* *oppo* *oukitel* *razer* *realme* *samsung* *sharp* *teclast* *tecno* *teracube* *umidigi* *unihertz* *vivo* *vsmart* *xiaomi*
cd /system_root/system/system_ext/apex/
ls | awk '/vndk\.v[0-9][0-9]/ && !/vndk\.v31/' | xargs rm
rm -rf com.android.vndk.current/lib*
cd /
mount -o ro,remount /system_root
