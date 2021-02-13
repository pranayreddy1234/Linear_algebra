options = optimoptions('fsolve','SpecifyObjectiveGradient', true,'Display', 'off', 'FunctionTolerance', 1e-8);
Xsol = fsolve(@(x)(pranayre_hw8_p4(x)), [0;0.1], options);
eas596_hw8_p5(@(x)(pranayre_hw8_p4(x)), [0;0.1], Xsol);
Xsol1 = fsolve(@(x)(pranayre_hw8_p4(x)), [0;-0.1], options);
eas596_hw8_p5(@(x)(pranayre_hw8_p4(x)), [0;-0.1], Xsol1);
