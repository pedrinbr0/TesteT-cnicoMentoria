SELECT
    e.first_name || ' ' || e.last_name AS nome_completo,
    e.cpf,
    t.name AS equipe,
    j.name AS cargo
FROM employees e
LEFT JOIN teams t ON e.team_id = t.id
LEFT JOIN job_titles j ON e.job_title_id = j.id
ORDER BY e.cpf;
