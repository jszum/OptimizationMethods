function pivot = findPivot(A, currentColumn)
[rows columns] = size(A);

lastColumn = columns;

index = 0;  min = 9999;

for k = 1:rows

    if A(k,currentColumn) > 0
    
        row = A(k, lastColumn)/A(k, currentColumn);
        
        if row < min
            min = row;  index = k;
        end
        
    end
    
end

if index == 0
    disp('No pivot')
end

pivot = index;
end