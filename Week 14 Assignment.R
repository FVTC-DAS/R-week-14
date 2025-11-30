# Week 14 Formative: Optimization Problem Setup with lpSolve
# Student: [Your Name Here]
# 
# Goal:
# Translate the Gear X / Gear Y word problem into the four inputs
# lpSolve expects:
#   1) objective.in  - objective function coefficients
#   2) const.mat     - constraint matrix
#   3) const.dir     - constraint directions
#   4) const.rhs     - right-hand side (RHS) limits
#
# Scenario (summary):
# - Minimize total production cost of Gear X and Gear Y.
# - Costs:
#     Gear X: $5 per unit
#     Gear Y: $8 per unit
# - Machine Time (Constraint A):
#     Gear X: 2 hours per unit
#     Gear Y: 1 hour per unit
#     Total available: 60 hours
# - Material (Constraint B):
#     Gear X: 3 units of steel per unit
#     Gear Y: 4 units of steel per unit
#     Total available: 120 units
# - Demand (Constraint C):
#     The factory must produce at least 35 gears in total (Gear X + Gear Y).
#
# Decision variables:
#   x1 = number of Gear X produced
#   x2 = number of Gear Y produced
#
# Your job: fill in the TODOs below.

# --------------------------------------------------------------------
# 0. Load lpSolve
# --------------------------------------------------------------------

# TODO: Load the lpSolve package so we can use lp()
# Example: library(lpSolve)


# --------------------------------------------------------------------
# 1. Objective function coefficients: objective.in
# --------------------------------------------------------------------
# We want to MINIMIZE total cost:
#   Cost = ? * x1 + ? * x2
#
# TODO:
#   - Create a numeric vector called objective.in
#   - The first element is the cost of Gear X
#   - The second element is the cost of Gear Y

objective.in <- c(
  # TODO: cost of Gear X,
  # TODO: cost of Gear Y
)


# --------------------------------------------------------------------
# 2. Constraint matrix: const.mat
# --------------------------------------------------------------------
# We now have THREE constraints:
#
#   Constraint A (Machine time):
#       ? * x1 + ? * x2 <= 60
#
#   Constraint B (Material):
#       ? * x1 + ? * x2 <= 120
#
#   Constraint C (Demand):
#       ? * x1 + ? * x2 >= 35   (at least 35 gears total)
#
# In matrix form:
#   - Rows = constraints (A, B, C)
#   - Columns = variables (x1, x2)
#
# TODO:
#   - Build a 3 x 2 matrix
#   - Row 1 = coefficients for Constraint A (machine time)
#   - Row 2 = coefficients for Constraint B (material)
#   - Row 3 = coefficients for Constraint C (demand: x1 + x2 >= 35)
#   - Use byrow = TRUE

const.mat <- matrix(
  c(
    # Row 1: coefficients for x1 and x2 in Constraint A (machine time)
    # TODO: fill in 2 numbers here,
    # Row 2: coefficients for x1 and x2 in Constraint B (material)
    # TODO: fill in 2 numbers here,
    # Row 3: coefficients for x1 and x2 in Constraint C (demand: x1 + x2 >= 35)
    # TODO: fill in 2 numbers here
  ),
  nrow = 3,
  byrow = TRUE
)


# --------------------------------------------------------------------
# 3. Constraint directions: const.dir
# --------------------------------------------------------------------
# Constraint directions match the inequality signs:
#
#   Constraint A (machine):  <=
#   Constraint B (material): <=
#   Constraint C (demand):   >=
#
# TODO:
#   - Create a character vector const.dir of length 3
#   - Use "<=" for the first two constraints, ">=" for the demand constraint

const.dir <- c(
  # TODO: direction for Constraint A,
  # TODO: direction for Constraint B,
  # TODO: direction for Constraint C
)


# --------------------------------------------------------------------
# 4. Right-hand side: const.rhs
# --------------------------------------------------------------------
# The right-hand side (RHS) is the total resource / requirement:
#
#   Constraint A: total machine time = ? hours
#   Constraint B: total steel        = ? units
#   Constraint C: total demand       = at least ? gears
#
# TODO:
#   - Create a numeric vector const.rhs of length 3
#   - Put them in the same order as the constraints in const.mat

const.rhs <- c(
  # TODO: total machine time,
  # TODO: total steel,
  # TODO: total demand (minimum total gears)
)


# --------------------------------------------------------------------
# 5. Solve the model and inspect the result (optional but recommended)
# --------------------------------------------------------------------
# After you have filled in objective.in, const.mat, const.dir, and const.rhs,
# you can uncomment the code below to solve the linear program.
#
# We are MINIMIZING cost, so use direction = "min".
#
# lp.solution <- lp(
#   direction    = "min",
#   objective.in = objective.in,
#   const.mat    = const.mat,
#   const.dir    = const.dir,
#   const.rhs    = const.rhs
# )
#
# # Print the full solution object
# lp.solution
#
# # Print the optimal decision variables (x1 and x2)
# lp.solution$solution
#
# # Print the minimum total cost
# lp.solution$objval
