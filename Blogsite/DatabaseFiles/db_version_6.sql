﻿BEGIN TRANSACTION;

/* DROP FOREIGN KEYS */
ALTER TABLE [dbo].[administrators_detail] DROP CONSTRAINT [FK_administrators_detail_administrators];
ALTER TABLE [dbo].[administrators_detail] DROP CONSTRAINT [FK_administrators_detail_languages];
ALTER TABLE [dbo].[ads] DROP CONSTRAINT [FK_ads_languages];
ALTER TABLE [dbo].[categories_detail] DROP CONSTRAINT [FK_categories_detail_categories];
ALTER TABLE [dbo].[categories_detail] DROP CONSTRAINT [FK_categories_detail_languages];
ALTER TABLE [dbo].[custom_themes_templates] DROP CONSTRAINT [FK_custom_themes_templates_custom_themes];
ALTER TABLE [dbo].[languages_detail] DROP CONSTRAINT [FK_languages_detail_languages];
ALTER TABLE [dbo].[languages_detail] DROP CONSTRAINT [FK_languages_detail_translation_languages];
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [FK_posts_administrators];
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [FK_posts_categories];
ALTER TABLE [dbo].[posts_comments] DROP CONSTRAINT [FK_posts_comments_administrators];
ALTER TABLE [dbo].[posts_comments] DROP CONSTRAINT [FK_posts_comments_languages];
ALTER TABLE [dbo].[posts_comments] DROP CONSTRAINT [FK_posts_comments_posts];
ALTER TABLE [dbo].[posts_detail] DROP CONSTRAINT [FK_posts_detail_languages];
ALTER TABLE [dbo].[posts_detail] DROP CONSTRAINT [FK_posts_detail_posts];
ALTER TABLE [dbo].[posts_files] DROP CONSTRAINT [FK_posts_files_languages];
ALTER TABLE [dbo].[posts_files] DROP CONSTRAINT [FK_posts_files_posts];
ALTER TABLE [dbo].[posts_ratings] DROP CONSTRAINT [FK_posts_ratings_administrators];
ALTER TABLE [dbo].[posts_ratings] DROP CONSTRAINT [FK_posts_ratings_languages];
ALTER TABLE [dbo].[posts_ratings] DROP CONSTRAINT [FK_posts_ratings_posts];
ALTER TABLE [dbo].[static_pages_detail] DROP CONSTRAINT [FK_static_pages_detail_languages];
ALTER TABLE [dbo].[static_pages_detail] DROP CONSTRAINT [FK_static_pages_detail_pages];
ALTER TABLE [dbo].[static_texts] DROP CONSTRAINT [FK_static_texts_languages];
ALTER TABLE [dbo].[web_domains] DROP CONSTRAINT [FK_web_domains_back_end_languages];
ALTER TABLE [dbo].[web_domains] DROP CONSTRAINT [FK_web_domains_front_end_languages];
ALTER TABLE [dbo].[weblinks_detail] DROP CONSTRAINT [FK_weblinks_detail_languages];
ALTER TABLE [dbo].[weblinks_detail] DROP CONSTRAINT [FK_weblinks_detail_weblinks];

/* DROP PRIMARY KEYS */
ALTER TABLE [dbo].[administrators] DROP CONSTRAINT [PK_administrators];
ALTER TABLE [dbo].[administrators_detail] DROP CONSTRAINT [PK_administrators_detail];
ALTER TABLE [dbo].[ads] DROP CONSTRAINT [PK_ads];
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [PK_categories];
ALTER TABLE [dbo].[categories_detail] DROP CONSTRAINT [PK_categories_detail];
ALTER TABLE [dbo].[custom_themes] DROP CONSTRAINT [PK_custom_themes];
ALTER TABLE [dbo].[custom_themes_templates] DROP CONSTRAINT [PK_custom_themes_templates];
ALTER TABLE [dbo].[languages] DROP CONSTRAINT [PK_languages];
ALTER TABLE [dbo].[languages_detail] DROP CONSTRAINT [PK_languages_detail];
ALTER TABLE [dbo].[media_files] DROP CONSTRAINT [PK_media_files];
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [PK_posts];
ALTER TABLE [dbo].[posts_comments] DROP CONSTRAINT [PK_posts_comments];
ALTER TABLE [dbo].[posts_detail] DROP CONSTRAINT [PK_posts_detail];
ALTER TABLE [dbo].[posts_files] DROP CONSTRAINT [PK_posts_files];
ALTER TABLE [dbo].[posts_ratings] DROP CONSTRAINT [PK_posts_ratings];
ALTER TABLE [dbo].[static_pages] DROP CONSTRAINT [PK_static_pages];
ALTER TABLE [dbo].[static_pages_detail] DROP CONSTRAINT [PK_static_pages_detail];
ALTER TABLE [dbo].[static_texts] DROP CONSTRAINT [PK_static_texts];
ALTER TABLE [dbo].[web_domains] DROP CONSTRAINT [PK_web_domains];
ALTER TABLE [dbo].[weblinks] DROP CONSTRAINT [PK_weblinks];
ALTER TABLE [dbo].[weblinks_detail] DROP CONSTRAINT [PK_weblinks_detail];
ALTER TABLE [dbo].[website_sessions] DROP CONSTRAINT [PK_website_sessions];
ALTER TABLE [dbo].[website_settings] DROP CONSTRAINT [PK_website_settings];

