# model-based-agents
Intelligent agents that store a representation of the state of the environment to make decisions that require some level of memory or logic.

## vacuum cleaner

Imagine a vacuum cleaner that cleans an environment of two cells, A and B. This bot:

Remember which cell it is in and where it has already been cleaned.
Use sensors to check if the cell is dirty.
If the cell is dirty, the robot cleans it.
If the cell is already clean, move to the other cell.
Remember the last move so that it cannot go to the already cleared cells.