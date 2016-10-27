%
% Function run_tests
%
%  Runs the complete set of tests for FreeMat
%  This file is autogenerated by helpgen (the help compiler)
%  Any changes will be lost!

% Copyright (c) 2002-2007 Samit Basu
% Licensed under the GPL

function run_tests
   run_path = pwd;
   myloc = which('run_tests');
   [pth,name,sfx] = fileparts(myloc);
   cd(pth);
   testlist = tlist(pth,{});
   exclude_list = {'bbtest_csvread','bbtest_source','bbtest_import'};
   spath = getpath;
   failed = {};
   quiet quiet;
   for i=1:numel(testlist);
     cd(run_path);
     save run_tests.dat run_path testlist failed spath
     printf('Running test %s...',testlist{i}(1:end-2));
     if (~any(strcmp(testlist{i}(1:end-2),exclude_list)))
       [testpath,testname] = fileparts(testlist{i});
       cd(testpath)
       success = eval(testname,'0');
     else
       success = 1;
     end
     cd(run_path);
     load run_tests.dat
     delete run_tests.dat
     setpath(spath);
     if (isempty(success) || ~success) failed = [failed,testlist(i)]; end;
     if (isempty(success) || ~success)
        printf('failed!\n');
     else
        printf('success\n');
     end
     close all
   end
   printf('****************************************\n');
   printf('*  Test Summary                        *\n');
   printf('****************************************\n');
   printf('\n');
   printf('Number of tests: %d\n',numel(testlist));
   if (numel(failed) == 0)
     printf('*** ALL TESTS PASSED ***\n');
   else
     printf('Failed tests: %d\n',numel(failed));
     for i=1:numel(failed)
        printf('   Test %s failed\n',failed{i});
     end
   end
   quiet normal;
   

function olist = tlist(root,ilist)
  olist = ilist;
  q = dir(root);
  for i=1:numel(q)
    if (q(i).isdir)
      if (q(i).name(1) ~= '.' && ~strcmp(q(i).name,'class') && ~strcmp(q(i).name,'suite'))
        printf('Dir name %s\n',q(i).name);
        olist = [olist,tlist([root,dirsep,q(i).name],{})];
      end
    else
      if (regexp(q(i).name,'^test_.*\.m$') || ... 
	  regexp(q(i).name,'^wbtest_.*\.m$') ||  ...
	  regexp(q(i).name,'^bbtest_.*\.m$'))
	olist = [olist,[root,dirsep,q(i).name]];
      end
    end
  end
