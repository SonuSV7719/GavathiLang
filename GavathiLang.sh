#!/usr/bin/python3
# -*- coding: utf-8 -*-
import sys
import os
import re

if len(sys.argv) < 2:
    print("Usage: GavathiLang filename.gavathi")
    sys.exit(1)

file_name = sys.argv[1]
# full_path = os.path.abspath(file_name)

if os.path.exists(file_name):
    full_path = os.path.abspath(file_name)
else:
    print("File does not exist.")


with open(full_path) as file:
    if file.readline().strip() != 'hello gavathilang':
        raise ValueError("Error: starting of gavathilang should be 'hello gavathilang'")
    data = file.read()

if data[-15: ] != 'bye gavathilang':
    raise ValueError("Error: ending of gavathilang should be 'bye gavathilang'")

keyword = {
    r'nahi tar jewha bhawa' : 'elif',
    r'(bol naa bhawa)\s+' : 'print',
    r'(hello gavathilang)\s+' : '',
    r'(bye gavathilang)\s+' : '',
    r'(bhawa he ahe)\s+' : '',
    r'jewha bhawa' : 'if',
    r'(asel)\s+' : '',
    r'asel' : '',
    r'jewha paryant bhawa' : 'while',
    r'(ahe)\s+' : '',
    r'ahe' : '',
    r'(bhawa input de naa)\s+' : 'input',
    r'(thamb bhawa)\s+' : 'break',
    r'(chalu thew bhawa)\s+' : 'continue',
    r'bye gavathilang' : '',
    r'bol naa bhawa' : 'print',
    r'nahi tar bhawa' : 'else',
    r'nahi tar' : 'else'
}


for pattern, replaceword in keyword.items():
    # print(pattern, replaceword)
    mypattern = re.compile(pattern=pattern)
    data = mypattern.sub(replaceword, data)
pattern = re.compile(r'(bye gavathilang)\s+')
data = pattern.sub(r'', data)
exec(data)