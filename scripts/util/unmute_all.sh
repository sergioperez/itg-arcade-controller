#!/bin/bash
for x in `amixer controls | grep layback` ; do amixer cset "${x}" on ; done

for x in `amixer controls | grep layback` ; do amixer cset "${x}" 100% ; done

amixer set PCM 74%
amixer set Master 70%
