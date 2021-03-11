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
## @deftypefn {} {@var{retval} =} GradDis (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ashish Kushwaha <ashish@LinuxWorkBox>
## Created: 2021-03-11

function [cost, weights] = GradDis (theta, inputDataX, inputDataY, MaxStep, lrningRate)

m = size(inputDataX)(1,1);
no_of_input_ftrs = size(inputDataX)(1,2);
temp = [1:no_of_input_ftrs];
Temp = 0;
cost = computeCost(theta,inputDataX,inputDataY);

for nthTime = 1:MaxStep
    for n_ftrs = 1:no_of_input_ftrs
        for i = 1:m
            Temp = Temp+((inputDataX(i,:) * theta') - inputDataY(i));    
        end
        %disp(Temp);
        temp(n_ftrs) = theta(n_ftrs) - (lrningRate/m)*Temp*sum(inputDataX(:,n_ftrs));
        %disp(temp);
    end
    for n_ftrs = 1:no_of_input_ftrs
        theta(n_ftrs) = temp(n_ftrs);
    end
end 

weights = theta;
endfunction
