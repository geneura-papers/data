#!/usr/bin/env lua

csvigo = require "csvigo"
data = csvigo.load{path='quiebras-spain-2005-clean.csv', mode='large'}
print(data)
