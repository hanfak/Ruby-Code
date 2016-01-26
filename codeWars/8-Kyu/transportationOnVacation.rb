def rental_car_cost(d)
   if d > 6 
     40 * d - 50
   elsif d > 2
     40 * d - 20
   else
     40 * d
   end
end