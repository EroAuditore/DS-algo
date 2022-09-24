#Create a function that merges two sorted arrays

def merge_arrays(arr1, arr2)
   
    arrMerged = []
    while arr1.length > 0 || arr2.length > 0        
       if arr1[0].nil?       
        arrMerged << arr2[0]
        arr2.shift
       end  
       if arr2[0].nil?        
        arrMerged << arr1[0]
        arr1.shift
       end    

      unless arr1[0].nil? || arr2[0].nil?
      
        if(arr1[0] < arr2[0])
            arrMerged << arr1[0]
            arrMerged << arr2[0]
            arr1.shift
            arr2.shift
        else
            arrMerged << arr2[0]
            arrMerged << arr1[0]
            arr2.shift
            arr1.shift
            
        end     
    end   
    end
    return arrMerged
end

puts merge_arrays([1,4,6,8], [2,3,5])

