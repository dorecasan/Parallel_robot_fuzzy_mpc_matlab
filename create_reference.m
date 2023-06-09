function out = create_reference(Ts,Duration,predict_horizon)
%UNTITLED2 Summary of this function goes here
pH = Duration/Ts + predict_horizon;
t =  Ts*(0:1:pH)';


%  l1  = 0.0008*t.^3-0.0125*t.^2+0.072*t+0.5;
%  l2  = 0.0008*t.^3-0.0125*t.^2+0.072*t+0.5;
%  l3 =  -0.0008*t.^3+0.0175*t.^2-0.11*t+0.7;
%  gamma = -0.02*t.^3+0.1625*t.^2-0.1*t;
%  dl1 = 3*0.0008*t.^2-2*0.0125*t+0.072;
%  dl2 = 3*0.0008*t.^2-2*0.0125*t+0.072;
%  dl3 =  -3*0.0008*t.^2+2*0.0175*t-0.11;
%  dgamma = -3*0.02*t.^2+2*0.1625*t-0.1;

 l1  = -0.0045*t.^3+0.034*t.^2-0.025*t+0.45;
 l2  =  -0.0008*t.^3+0.0175*t.^2-0.11*t+0.7;
 l3 =  0.0008*t.^3-0.0125*t.^2+0.072*t+0.5;
 gamma = 0.004*t.^3-0.0625*t.^2+0.4*t;
 dl1  = -3*0.0045*t.^2+2*0.034*t-0.025;
 dl2  =  -3*0.0008*t.^2+2*0.0175*t-0.11;
 dl3 =  3*0.0008*t.^2-2*0.0125*t+0.072;
 dgamma = 3*0.004*t.^2-2*0.0625*t+0.4;

out  = [l1 l2 l3 gamma dl1 dl2 dl3 dgamma];

end

