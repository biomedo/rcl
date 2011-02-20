;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-02-18 11:10:13 Friday by lian>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; User defined information
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; persistent-path
(defconst lian-source-file-dir
  (list "/glouton/struct/lian/develop/Xfem/Xfem/Xfem/Xfem"
        "/glouton/struct/lian/develop/Xext/Xext/Xext"
        "/glouton/struct/lian/develop/Xext/Octree/Octree"
        "/glouton/struct/lian/develop/Xext/OctreeInterface/OctreeInterface"
        "/glouton/struct/lian/develop/SolverInterfaces/SolverBase/SolverBase"
        "/glouton/struct/lian/develop/SolverInterfaces/SuperLu/SuperLu"
        "/glouton/struct/lian/develop/SolverInterfaces/Lapack/Lapack"
        "/glouton/struct/lian/develop/SolverInterfaces/Taucs/Taucs"
        "/glouton/struct/lian/develop/SolverInterfaces/PetscSeq/PetscSeq"
        "/glouton/struct/lian/develop/SolverInterfaces/NonLinearSolver/NonLinearSolver"
        "/glouton/struct/lian/develop/Trellis/AOMD/AOMD/src"
        "/glouton/struct/lian/develop/Trellis/AOMD/Util/Util/src"
        "/glouton/struct/lian/develop/MeshMachine/LinearAlgebra/LinearAlgebra"
        "/glouton/struct/lian/develop/Applis/Homog/Homog"
        "/glouton/struct/lian/develop/Applis/ITK_Utility/ITK_Utility"))
;; my include path
(defconst lian-head-file-dir
  (list "/glouton/struct/lian/develop/Xfem/Xfem/include/"
        "/glouton/struct/lian/develop/Applis/Homog/include"
        "/glouton/struct/lian/develop/Applis/ITK_Utility/include"
        "/glouton/struct/lian/develop/Xext/Xext/include"
        "/glouton/struct/lian/develop/Xext/Octree/include"
        "/glouton/struct/lian/develop/Xext/OctreeInterface/include"
        "/glouton/struct/lian/develop/SolverInterfaces/SolverBase/include"
        "/glouton/struct/lian/develop/SolverInterfaces/SuperLu/include"
        "/glouton/struct/lian/develop/SolverInterfaces/Lapack/include"
        "/glouton/struct/lian/develop/SolverInterfaces/Taucs/include"
        "/glouton/struct/lian/develop/SolverInterfaces/PetscSeq/include"
        "/glouton/struct/lian/develop/SolverInterfaces/NonLinearSolver/include"
        "/glouton/struct/lian/develop/Trellis/AOMD/include"
        "/glouton/struct/lian/develop/Trellis/Util/include"
        "/glouton/struct/lian/develop/Trellis/model/include"
        "/glouton/struct/lian/develop/MeshMachine/LinearAlgebra/include"
        "/glouton/struct/lian/develop/Applis/Physics/include"))

(defconst lian-tags-table-list
  (list "/glouton/struct/lian/develop/Xfem/Xfem/tags"
        "/glouton/struct/lian/develop/Xext/Xext/tags"
        "/glouton/struct/lian/develop/Xext/Octree/tags"
        "/glouton/struct/lian/develop/Xext/OctreeInterface/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/SolverBase/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/SuperLu/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/Lapack/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/Taucs/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/PetscSeq/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/NonLinearSolver/tags"
        "/glouton/struct/lian/develop/Trellis/AOMD/tags"
        "/glouton/struct/lian/develop/MeshMachine/LinearAlgebra/tags"
        "/glouton/struct/lian/develop/Applis/Homog/tags"
        "/glouton/struct/lian/develop/Applis/ITK_Utility/tags"))

(defconst lian-working-dir
  (list "/glouton/struct/lian/develop/Applis/ITK_Utility/ITK_Utility"
        "/glouton/struct/lian/develop/Applis/Homog/Homog"
        "/glouton/struct/lian/develop"
        "/cassini/struct/lian/develop/BatchCalculation/Multi_Homog_Random_Circle_Fiber_Matrix_Image_10240_R20/"))

(defconst lian-emacs-lisp-dir "/glouton/struct/lian/develop/tools/svn_cvs/rcl/lian-emacs-lisp")

(provide 'lian-info)
