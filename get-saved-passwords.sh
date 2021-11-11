#!/usr/bin/env python3
# pip3 install secretstorage
import secretstorage

bus = secretstorage.dbus_init()
collection = secretstorage.get_default_collection(bus)
for item in collection.get_all_items():
    print(" ================= ")
    print(item.get_label())
    print(item.get_secret())
    print(item.get_attributes())
