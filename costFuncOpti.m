## Copyright (C) 2021 Ashish Kushwaha
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} costFuncOpti (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ashish Kushwaha <ashish@LinuxWorkBox>
## Created: 2021-03-12

function [jval, grad] = costFuncOpti (theta)
load wspceVar.m;
[jval, grad] = GradDis (theta, admi_data_X, admi_data_Y, 1, 1);

endfunction