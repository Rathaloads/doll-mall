-- 分类
CREATE TABLE T_Product_Category(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	Level INT NOT NULL DEFAULT(0),
	ParentId INT NOT NULL DEFAULT(0),
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

-- SPU
CREATE TABLE T_Product(
	ID INT PRIMARY KEY IDENTITY(1,1),
	CategoryId INT NOT NULL,
	Name VARCHAR(255) NOT NULL,
	AttrList TEXT, -- 属性 [{ "主体":{ "内存": ["2G", "4G"] }, "系统": { "操作系统": ["Windows", "Mac", "Linux"] } }]
	ShareImg TEXT, -- 分享图
	DetailImgs TEXT, --xx.png,ssss.png
	DisplayImgs TEXT, -- xx.png,sss.png
	MainImg TEXT, -- 主图
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

-- SKU
CREATE TABLE T_Product_Space(
	Id INT PRIMARY KEY IDENTITY(1,1),
	ProductId INT NOT NULL,
	ProductSpaces TEXT NOT NULL,-- { "颜色": "白色", "大小": "大" }
	ProductSpaceId TEXT NOT NULL, --{ "1": "3", "2": "1" } -> { "T_Product_Space_Key_Id": "T_Product_Space_Values_Id" }
	ProductStock INT DEFAULT(GETDATE()), -- 库存
	Price MONEY NOT NULL, -- 价格
	DisplayImg TEXT, -- 展示图
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

-- SKU属性Key
CREATE TABLE T_Product_Space_Key(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

--SKU属性Value
CREATE TABLE T_Product_Space_Values(
	Id INT PRIMARY KEY IDENTITY(1,1),
	AttrValue VARCHAR(50) NOT NULL,
	KeyId INT NOT NULL,
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

