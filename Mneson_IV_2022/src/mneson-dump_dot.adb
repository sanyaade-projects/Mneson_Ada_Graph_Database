with Ada.Command_Line;with Base;with Mneson.Dot;procedure Mneson.Dump_Dot is   package Dot is new Mneson.Dot (Base.Work, Base.Text);   M : Img_String_Length;   use Ada.Command_Line;begin   Base.Open (Argument (1));   begin M := Img_String_Length'Value (Argument (2));   exception when Constraint_Error => M := Default_Max_Length;   end;   Dot.Dump_Graph (Max_Length => M);   Base.Close;end;   