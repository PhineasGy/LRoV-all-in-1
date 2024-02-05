function cp_PBA = getPBA_cp(cp,QP)
    % input: cp struct, query point
    query_point_cp = cp.RM * QP + cp.TM;
    cp_L = query_point_cp(2);
    cp_PBA = cp.L2PBA(cp_L);
end