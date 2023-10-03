import time
import argparse
from lib import run, instruction_count, noInstructions

parser = argparse.ArgumentParser()
parser.add_argument("filename", help="The filename of the assembly program to execute.")
parser.add_argument(
    "-t",
    "--timer",
    help="Displays the time taken by the assembly program after it finishes",
    action="store_true",
)
parser.add_argument(
    "-n",
    "--n",
    help="Displays the total number of instruction used.",
    action="store_true",
)
parser.add_argument(
    "-s",
    "--statistics",
    help="Displays statistics about operations used",
    action="store_true",
)
args = parser.parse_args()

message = ""

if args.timer:
    global startTime
    startTime = time.time()

run(args.filename)


if args.statistics:
    for key in instruction_count.keys():
        message += key + ":	" + str(instruction_count[key]) + "\n"

if args.timer:
    global endTime
    endTime = time.time()
    message += "\nThe program took " + str(endTime - startTime) + " seconds\n"
if args.n:
    message += "Total number of instructions used were:  " + str(noInstructions)
if args.timer or args.statistics or args.n:
    print(message)
