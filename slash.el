;;; slash.el --- Slash mode for Emacs -*- lexical-binding: t -*-

;; Copyright (C) 2016  Roey Darwish Dror <roey.ghost@gmail.com>

;; Author: Roey Darwish Dror <roey.ghost@gmail.com>
;; Version: 0.1
;; Package-Requires: ((emacs "24.4"))
;; Keywords: tools

;; This file is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this file. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

;;;###autoload
(defun slash-parametrize (&optional values-list)
  (interactive)
  (let ((symbol (current-word)))
    (back-to-indentation)
    (forward-line -1)
    (move-end-of-line nil)
    (newline-and-indent)
    (beginning-of-line)
    (let ((beg (point)))
      (forward-line 1)
      (forward-char -1)
      (delete-region beg (point)))
    (insert (format "@slash.parametrize('%s', [%s])" symbol (if values-list values-list "")))
    (backward-char 2)))

(provide 'slash)

;;; slash.el ends here
