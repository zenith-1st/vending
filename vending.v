 /*Code your design here
vending machine
bottle is for 15 rs
we have 2 coins 5 and 10
*/
module vending(clk,rst,ip,out);
  input clk,rst;	
  input [10] ip; 01-5, 10-10
  output reg out;
  
  st-2 definr states
  parameter s0 = 2'b00, 
  			s5 = 2'b01, 
  			s10 = 2'b10;
  st-3 ps & ns
  
  reg[10] ps,ns;
  
  st-4 define ps logic
  
  always@(posedge clk) 
    begin
    if(rst)
      ps= s0;
    else
      ps=ns;
  end
  
  st-5 define ns logic
  
  always@(ps,ip) begin
    dont forgrt to write default
      out =0;
      case(ps)
      s0
        begin
          if (ip==01)
            ns=s5;
          else if (ip==10)
            ns=s10;
          else
            ns=s0;
        end
      
      s5
        begin
          if (ip==01)
            ns=s10;
          else if (ip==10) begin
            ns=s0; coz5+10=15
          	out=1;
          end 
          else
            ns=s0;
        end
      
      s10
        begin
          if (ip==01) begin
            ns=s0;	coz5+10=15
          	out=1;
          end
          else if (ip==10) begin
            ns=s0; 10+10= 20 and out =1
          	out=1;
          end
          else
            ns=s0;
        end
      endcase
    end
endmodule
      
      