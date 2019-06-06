# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"select projects.title, SUM(pledges.amount) from projects
join pledges on pledges.project_id = projects.id
group by pledges.project_id
order by projects.title asc"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"select users.name, users.age, SUM(pledges.amount) from users
join pledges on pledges.user_id = users.id
group by users.name
order by users.name asc"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"select projects.title, SUM(pledges.amount)-(projects.funding_goal) as total from projects 
join pledges on pledges.project_id = projects.id
group by projects.id
having total > -1
"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"select users.name, SUM(pledges.amount) as total from users
join pledges on pledges.user_id = users.id
group by users.name
order by total asc"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"select projects.category, pledges.amount from projects
join pledges on pledges.project_id = projects.id
where projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"select projects.category, SUM(pledges.amount) from projects
join pledges on pledges.project_id = projects.id
where projects.category = 'books'"
end

# INSERT INTO users (id, name, age) VALUES (1, 'Finnebar', 17);
# INSERT INTO projects (id, title, category, funding_goal, start_date, end_date) VALUES (1, 'Help me buy a guitar', 'music', 500.00, '2013-06-30', '2013-07-30');
# INSERT INTO pledges (id, amount, user_id, project_id) VALUES (1, 10.00, 1, 2);