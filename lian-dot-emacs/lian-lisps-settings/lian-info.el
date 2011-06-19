;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-16 21:31:43 Thursday by lian>

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
  (list (concat (getenv "DEVROOT") "/Xfem/Xfem/Xfem/Xfem")
        (concat (getenv "DEVROOT") "/Xext/Xext/Xext")
        (concat (getenv "DEVROOT") "/Xext/Octree/Octree")
        (concat (getenv "DEVROOT") "/Xext/OctreeInterface/OctreeInterface")
        (concat (getenv "DEVROOT") "/SolverInterfaces/SolverBase/SolverBase")
        (concat (getenv "DEVROOT") "/SolverInterfaces/SuperLu/SuperLu")
        (concat (getenv "DEVROOT") "/SolverInterfaces/Lapack/Lapack")
        (concat (getenv "DEVROOT") "/SolverInterfaces/Taucs/Taucs")
        (concat (getenv "DEVROOT") "/SolverInterfaces/PetscSeq/PetscSeq")
        (concat (getenv "DEVROOT") "/SolverInterfaces/NonLinearSolver/NonLinearSolver")
        (concat (getenv "DEVROOT") "/Trellis/AOMD/AOMD/src")
        (concat (getenv "DEVROOT") "/Trellis/AOMD/Util/Util/src")
        (concat (getenv "DEVROOT") "/MeshMachine/LinearAlgebra/LinearAlgebra")
        (concat (getenv "DEVROOT") "/Applis/Homog/Homog")
        (concat (getenv "DEVROOT") "/Applis/ITK_Utility/ITK_Utility")))
;; my include path
(defconst lian-head-file-dir
  (list (concat (getenv "DEVROOT") "/Xfem/Xfem/include/")
        (concat (getenv "DEVROOT") "/Applis/Homog/include")
        (concat (getenv "DEVROOT") "/Applis/ITK_Utility/include")
        (concat (getenv "DEVROOT") "/Xext/Xext/include")
        (concat (getenv "DEVROOT") "/Xext/Octree/include")
        (concat (getenv "DEVROOT") "/Xext/OctreeInterface/include")
        (concat (getenv "DEVROOT") "/SolverInterfaces/SolverBase/include")
        (concat (getenv "DEVROOT") "/SolverInterfaces/SuperLu/include")
        (concat (getenv "DEVROOT") "/SolverInterfaces/Lapack/include")
        (concat (getenv "DEVROOT") "/SolverInterfaces/Taucs/include")
        (concat (getenv "DEVROOT") "/SolverInterfaces/PetscSeq/include")
        (concat (getenv "DEVROOT") "/SolverInterfaces/NonLinearSolver/include")
        (concat (getenv "DEVROOT") "/Trellis/AOMD/include")
        (concat (getenv "DEVROOT") "/Trellis/Util/include")
        (concat (getenv "DEVROOT") "/Trellis/model/include")
        (concat (getenv "DEVROOT") "/MeshMachine/LinearAlgebra/include")
        (concat (getenv "DEVROOT") "/Applis/Physics/include")))

(defconst lian-tags-table-list
  (list (concat (getenv "DEVROOT") "/Xfem/Xfem/tags")
        (concat (getenv "DEVROOT") "/Xext/Xext/tags")
        (concat (getenv "DEVROOT") "/Xext/Octree/tags")
        (concat (getenv "DEVROOT") "/Xext/OctreeInterface/tags")
        (concat (getenv "DEVROOT") "/SolverInterfaces/SolverBase/tags")
        (concat (getenv "DEVROOT") "/SolverInterfaces/SuperLu/tags")
        (concat (getenv "DEVROOT") "/SolverInterfaces/Lapack/tags")
        (concat (getenv "DEVROOT") "/SolverInterfaces/Taucs/tags")
        ;; (concat (getenv "DEVROOT") "/SolverInterfaces/PetscSeq/tags")
        ;; (concat (getenv "DEVROOT") "/SolverInterfaces/NonLinearSolver/tags")
        (concat (getenv "DEVROOT") "/Trellis/AOMD/tags")
        (concat (getenv "DEVROOT") "/MeshMachine/LinearAlgebra/tags")
        (concat (getenv "DEVROOT") "/Applis/Homog/tags")
        (concat (getenv "DEVROOT") "/Applis/ITK_Utility/tags")))

(defconst lian-working-dir
  (list (getenv "LIAN_CUR_WORK_DIR")
        (concat (getenv "DEVROOT") "/Applis/ITK_Utility/ITK_Utility")
        (concat (getenv "DEVROOT") "/Applis/Homog/Homog")
        (concat (getenv "DEVROOT") "/Applis/Physics")))

(defconst lian-emacs-lisp-dir (getenv "LIAN_EMACS_LISP_DIR"))

(defconst lian-color-themes
  (list 'color-theme-ahei
        'color-theme-emacs-21
        'color-theme-classic
        'color-theme-gnome2
        'color-theme-subtle-hacker
        'color-theme-hober
        'color-theme-retro-orange
        'color-theme-standard))

(require 'lian-dired-settings)


(provide 'lian-info)