/* DROP CLUSTERED INDEXES */
DROP INDEX [CDX_administrators] ON [dbo].[administrators];
DROP INDEX [CDX_administrators_detail] ON [dbo].[administrators_detail];
DROP INDEX [CDX_ads] ON [dbo].[ads];
DROP INDEX [CDX_categories] ON [dbo].[categories];
DROP INDEX [CDX_categories_detail] ON [dbo].[categories_detail];
DROP INDEX [CDX_custom_themes] ON [dbo].[custom_themes];
DROP INDEX [CDX_custom_themes_templates] ON [dbo].[custom_themes_templates];
DROP INDEX [CDX_languages] ON [dbo].[languages];
DROP INDEX [CDX_languages_detail] ON [dbo].[languages_detail];
DROP INDEX [CDX_media_files] ON [dbo].[media_files];
DROP INDEX [CDX_posts] ON [dbo].[posts];
DROP INDEX [CDX_posts_comments] ON [dbo].[posts_comments];
DROP INDEX [CDX_posts_detail] ON [dbo].[posts_detail];
DROP INDEX [CDX_posts_files] ON [dbo].[posts_files];
DROP INDEX [CDX_posts_ratings] ON [dbo].[posts_ratings];
DROP INDEX [CDX_static_pages] ON [dbo].[static_pages];
DROP INDEX [CDX_static_pages_detail] ON [dbo].[static_pages_detail];
DROP INDEX [CDX_static_texts] ON [dbo].[static_texts];
DROP INDEX [CDX_web_domains] ON [dbo].[web_domains];
DROP INDEX [CDX_weblinks] ON [dbo].[weblinks];
DROP INDEX [CDX_weblinks_detail] ON [dbo].[weblinks_detail];
DROP INDEX [CDX_website_sessions] ON [dbo].[website_sessions];
DROP INDEX [CDX_website_settings] ON [dbo].[website_settings];

