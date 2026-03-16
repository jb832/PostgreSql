-- Create Table...

CREATE TABLE dbo.category
(
    category_id         INT             NOT NULL,
    category_name       VARCHAR(15)     NOT NULL UNIQUE,
    description         VARCHAR(128)    NOT NULL,

    CONSTRAINT pk_category
        PRIMARY KEY (category_id),

    CONSTRAINT uk_category__category_name
        UNIQUE (category_name)
);

