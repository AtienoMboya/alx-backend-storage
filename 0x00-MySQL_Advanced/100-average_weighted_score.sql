-- creates a stored procedure that computes and store the average weighted score of student
DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser (IN user_id INT)
BEGIN
	SELECT (SUM(corrections.score * projects.weight) / SUM(projects.weight)) INTO @avg_weighted_score
	FROM corrections
	INNER JOIN projects
	ON corrections.project_id = projects.id
	WHERE corrections.user_id = user_id;

	UPDATE users SET average_score=@avg_weighted_score WHERE id=user_id;
END;$$
