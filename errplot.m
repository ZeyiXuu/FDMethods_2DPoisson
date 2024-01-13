function errplot

    N = 10;
    I = linspace(1,N,N);
    log_residue_list = linspace(0,0,N);
    for i = I
        h = 2^(-i);
        log_residue_list(i) = -log(residue_eval(h))/log(2);
    end
    plot(I,log_residue_list)
    % Add labels and title
    xlabel('-log(h)');
    ylabel('-log(residue)');
    title('Log-log plot of residues');
end