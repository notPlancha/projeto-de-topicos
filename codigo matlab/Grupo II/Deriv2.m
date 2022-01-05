function [D] = Deriv2 (T, inicio, h)
    [rt, ct] = size(T);
    if ( (rt < 3) || (ct > 1) )
        fprintf(1, 'erro: numero pontos < 3 ou numero de colunas diferente de 1\n');
        return
    end
    rt1 = ;
    rt2 = rt-2;    
    D = NaN(rt,4);
    D(:,1) = (inicio : h : rt1*h + inicio)';
    D(:,2) = T;
    D(2:rt1,3) = ( T(3:rt) - T(1:rt2) ) ./ (2.*h); 
    D(2:rt1,4) = ( T(3:rt) -2 .* T(2:rt1) + T(1:rt2) ) ./ (h.*h);
    D(1,3)   = (T(2,1) - T(1,1)) ./ h;
    D(rt, 3) = (T(rt,1) - T(rt-1,1)) ./ h;
    D(1,4)   = (D(2,3) - D(1,3)) ./ h;
    D(rt, 4) = (D(rt,3) - D(rt1,3)) ./ h;
    
end