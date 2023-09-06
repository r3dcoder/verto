

-- Create a table to store  posts
CREATE TABLE Posts
(
    PostID INT PRIMARY KEY IDENTITY(1, 1), -- Unique identifier for each post
    Title NVARCHAR(250) NOT NULL,         -- Title of the  post
    ImageURL NVARCHAR(250) NOT NULL,      -- URL of the associated image
    Content TEXT NOT NULL                 -- Content of the  post
);


-- Create a table to store  ProductCategories
CREATE TABLE ProductCategories
(
    CategoryID INT PRIMARY KEY IDENTITY(1, 1), -- Unique identifier for each category
    Title NVARCHAR(250) NOT NULL,         -- Title of the  category
    ImageURL NVARCHAR(250) NOT NULL,      -- URL of the associated image
);

GO
-- Create a table to store  Offers
CREATE TABLE Offers
(
    OfferID INT PRIMARY KEY IDENTITY(1, 1), -- Unique identifier for each offer
    Title NVARCHAR(250) NOT NULL,         -- Title of the  offer
    ImageURL NVARCHAR(250) NOT NULL,      -- URL of the associated image
    Offer NVARCHAR(250) NOT NULL                 -- quantiy/cachback of the  offer
);

-- Insert rows into table 'Posts'
INSERT INTO Posts
(
    ImageURL, Title, Content
)
VALUES
(
    'https://assets.freee-foods.co.uk/images/Pages_images/Whole_Range_V2.png', -- Realistic image URL for the first post
    'New Products',               -- Title of the first post
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in hendrerit lectus. Sed sit amet tincidunt arcu.' -- Placeholder content
),
(
    'https://www.cyberpowersystem.co.uk/template/2022/page/editingpcs/images/c1.jpg?v2', -- Realistic image URL for the second post
    'Field Events',              -- Title of the second post
    'Pellentesque sit amet massa vel lorem euismod posuere. Sed tristique ex id purus bibendum, in fermentum arcu consectetur.' -- Placeholder content
),
(
    'https://assets.freee-foods.co.uk/images/Pages_images/Whole_Range_V2.png', -- Realistic image URL for the first post
    'New Products',               -- Title of the first post
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in hendrerit lectus. Sed sit amet tincidunt arcu.' -- Placeholder content
),
(
    'https://www.pcworld.com/wp-content/uploads/2023/04/IMG_20190615_214330.jpg?quality=50&strip=all', -- Realistic image URL for the second post
    'Gallery',              -- Title of the second post
    'Pellentesque sit amet massa vel lorem euismod posuere. Sed tristique ex id purus bibendum, in fermentum arcu consectetur.' -- Placeholder content
);

GO

-- Insert rows into the 'Offers' table
INSERT INTO
    Offers (Title, ImageURL, Offer)
VALUES
    (
        'Discovery WP PC',
        'https://m.economictimes.com/thumb/msid-94286612,width-1200,height-900,resizemode-4,imgsize-42116/istock-1043657526-1.jpg',
        '50% cashback on all items'
    ),
    (
        'HR ED Field Scopes',
        'https://mywanderingvoyage.com/wp-content/uploads/2022/08/Feature-header.jpg',
        'Buy 2, Get 1 Free on selected items'
    ),
    (
        'IS 60 FieldScopes  33',
        'https://www.dpreview.com/files/p/articles/4794169662/HH4A0123_copy.jpeg',
        'Flat 20% discount on electronics'
    );

GO

-- Insert 4 rows into the ProductCategories table
INSERT INTO ProductCategories (Title, ImageURL)
VALUES
    ('Porro Prism', 'https://hikingandfishing.com/wp-content/uploads/2022/05/Focus-Free-Binoculars-300x236.jpg'),
    ('Roof Prism', 'https://hikingandfishing.com/wp-content/uploads/2022/05/Dental-Loupes-300x300.jpeg'),
    ('Astronomy Binoculars', 'https://hikingandfishing.com/wp-content/uploads/2022/05/Astronomy-Binoculars-300x248.jpg'),
    ('Surgical Loupes', 'https://hikingandfishing.com/wp-content/uploads/2022/05/Dental-Loupes-300x300.jpeg');