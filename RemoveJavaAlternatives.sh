#!/bin/bash
# After install open JDK, generate some soft links from /usr/bin/ to /usr/lib,
# Config it through update-alternatives instead if fixed link, so remobe these links.
dirarr=("/etc/alternatives" "/usr/bin")
filearr=("extcheck" "idlj" "extcheck" "jcmd" "jconsole" "jdb" "jhat" "jinfo" "jmap" "jps" "jrunscript" "jsadebugd" "jstack" "jstat" "jstatd" "native2ascii" "rmic" "schemagen" "serialver" "wsgen" "wsimport" "xjc")


#2.遍历删除  
for dir in ${dirarr[*]}
do
  for file in ${filearr[*]}
  do
  case $file in
  *)
  rm -rf $dir/$file;;
  esac
  done
done
