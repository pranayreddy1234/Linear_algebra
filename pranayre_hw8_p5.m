A = pranayre_hw8_p3(@(x)(pranayre_hw8_p4(x)), [0;0.1], 10.^(-8));
eas596_hw8_p5(@(x)(pranayre_hw8_p4(x)), [0;0.1], A);
B = pranayre_hw8_p3(@(x)(pranayre_hw8_p4(x)), [0;-0.1], 10.^(-8));
eas596_hw8_p5(@(x)(pranayre_hw8_p4(x)), [0;-0.1], B);