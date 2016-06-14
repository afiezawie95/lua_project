local function main()

      outpin=3 -- Select output pin - GPIO0
      gpio.mode(outpin, gpio.OUTPUT)
      
      inpin=6  -- Select input pin - GPIO12
      gpio.mode(inpin, gpio.INT, gpio.PULLUP)
      
      gpio.trig(6,"up",motion)
      
      function motion()
        print("Motion Detected!")
        gpio.write(outpin, gpio.HIGH)  -- Led ON - Motion detected 
        tmr.delay(5000000)             -- delay time for marking the movement
        gpio.write(outpin, gpio.LOW)   -- Led OFF
      end

end
main()




