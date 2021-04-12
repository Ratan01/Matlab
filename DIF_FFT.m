function y= DIF_FFT(x)
p=nextpow2(length(x));
x=[x zeros(1,2^p-length(x))];
N=length(x);
S=log2(N);
Half=N/2;
for stage=1:S
        for index=0:(N/2^(stage-1)):(N-1);
            for n=0:(Half-1)
                  pos=n+index+1;
                  pow=(2^(stage-1)*n);
                  w=exp((-1*i)*(2*pi)*pow/N);
                  a=x(pos)+x(pos+Half);
                  f=x(pos)-x(pos+Half).*w;
                  x(pos)=a;
                  x(pos+Half)=f;
            end
        end
   Half=Half/2;
end
y=bitrevorder(x);
end