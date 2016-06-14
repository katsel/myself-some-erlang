Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V7.3.1  (abort with ^G)
1> c(calc).
calc.erl:26: Warning: function sum/1 is unused
calc.erl:27: Warning: function sum/2 is unused
{ok,calc}
2> eunit:test(calc).
  Test passed.
ok
3> eunit:test(ops).
undefined
*** test module not found ***
**ops

=======================================================
  Failed: 0.  Skipped: 0.  Passed: 0.
One or more tests were cancelled.
error
4> c(ops).
{ok,ops}
5> eunit:test(ops).
  There were no tests to run.
ok
6> c(ops_tests).   
{ok,ops_tests}
8> eunit:test(ops).
  Test passed.
ok
9> c(ops_tests).   
{ok,ops_tests}
10> eunit:test(ops).
ops_tests: add_test (module 'ops_tests')...*failed*
in function ops_tests:add_test/0 (ops_tests.erl, line 5)
**error:{badmatch,4}
  output:<<"">>

=======================================================
  Failed: 1.  Skipped: 0.  Passed: 0.
error
12> c(ops_tests).   
ops_tests.erl:12: Warning: this expression will fail with a 'badarith' exception 
{ok,ops_tests}
13> eunit:test(ops).
ops_tests: new_add_test...*failed*
in function ops_tests:'-new_add_test/0-fun-3-'/1 (ops_tests.erl, line 11)
in call from ops_tests:new_add_test/0 (ops_tests.erl, line 11)
**error:{assertEqual,[{module,ops_tests},
              {line,11},
              {expression,"ops : add ( 1 , 1 )"},
              {expected,3},
              {value,2}]}
  output:<<"">>

=======================================================
  Failed: 1.  Skipped: 0.  Passed: 1.
error
14> c(ops_tests).   
ops_tests.erl:12: Warning: this expression will fail with a 'badarith' exception 
{ok,ops_tests}
15> eunit:test(ops).
  2 tests passed.
ok
16> c(ops_tests).   
ops_tests.erl:12: Warning: this expression will fail with a 'badarith' exception 
ops_tests.erl:17: Warning: this expression will fail with a 'badarith' exception 
{ok,ops_tests}
27> eunit:test(ops).
ops_tests:25: test_them_values...*failed*
in function ops_tests:'-test_them_values/0-fun-4-'/1 (ops_tests.erl, line 25)
**error:{assertEqual,[{module,ops_tests},
              {line,25},
              {expression,"ops : add ( 1 , 1 )"},
              {expected,3},
              {value,2}]}
  output:<<"">>

=======================================================
  Failed: 1.  Skipped: 0.  Passed: 6.
error
30> c(ops_tests).   
ops_tests.erl:12: Warning: this expression will fail with a 'badarith' exception 
ops_tests.erl:17: Warning: this expression will fail with a 'badarith' exception 
{ok,ops_tests}
31> eunit:test(ops).
ops_tests:25: test_them_values...*failed*
in function ops_tests:'-test_them_values/0-fun-4-'/1 (ops_tests.erl, line 25)
**error:{assertEqual,[{module,ops_tests},
              {line,25},
              {expression,"ops : add ( 1 , 1 )"},
              {expected,3},
              {value,2}]}
  output:<<"">>

ops_tests: new_add_test...*failed*
in function ops_tests:'-new_add_test/0-fun-3-'/1 (ops_tests.erl, line 11)
in call from ops_tests:new_add_test/0 (ops_tests.erl, line 11)
**error:{assertEqual,[{module,ops_tests},
              {line,11},
              {expression,"ops : add ( 1 , 1 )"},
              {expected,3},
              {value,2}]}
  output:<<"">>

=======================================================
  Failed: 2.  Skipped: 0.  Passed: 5.
error
32> eunit:test({generator, fun ops_tests_add_test_/0}).
** exception error: undefined function erl_eval:ops_tests_add_test_/0
33> eunit:test({generator, fun ops_tests:add_test_/0}).
ops_tests:25: test_them_values...*failed*
in function ops_tests:'-test_them_values/0-fun-4-'/1 (ops_tests.erl, line 25)
**error:{assertEqual,[{module,ops_tests},
              {line,25},
              {expression,"ops : add ( 1 , 1 )"},
              {expected,3},
              {value,2}]}
  output:<<"">>

=======================================================
  Failed: 1.  Skipped: 0.  Passed: 4.
error
