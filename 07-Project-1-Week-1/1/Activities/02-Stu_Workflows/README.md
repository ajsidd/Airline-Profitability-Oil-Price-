# Review Questions

This document contains review questions about Git basics.

## Instructions

For the following diagramming exercises, either **draw your solutions on paper** or use the interface provided at [Git Viz](https://peleke.github.io/git-viz/).

### Overview

* Consider the example from the lecture, where we created a branch for our data analysis. Why did we create a new branch for this? Why _not_ simply do this on `main`?

* Write down two advantages to creating branches instead of working directly on `main`.

--

#### Branching

* **Consider the following commit history:**

  ```bash
  (main) | [m1] -> [m2] -> [m3] -> [m4]
  ```

* Draw a new branch called `plotting_data`. It should branch from the second commit to `main`.

* When you first create `plotting_data`, are the files on that branch the same as the files in `[m1]`? What about `[m2]`? Why or why not?

* Add two commits to the `main` branch.

* Add two commits to the `plotting_data` branch, and name them `[pd1]` and `[pd2]`, respectively.

* Are the files in `[pd1]` and `[m3]` the same? Why or why not?

---

#### Merging

* Merge `[pd2]` with `main`.

* Explain how this merge changes the files in `main`.

* **Consider the following history:**

  ```bash
  (main)        | [m1]-[m2]-[m3]-[m4]- - -- - -- - -[m5]
                                \               / (M)
  (plotting_data) |              \-[pd1]-[pd2]-/
  ```

  * Assume that `[m4]` on `main` updates `clean_data.py` but does not change the directory structure.

  * Assume that the root project directory takes the following structure at each commit:

  ```bash
  [m4]
  root/
    |_analyze_data.py
    |_clean_data.py
    |_output/
      |_cleanedRideData.csv
    |_Resources/
      |_rideData.csv

  [pd2]
  root/
    |_analyze_data.py
    |_clean_data.py
    |_helpers.py
    |_plot_data.py
    |_output/
      |_cleanedRideData.csv
      |_plots.pdf
    |_Resources/
      |_rideData.csv
  ```

* When we merge `main` and `plotting_data`, which version of each file do we get?

* Draw the directory structure for the last commit to `main`&mdash;after the merge&mdash;and label each file with the branch it originated from. Assume that the only files changed on `plotting_data` were `helpers.py` and `plot_data.py`.

---

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
