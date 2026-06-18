ALTER TABLE "commentary" ADD CONSTRAINT "commentary_match_id_sequence_unique" UNIQUE("match_id","sequence");--> statement-breakpoint
ALTER TABLE "matches" ADD CONSTRAINT "matches_end_time_after_start_time" CHECK ("matches"."end_time" IS NULL OR "matches"."end_time" >= "matches"."start_time");--> statement-breakpoint
ALTER TABLE "matches" ADD CONSTRAINT "matches_home_score_non_negative" CHECK ("matches"."home_score" >= 0);--> statement-breakpoint
ALTER TABLE "matches" ADD CONSTRAINT "matches_away_score_non_negative" CHECK ("matches"."away_score" >= 0);