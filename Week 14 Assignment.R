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
#
#
# TODO:
#   - Create a numeric vector called objective.in
#   - The first element is the cost of Gear X
#   - The second element is the cost of Gear Y

# We want to MINIMIZE total cost:
# Use the per-unit costs from the scenario above (Gear X, then Gear Y).

objective.in <- c(
  # TODO: cost of Gear X,
  # TODO: cost of Gear Y
)


# --------------------------------------------------------------------
# 2. Constraint matrix: const.mat
# --------------------------------------------------------------------
# We have two constraints:
#
#   Constraint A (Machine time):
#       ? * x1 + ? * x2 <= ?
#
#   Constraint B (Material):
#       ? * x1 + ? * x2 <= ?
#
# In matrix form, rows = constraints, columns = variables (x1, x2).

#
# TODO:
#   - Build a 2 x 2 matrix
#   - Row 1 = coefficients for Constraint A (machine time)
#   - Row 2 = coefficients for Constraint B (material)
#   - Use byrow = TRUE

const.mat <- matrix(
  c(
    # Row 1: coefficients for x1 and x2 in Constraint A
    # TODO: fill in 2 numbers here,
    # Row 2: coefficients for x1 and x2 in Constraint B
    # TODO: fill in 2 numbers here
  ),
  nrow = 2,
  byrow = TRUE
)


# --------------------------------------------------------------------
# 3. Constraint directions: const.dir
# --------------------------------------------------------------------
# Both constraints say "less than or equal to" the available resource.
#
# TODO:
#   - Create a character vector const.dir
#   - Use "<=" for each constraint

const.dir <- c(
  # TODO: direction for Constraint A,
  # TODO: direction for Constraint B
)


# --------------------------------------------------------------------
# 4. Right-hand side: const.rhs
# --------------------------------------------------------------------
# The right-hand side (RHS) is the total available resource:
#
#   Constraint A: total machine time = 60 hours
#   Constraint B: total steel        = 120 units
#
# TODO:
#   - Create a numeric vector const.rhs with these two totals
#   - Put them in the same order as the constraints in const.mat

const.rhs <- c(
  # TODO: total machine time,
  # TODO: total steel
)


# --------------------------------------------------------------------
# 5. Solve the model and inspect the result
# --------------------------------------------------------------------
# After you have filled in objective.in, const.mat, const.dir, and const.rhs,
# you can uncomment the code below to solve the linear program.
#
# We are MINIMIZING cost, so use direction = "min".
#
# lp.solution <- lp(
#   direction   = "min",
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
