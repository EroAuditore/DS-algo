

class HashTable
    def initialize(size)
        @data = Array.new(size)
    end

    def hash(key)
        hash = 0
        for i in 0..(key.length - 1) do
            hash = (hash + key[i][0].ord * i ) % @data.length
        end
        return hash
    end

    def set(key,value)
        if @data[hash(key)].nil?
            @data[hash(key)] = []
        end
        @data[hash(key)] << [key,value]
        return @data
    end

    def get(key)
        unless @data[hash(key)].nil?
            currentBucket = @data[hash(key)]
            for value in currentBucket do
                if value[0] == key 
                    return value[1]
                end                 
            end
        end
        return "nothing here!"
    end

    def keys
        keysArr = []
        for value in @data do
            unless value.nil?
                for key in value do
                    keysArr << key[0]
                end
            end                
        end
        return keysArr
    end
    
    
end

ht = HashTable.new(2)
ht.set('grapes', 100)
ht.set('apples', 150)
ht.set('pineapples', 200)
ht.set('tomato', 200)
puts ht.get('grapes')
puts ht.get('apples')
puts ht.keys()

