# Automated theorem proving

## Documentation
Haddock documentation is available here: http://htmlpreview.github.io/?https://github.com/siwiec/automated-theorem-proving/blob/master/docs/index.html

Overleaf: https://www.overleaf.com/read/dcwmswrxkfnr

## Bibliography
All the docs are available here: https://drive.google.com/drive/folders/1RAiGQUIDItKK5r32ny5STF44cFdxWewN?usp=sharing

## Installation and testing

```
git clone
cd automated-theorem-proving
make test
```

## Current test output
```
$ make test
rm -f tests/*/*.tptp
rm -f tests/*/*.vampire
rm -f tests/*/*.translated
rm -f tests/*/*.times
rm -f tests/*/*.e
cabal configure
Resolving dependencies...
Configuring automated-theorem-proving-0.1.0.0...
cabal build
Preprocessing executable 'automated-theorem-proving' for automated-theorem-proving-0.1.0.0..
Building executable 'automated-theorem-proving' for automated-theorem-proving-0.1.0.0..
cabal install
Resolving dependencies...
Configuring automated-theorem-proving-0.1.0.0...
Preprocessing executable 'automated-theorem-proving' for automated-theorem-proving-0.1.0.0..
Building executable 'automated-theorem-proving' for automated-theorem-proving-0.1.0.0..
Installing executable automated-theorem-proving in /home/osboxes/.cabal/bin
Warning: The directory /home/osboxes/.cabal/bin is not in the system search
path.
Installed automated-theorem-proving-0.1.0.0
./run_tests.sh
Running automated-theorem-prover for file examples/sql-tiny/test10.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test10.translated...
     SUCCESS: tptp4X exited with code 0
Running automated-theorem-prover for file examples/sql-tiny/test1_asterisk.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test1_asterisk.translated...
     SUCCESS: tptp4X exited with code 0
Running automated-theorem-prover for file examples/sql-tiny/test1_equal.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test1_equal.translated...
     SUCCESS: tptp4X exited with code 0
Running equivalence checks (vampire) for file examples/sql-tiny/test1_equal.tptp
Running equivalence checks (E) for file examples/sql-tiny/test1_equal.tptp
^CRunning automated-theorem-prover for file examples/sql-tiny/test1.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test1.translated...
     SUCCESS: tptp4X exited with code 0
Running automated-theorem-prover for file examples/sql-tiny/test1_symm.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test1_symm.translated...
     SUCCESS: tptp4X exited with code 0
Running equivalence checks (vampire) for file examples/sql-tiny/test1_symm.tptp
Running equivalence checks (E) for file examples/sql-tiny/test1_symm.tptp
^CRunning automated-theorem-prover for file examples/sql-tiny/test2.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test2.translated...
     SUCCESS: tptp4X exited with code 0
Running automated-theorem-prover for file examples/sql-tiny/test5.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test5.translated...
     SUCCESS: tptp4X exited with code 0
Running automated-theorem-prover for file examples/sql-tiny/test7.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test7.translated...
     SUCCESS: tptp4X exited with code 0
Running equivalence checks (vampire) for file examples/sql-tiny/test7.tptp
Running equivalence checks (E) for file examples/sql-tiny/test7.tptp
eprover: examples/sql-tiny/test7.tptp:59:(Column 17):a used with arity 2, but registered with arity 3
Running automated-theorem-prover for file examples/sql-tiny/test8.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test8.translated...
     SUCCESS: tptp4X exited with code 0
Running equivalence checks (vampire) for file examples/sql-tiny/test8.tptp
Running equivalence checks (E) for file examples/sql-tiny/test8.tptp
^CRunning automated-theorem-prover for file examples/sql-tiny/test9.sql...
     SUCCESS: automated-theorem-proving exited with code 0
Running tptp4X for file examples/sql-tiny/test9.translated...
     SUCCESS: tptp4X exited with code 0
Running equivalence checks (vampire) for file examples/sql-tiny/test9.tptp
Running equivalence checks (E) for file examples/sql-tiny/test9.tptp
```
