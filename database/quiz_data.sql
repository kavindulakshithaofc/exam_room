

-- ----------------------------
-- Records of answers
-- ----------------------------
BEGIN;
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (41, 1, 3, 10, 'A', 'B', '2024-06-29 13:20:33', '2024-06-29 13:20:33', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (42, 1, 3, 7, 'D', 'B', '2024-06-29 13:20:35', '2024-06-29 13:20:35', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (43, 1, 3, 8, 'C', 'B', '2024-06-29 13:20:38', '2024-06-29 13:20:38', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (44, 1, 3, 3, 'C', 'C', '2024-06-29 13:20:40', '2024-06-29 13:20:40', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (45, 1, 3, 4, 'D', 'D', '2024-06-29 13:20:42', '2024-06-29 13:20:42', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (46, 1, 3, 1, 'D', 'D', '2024-06-29 13:20:44', '2024-06-29 13:20:44', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (47, 1, 3, 5, 'C', 'C', '2024-06-29 13:20:46', '2024-06-29 13:20:46', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (48, 1, 3, 9, 'C', 'C', '2024-06-29 13:20:50', '2024-06-29 13:20:50', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (49, 1, 3, 6, 'C', 'B', '2024-06-29 13:20:54', '2024-06-29 13:20:54', 0);
INSERT INTO `answers` (`id`, `topic_id`, `user_id`, `question_id`, `user_answer`, `answer`, `created_at`, `updated_at`, `current_attempt`) VALUES (50, 1, 3, 2, 'A', 'A', '2024-06-29 13:21:00', '2024-06-29 13:21:00', 0);
COMMIT;






-- ----------------------------
-- Records of questions
-- ----------------------------
BEGIN;
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (1, 1, 'The common element which describe the web page, is ?', 'paragraph', 'heading', 'list', 'All of these', NULL, NULL, 'D', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (2, 1, 'HTML stands for?', 'Hyper Text Markup Language', 'High Text Mark Language', 'Hyper Tabular Markup Language', 'None of these', NULL, NULL, 'A', 'Code Snippets', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, 'https://www.youtube.com/embed/phhtPnUlAUs');
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (3, 1, 'Which of the following tag is used to mark a beginning of paragraph ?', '<TD>', '<br>', '<P>', '<TR>', NULL, NULL, 'C', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (4, 1, 'Correct HTML tag for the largest heading is', '<head>', '<h6>', '<heading>', '<h1>', NULL, NULL, 'D', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (5, 1, 'The attribute of <form> tag', 'Method', 'Action', 'Both (a)&(b)', 'None of these', NULL, NULL, 'C', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (6, 1, 'Markup tags tell the web browser', 'How to organised the page', 'How to display the page', 'How to display message box on page', 'None of these', NULL, NULL, 'B', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (7, 1, 'www is based on which model?', 'Local-server', 'Client-server', '3-tier', 'None of these', NULL, NULL, 'B', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (8, 1, 'What are Empty elements and is it valid?', 'No, there is no such terms as Empty Element', 'Empty elements are element with no data', 'No, it is not valid to use Empty Element', 'None of these', NULL, NULL, 'B', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (9, 1, 'Which of the following attributes of text box control allow to limit the maximum character?', 'size', 'len', 'maxlength', 'all of these', NULL, NULL, 'C', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (10, 1, 'Mahatma Gandhi Institute of Integrated Farming System is located  at', 'Patna', 'Motihari', 'Siliguri', 'Hazaribag', NULL, NULL, 'B', '-', '-', '2024-06-29 09:12:40', '2024-06-29 09:12:40', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (31, 5, 'The common element which describe the web page, is ?', 'paragraph', 'heading', 'list', 'All of these', NULL, NULL, 'd', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (32, 5, 'HTML stands for?', 'Hyper Text Markup Language', 'High Text Mark Language', 'Hyper Tabular Markup Language', 'None of these', NULL, NULL, 'a', 'Code Snippets', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, 'https://www.youtube.com/embed/phhtPnUlAUs');
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (33, 5, 'Which of the following tag is used to mark a beginning of paragraph ?', '<TD>', '<br>', '<P>', '<TR>', NULL, NULL, 'c', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (34, 5, 'Correct HTML tag for the largest heading is', '<head>', '<h6>', '<heading>', '<h1>', NULL, NULL, 'd', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (35, 5, 'The attribute of <form> tag', 'Method', 'Action', 'Both (a)&(b)', 'None of these', NULL, NULL, 'c', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (36, 5, 'Markup tags tell the web browser', 'How to organised the page', 'How to display the page', 'How to display message box on page', 'None of these', NULL, NULL, 'b', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (37, 5, 'www is based on which model?', 'Local-server', 'Client-server', '3-tier', 'None of these', NULL, NULL, 'b', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (38, 5, 'What are Empty elements and is it valid?', 'No, there is no such terms as Empty Element', 'Empty elements are element with no data', 'No, it is not valid to use Empty Element', 'None of these', NULL, NULL, 'b', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (39, 5, 'Which of the following attributes of text box control allow to limit the maximum character?', 'size', 'len', 'maxlength', 'all of these', NULL, NULL, 'c', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (40, 5, 'Mahatma Gandhi Institute of Integrated Farming System is located  at', 'Patna', 'Motihari', 'Siliguri', 'Hazaribag', NULL, NULL, 'b', '-', '-', '2024-06-29 12:16:48', '2024-06-29 12:16:48', NULL, NULL, NULL);
INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `e`, `f`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`, `question_audio`) VALUES (41, 1, 'Supersctipr & subscript test', 'aᵐᵃˣ', 'aᵐᵃˣ', 'aᵐᵃˣ', 'aᵐᵃˣ', NULL, NULL, 'B', NULL, NULL, '2024-06-30 08:59:23', '2024-06-30 08:59:23', NULL, NULL, NULL);
COMMIT;




-- ----------------------------
-- Records of subjects
-- ----------------------------
BEGIN;
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (1, 'Physics', '2024-06-29 09:08:40', '2024-06-29 09:08:40');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (2, 'Chemistry', '2024-06-29 09:08:49', '2024-06-29 09:08:49');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (3, 'Mathematics', '2024-06-29 09:09:01', '2024-06-29 09:09:01');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (4, 'Agriculture', '2024-06-29 09:09:13', '2024-06-29 09:09:13');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (5, 'Biology', '2024-06-29 09:09:21', '2024-06-29 09:09:21');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (6, 'Combined Mathematics', '2024-06-29 09:09:34', '2024-06-29 09:09:34');
INSERT INTO `subjects` (`id`, `title`, `created_at`, `updated_at`) VALUES (7, 'Higher Mathematics', '2024-06-29 09:09:45', '2024-06-29 09:09:45');
COMMIT;



-- ----------------------------
-- Records of topics
-- ----------------------------
BEGIN;
INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `attempts`, `show_ans`, `amount`, `subject_id`, `created_at`, `updated_at`) VALUES (1, '2024 Biology model paper', 'This is a testing paper used for initial testing.', 2, 150, 1, '0', NULL, 5, '2024-06-29 09:10:42', '2024-06-29 09:10:42');
COMMIT;
