# Simple-RISC interpreter in Python

The SimpleRISC ISA implements 21 instructions and has 16 registers, r0 through r15, with r15 having alias ra (return address) and r14 sp. 
The program uses 32 bit memory addressing for load and store operations.
This Project is a simple interpreter coded in Python to run the SimpleRISC ISA programs.
This project contains 5 test programs to test the interpreter.
This project includes a macro instruction `.print` to print the value of a register or memory location.

Fork from [abhaymitra/simplerisc-emulator](https://github.com/abhaymitra/simplerisc-emulator)

## Getting Started

### Prerequisites
```
Python 3.6 or above
python3.10-venv
```

### Installation
Installation can be done using pip or venv

#### Installing using pip
```
git clone https://github.com/Migueacalle98/simplerisc-emulator.git
python3 -m pip install -r requirements.txt
```
#### Installing using venv
```
git clone https://github.com/Migueacalle98/simplerisc-emulator.git
python3 -m venv .env
source .env/bin/activate
python3 -m pip install -r requirements.txt
```

## Usage
Run the program as :
```
python3 main.py {filename}
```

## Help
For the list of arguments and their usage run:
```
python3 main.py -h
```

## Examples:
```
python3 main.py test1.asm
python3 main.py test2.asm -t
python3 main.py test3.asm -s
python3 main.py test4.asm -n
python3 main.py test5.asm -t -s -n
```
### Examples tests are as follows:

1. Write a program in SimpleRISC to compute 31 + 50 / 29
2. Write a program in SimpleRISC to determine whether a number is even. Assume the number is in r0, write 1 in r1 if its even, 0 otherwise
3. Write a program in SimpleRISC to compute NAND using only AND, OR, and NOT instructions
4. Write a program in SimpleRISC to turn then 3th bit of a value stored in r0 to 1
5. Write a program in SimpleRISC to determine if the majority of bits in a number stored in r0 are 1s or not. Write the result in r2

## Authors
* **migueacalle98** - [migueacalle98@gmail.com]([migueacalle98@gmail.com](https://github.com/Migueacalle98))
* **abhaymitra** - [abhaymitra42@gmail.com]([abhaymitra42@gmail.com](https://github.com/abhaymitra))