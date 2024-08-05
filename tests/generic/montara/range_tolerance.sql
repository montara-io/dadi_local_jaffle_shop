{% test range_tolerance(
    model,
    column_name,
    min,
    max,
    tolerance
) %}
{% if tolerance == 0 %}
SELECT
    *
FROM
    {{ model }}
WHERE
    {{ column_name }} NOT BETWEEN {{ min }}
    AND {{ max }}
{% else %}
    WITH out_of_range_percentage AS (
        SELECT
            (COUNT(*) * 100.0) / (
                SELECT
                    COUNT(*)
                FROM
                    {{ model }}
            ) AS percentage
        FROM
            {{ model }}
        WHERE
            {{ column_name }} NOT BETWEEN {{ min }}
            AND {{ max }}
    )
SELECT
    *
FROM
    {{ model }}
WHERE
    {{ column_name }} NOT BETWEEN {{ min }}
    AND {{ max }}
    AND (
        SELECT
            percentage
        FROM
            out_of_range_percentage
    ) > {{ tolerance }}
{% endif %}

{% endtest %}
