%% AWGN channel Modulation

Frame = 2048;
EbNo = 10;
SNR = EbNo + 10*log10(2);
%% Create system object (initialisation)
Modulator = comm.QPSKModulator('BitInput',true);
AWGN = comm.AWGNchannel('EbNo',SNR);
ConstScope = comm.ConstellationDiagram;
%% Stream processing loop
for i=1:500;
    u = randi([0,1],Frame,1); %generate random bits to transmit
    mod_sig = Step(Modulator,u); %modulate the signal
    rx_sig = Step(AWGN,mod_sig); %add noise
    Step(ConstScope, rx_sig); %visualise constellation
end
%% relase objects
release(Modulation);
release(AWGN);
release(ConstScope);