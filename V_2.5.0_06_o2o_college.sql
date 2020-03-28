use o2o_college;

UPDATE college_feedback t
    inner JOIN (SELECT k.fb_id, max(k.response_time) time1
                FROM college_feedback_proc k
                GROUP BY k.fb_id) cc ON cc.fb_id = t.fb_id
SET t.response_time=cc.time1
WHERE t.fb_status IN (5, 6);