/* CREATE PRIMARY KEYS */
ALTER TABLE [dbo].[administrators] ADD CONSTRAINT [PK_administrators] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[administrators_detail] ADD CONSTRAINT [PK_administrators_detail] PRIMARY KEY CLUSTERED ([administrator_id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[ads] ADD CONSTRAINT [PK_ads] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[categories] ADD CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[categories_detail] ADD CONSTRAINT [PK_categories_detail] PRIMARY KEY CLUSTERED ([category_id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[custom_themes] ADD CONSTRAINT [PK_custom_themes] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[custom_themes_templates] ADD CONSTRAINT [PK_custom_themes_templates] PRIMARY KEY CLUSTERED ([custom_theme_id] ASC, [user_file_name] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[languages] ADD CONSTRAINT [PK_languages] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[languages_detail] ADD CONSTRAINT [PK_languages_detail] PRIMARY KEY CLUSTERED ([language_id] ASC, [translation_language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[media_files] ADD CONSTRAINT [PK_media_files] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[posts] ADD CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[posts_comments] ADD CONSTRAINT [PK_posts_comments] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[posts_detail] ADD CONSTRAINT [PK_posts_detail] PRIMARY KEY CLUSTERED ([post_id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[posts_files] ADD CONSTRAINT [PK_posts_files] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[posts_ratings] ADD CONSTRAINT [PK_posts_ratings] PRIMARY KEY CLUSTERED ([post_id] ASC, [administrator_id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[static_pages] ADD CONSTRAINT [PK_static_pages] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[static_pages_detail] ADD CONSTRAINT [PK_static_pages_detail] PRIMARY KEY CLUSTERED ([static_page_id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[static_texts] ADD CONSTRAINT [PK_static_texts] PRIMARY KEY CLUSTERED ([id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[web_domains] ADD CONSTRAINT [PK_web_domains] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[weblinks] ADD CONSTRAINT [PK_weblinks] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[weblinks_detail] ADD CONSTRAINT [PK_weblinks_detail] PRIMARY KEY CLUSTERED ([weblink_id] ASC, [language_id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[website_sessions] ADD CONSTRAINT [PK_website_sessions] PRIMARY KEY CLUSTERED ([id] ASC, [application_name] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);
ALTER TABLE [dbo].[website_settings] ADD CONSTRAINT [PK_website_settings] PRIMARY KEY CLUSTERED ([id] ASC) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF);

/* CREATE FOREIGN KEYS */
ALTER TABLE [dbo].[administrators_detail] WITH CHECK ADD CONSTRAINT [FK_administrators_detail_administrators] FOREIGN KEY([administrator_id]) REFERENCES [dbo].[administrators] ([id]);
ALTER TABLE [dbo].[administrators_detail] CHECK CONSTRAINT [FK_administrators_detail_administrators];
ALTER TABLE [dbo].[administrators_detail] WITH CHECK ADD CONSTRAINT [FK_administrators_detail_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[administrators_detail] CHECK CONSTRAINT [FK_administrators_detail_languages];
ALTER TABLE [dbo].[ads] WITH CHECK ADD CONSTRAINT [FK_ads_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[ads] CHECK CONSTRAINT [FK_ads_languages];
ALTER TABLE [dbo].[categories_detail] WITH CHECK ADD CONSTRAINT [FK_categories_detail_categories] FOREIGN KEY([category_id]) REFERENCES [dbo].[categories] ([id]);
ALTER TABLE [dbo].[categories_detail] CHECK CONSTRAINT [FK_categories_detail_categories];
ALTER TABLE [dbo].[categories_detail] WITH CHECK ADD CONSTRAINT [FK_categories_detail_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[categories_detail] CHECK CONSTRAINT [FK_categories_detail_languages];
ALTER TABLE [dbo].[custom_themes_templates] WITH CHECK ADD CONSTRAINT [FK_custom_themes_templates_custom_themes] FOREIGN KEY([custom_theme_id]) REFERENCES [dbo].[custom_themes] ([id]);
ALTER TABLE [dbo].[custom_themes_templates] CHECK CONSTRAINT [FK_custom_themes_templates_custom_themes];
ALTER TABLE [dbo].[languages_detail] WITH CHECK ADD CONSTRAINT [FK_languages_detail_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[languages_detail] CHECK CONSTRAINT [FK_languages_detail_languages];
ALTER TABLE [dbo].[languages_detail] WITH CHECK ADD CONSTRAINT [FK_languages_detail_translation_languages] FOREIGN KEY([translation_language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[languages_detail] CHECK CONSTRAINT [FK_languages_detail_translation_languages];
ALTER TABLE [dbo].[posts] WITH CHECK ADD CONSTRAINT [FK_posts_administrators] FOREIGN KEY([administrator_id]) REFERENCES [dbo].[administrators] ([id]);
ALTER TABLE [dbo].[posts] CHECK CONSTRAINT [FK_posts_administrators];
ALTER TABLE [dbo].[posts] WITH CHECK ADD CONSTRAINT [FK_posts_categories] FOREIGN KEY([category_id]) REFERENCES [dbo].[categories] ([id]);
ALTER TABLE [dbo].[posts] CHECK CONSTRAINT [FK_posts_categories];
ALTER TABLE [dbo].[posts_comments] WITH CHECK ADD CONSTRAINT [FK_posts_comments_administrators] FOREIGN KEY([administrator_id]) REFERENCES [dbo].[administrators] ([id]);
ALTER TABLE [dbo].[posts_comments] CHECK CONSTRAINT [FK_posts_comments_administrators];
ALTER TABLE [dbo].[posts_comments] WITH CHECK ADD CONSTRAINT [FK_posts_comments_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[posts_comments] CHECK CONSTRAINT [FK_posts_comments_languages];
ALTER TABLE [dbo].[posts_comments] WITH CHECK ADD CONSTRAINT [FK_posts_comments_posts] FOREIGN KEY([post_id]) REFERENCES [dbo].[posts] ([id]);
ALTER TABLE [dbo].[posts_comments] CHECK CONSTRAINT [FK_posts_comments_posts];
ALTER TABLE [dbo].[posts_detail] WITH CHECK ADD CONSTRAINT [FK_posts_detail_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[posts_detail] CHECK CONSTRAINT [FK_posts_detail_languages];
ALTER TABLE [dbo].[posts_detail] WITH CHECK ADD CONSTRAINT [FK_posts_detail_posts] FOREIGN KEY([post_id]) REFERENCES [dbo].[posts] ([id]);
ALTER TABLE [dbo].[posts_detail] CHECK CONSTRAINT [FK_posts_detail_posts];
ALTER TABLE [dbo].[posts_files] WITH CHECK ADD CONSTRAINT [FK_posts_files_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[posts_files] CHECK CONSTRAINT [FK_posts_files_languages];
ALTER TABLE [dbo].[posts_files] WITH CHECK ADD CONSTRAINT [FK_posts_files_posts] FOREIGN KEY([post_id]) REFERENCES [dbo].[posts] ([id]);
ALTER TABLE [dbo].[posts_files] CHECK CONSTRAINT [FK_posts_files_posts];
ALTER TABLE [dbo].[posts_ratings] WITH CHECK ADD CONSTRAINT [FK_posts_ratings_administrators] FOREIGN KEY([administrator_id]) REFERENCES [dbo].[administrators] ([id]);
ALTER TABLE [dbo].[posts_ratings] CHECK CONSTRAINT [FK_posts_ratings_administrators];
ALTER TABLE [dbo].[posts_ratings] WITH CHECK ADD CONSTRAINT [FK_posts_ratings_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[posts_ratings] CHECK CONSTRAINT [FK_posts_ratings_languages];
ALTER TABLE [dbo].[posts_ratings] WITH CHECK ADD CONSTRAINT [FK_posts_ratings_posts] FOREIGN KEY([post_id]) REFERENCES [dbo].[posts] ([id]);
ALTER TABLE [dbo].[posts_ratings] CHECK CONSTRAINT [FK_posts_ratings_posts];
ALTER TABLE [dbo].[static_pages_detail] WITH CHECK ADD CONSTRAINT [FK_static_pages_detail_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[static_pages_detail] CHECK CONSTRAINT [FK_static_pages_detail_languages];
ALTER TABLE [dbo].[static_pages_detail] WITH CHECK ADD CONSTRAINT [FK_static_pages_detail_pages] FOREIGN KEY([static_page_id]) REFERENCES [dbo].[static_pages] ([id]);
ALTER TABLE [dbo].[static_pages_detail] CHECK CONSTRAINT [FK_static_pages_detail_pages];
ALTER TABLE [dbo].[static_texts] WITH CHECK ADD CONSTRAINT [FK_static_texts_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[static_texts] CHECK CONSTRAINT [FK_static_texts_languages];
ALTER TABLE [dbo].[web_domains] WITH CHECK ADD CONSTRAINT [FK_web_domains_back_end_languages] FOREIGN KEY([back_end_language]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[web_domains] CHECK CONSTRAINT [FK_web_domains_back_end_languages];
ALTER TABLE [dbo].[web_domains] WITH CHECK ADD CONSTRAINT [FK_web_domains_front_end_languages] FOREIGN KEY([front_end_language]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[web_domains] CHECK CONSTRAINT [FK_web_domains_front_end_languages];
ALTER TABLE [dbo].[weblinks_detail] WITH CHECK ADD CONSTRAINT [FK_weblinks_detail_languages] FOREIGN KEY([language_id]) REFERENCES [dbo].[languages] ([id]);
ALTER TABLE [dbo].[weblinks_detail] CHECK CONSTRAINT [FK_weblinks_detail_languages];
ALTER TABLE [dbo].[weblinks_detail] WITH CHECK ADD CONSTRAINT [FK_weblinks_detail_weblinks] FOREIGN KEY([weblink_id]) REFERENCES [dbo].[weblinks] ([id]);
ALTER TABLE [dbo].[weblinks_detail] CHECK CONSTRAINT [FK_weblinks_detail_weblinks];

/* CREATE INDEXES */
CREATE NONCLUSTERED INDEX [IX_ads_ad_slot] ON [dbo].[ads] ([language_id] ASC, [ad_slot] ASC, [inactive] ASC);
CREATE NONCLUSTERED INDEX [IX_administrators_facebook_id] ON [dbo].[administrators] ([facebook_user_id] ASC);
CREATE NONCLUSTERED INDEX [IX_administrators_google_id] ON [dbo].[administrators] ([google_user_id] ASC);
CREATE NONCLUSTERED INDEX [IX_administrators_detail_language] ON [dbo].[administrators_detail] ([language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_categories_parent_id] ON [dbo].[categories] ([parent_category_id] ASC);
CREATE NONCLUSTERED INDEX [IX_categories_detail_language] ON [dbo].[categories_detail] ([language_id] ASC, [inactive] ASC);
CREATE NONCLUSTERED INDEX [IX_languages_detail_language] ON [dbo].[languages_detail] ([translation_language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_administrator_id] ON [dbo].[posts] ([administrator_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_category_id] ON [dbo].[posts] ([category_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_detail_language] ON [dbo].[posts_detail] ([language_id] ASC, [inactive] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_comments_search] ON [dbo].[posts_comments] ([id] ASC, [post_id] ASC, [administrator_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_comments_administrator_id] ON [dbo].[posts_comments] ([administrator_id] ASC, [language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_comments_post_id] ON [dbo].[posts_comments] ([post_id] ASC, [language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_files_post_id] ON [dbo].[posts_files] ([post_id] ASC, [language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_ratings_administrator_id] ON [dbo].[posts_ratings] ([administrator_id] ASC, [language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_posts_ratings_post_id] ON [dbo].[posts_ratings] ([post_id] ASC, [language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_static_pages_connection] ON [dbo].[static_pages] ([connected_to_page] ASC);
CREATE NONCLUSTERED INDEX [IX_static_pages_detail_language] ON [dbo].[static_pages_detail] ([language_id] ASC, [inactive] ASC);
CREATE NONCLUSTERED INDEX [IX_static_texts_language] ON [dbo].[static_texts] ([language_id] ASC);
CREATE NONCLUSTERED INDEX [IX_weblinks_detail_language] ON [dbo].[weblinks_detail] ([language_id] ASC, [inactive] ASC);
CREATE NONCLUSTERED INDEX [IX_website_sessions_date] ON [dbo].[website_sessions] ([expires_date] ASC);

/* REBUILD INDEXES */
ALTER INDEX ALL ON [dbo].[administrators] REBUILD;
ALTER INDEX ALL ON [dbo].[administrators_detail] REBUILD;
ALTER INDEX ALL ON [dbo].[ads] REBUILD;
ALTER INDEX ALL ON [dbo].[categories] REBUILD;
ALTER INDEX ALL ON [dbo].[categories_detail] REBUILD;
ALTER INDEX ALL ON [dbo].[custom_themes] REBUILD;
ALTER INDEX ALL ON [dbo].[custom_themes_templates] REBUILD;
ALTER INDEX ALL ON [dbo].[languages] REBUILD;
ALTER INDEX ALL ON [dbo].[languages_detail] REBUILD;
ALTER INDEX ALL ON [dbo].[media_files] REBUILD;
ALTER INDEX ALL ON [dbo].[posts] REBUILD;
ALTER INDEX ALL ON [dbo].[posts_comments] REBUILD;
ALTER INDEX ALL ON [dbo].[posts_detail] REBUILD;
ALTER INDEX ALL ON [dbo].[posts_files] REBUILD;
ALTER INDEX ALL ON [dbo].[posts_ratings] REBUILD;
ALTER INDEX ALL ON [dbo].[static_pages] REBUILD;
ALTER INDEX ALL ON [dbo].[static_pages_detail] REBUILD;
ALTER INDEX ALL ON [dbo].[static_texts] REBUILD;
ALTER INDEX ALL ON [dbo].[web_domains] REBUILD;
ALTER INDEX ALL ON [dbo].[weblinks] REBUILD;
ALTER INDEX ALL ON [dbo].[weblinks_detail] REBUILD;
ALTER INDEX ALL ON [dbo].[website_sessions] REBUILD;
ALTER INDEX ALL ON [dbo].[website_settings] REBUILD;

/* EXCECUTE THE TRANSACTION */
COMMIT;