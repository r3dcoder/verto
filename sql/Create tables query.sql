

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