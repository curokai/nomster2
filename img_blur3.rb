
class Image
  def initialize (pixels)
    @pixels=pixels
    @location=[]
    @newpixel=[]
  end

  def find_locations
    t=0 
    d=0
   @pixels.each_with_index do |x, i|
      x.each_with_index do |y, j|
         @newpixel[d]=y
         d=d+1
        if (y==1)

          if (@pixels.length-1 >= i+1)
          @location[t]="#{i+1}#{j}".to_s 
          t=t+1
          end 

          if (@pixels.length-1 >= i+2)
          @location[t]="#{i+2}#{j}".to_s 
          t=t+1
          end  

          
          if (0 <= i-1)
          @location[t]="#{i-1}#{j}".to_s
          t=t+1 
          end
          
          if (0 <= i-2)
          @location[t]="#{i-2}#{j}".to_s
          t=t+1 
          end

          if (0 <= j-1)      
          @location[t]="#{i}#{j-1}".to_s
          t=t+1 
          end
          
          if (0 <= j-2)      
          @location[t]="#{i}#{j-2}".to_s
          t=t+1 
          end
           

          if (@pixels.length-1 >= j+1)
          @location[t]="#{i}#{j+1}".to_s
          t=t+1 
          end

          if (@pixels.length-1 >= j+2)
          @location[t]="#{i}#{j+2}".to_s
          t=t+1 
          end 


          if (@pixels.length-1 >= j+1 and @pixels.length-1 >= i+1)
          @location[t]="#{i+1}#{j+1}".to_s
          t=t+1 
          end  
          

          if (0 <= j-1 and 0 <= i-1 )
          @location[t]="#{i-1}#{j-1}".to_s
          t=t+1 
          end   

          if (@pixels.length-1 >= j+1 and 0 <= i-1 )
          @location[t]="#{i-1}#{j+1}".to_s
          t=t+1 
          end

          if (@pixels.length-1 >= i+1 and 0 <= j-1 )
          @location[t]="#{i+1}#{j-1}".to_s
          t=t+1 
          end

       end       
      end
    end    
  end

  def add_number_to_locations
    d=0
    @location.each_with_index do |l , t|
    t=0;
    @pixels.each_with_index do |x, i|
      x.each_with_index do |y, j|
       if("#{i}#{j}".to_s == l.to_s)
        @newpixel[t]=1  
       end 
      t=t+1
     end
    end
  end
end



def output
  d=0
   @pixels.each_with_index do |x, i|
      x.each_with_index do |y, j|
        print "#{@newpixel[d]} "
        d=d+1
     end
     puts "\n"
   end
end

end
image = Image.new([
  [1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
])
image.find_locations
image.add_number_to_locations
image.output