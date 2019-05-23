def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT pr.title, SUM(pl.amount)
 FROM projects AS pr
 JOIN pledges AS pl
 ON pr.id = pl.project_id
 GROUP BY pr.title
 ORDER BY pr.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT u.name, u.age, SUM(p.amount)
 FROM users AS u
 JOIN pledges AS p
 ON u.id = p.user_id
 GROUP BY u.name
 ORDER BY u.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT pr.title, SUM(pl.amount) - pr.funding_goal
 FROM projects AS pr
 JOIN pledges AS pl
 ON pr.id = pl.project_id
 GROUP BY pr.title
 HAVING SUM(pl.amount) >= pr.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT u.name, SUM(p.amount)
 FROM users AS u
 JOIN pledges AS p
 ON u.id = p.user_id
 GROUP BY u.name
 ORDER BY SUM(p.amount), u.name;"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT pr.category, pl.amount
 FROM projects AS pr
 JOIN pledges AS pl
 ON pr.id = pl.project_id
 WHERE category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT pr.category, SUM(pl.amount)
 FROM projects AS pr
 JOIN pledges AS pl
 ON pr.id = pl.project_id
 WHERE category = 'books';"
end
