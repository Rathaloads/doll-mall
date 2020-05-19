-- ����
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
	AttrList TEXT, -- ���� [{ "����":{ "�ڴ�": ["2G", "4G"] }, "ϵͳ": { "����ϵͳ": ["Windows", "Mac", "Linux"] } }]
	ShareImg TEXT, -- ����ͼ
	DetailImgs TEXT, --xx.png,ssss.png
	DisplayImgs TEXT, -- xx.png,sss.png
	MainImg TEXT, -- ��ͼ
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

-- SKU
CREATE TABLE T_Product_Space(
	Id INT PRIMARY KEY IDENTITY(1,1),
	ProductId INT NOT NULL,
	ProductSpaces TEXT NOT NULL,-- { "��ɫ": "��ɫ", "��С": "��" }
	ProductSpaceId TEXT NOT NULL, --{ "1": "3", "2": "1" } -> { "T_Product_Space_Key_Id": "T_Product_Space_Values_Id" }
	ProductStock INT DEFAULT(GETDATE()), -- ���
	Price MONEY NOT NULL, -- �۸�
	DisplayImg TEXT, -- չʾͼ
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

-- SKU����Key
CREATE TABLE T_Product_Space_Key(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

--SKU����Value
CREATE TABLE T_Product_Space_Values(
	Id INT PRIMARY KEY IDENTITY(1,1),
	AttrValue VARCHAR(50) NOT NULL,
	KeyId INT NOT NULL,
	CreateTime DATETIME DEFAULT(GETDATE()),
	UpdateTime DATETIME
)

