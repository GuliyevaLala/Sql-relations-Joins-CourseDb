create database Shopp
use Shopp

create table Products (
    [Id] int primary key Identity,
    [Name] nvarchar (255),
	[Count] int,
	[Price] decimal,
	[CategoryId] int foreign key references Categories(Id)
);

create table Categories (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255)
);

select * from Products
select * from Categories


--First Task

select ct.name as 'Category', pr.name as 'Product' from Categories ct
inner join Products pr
on ct.Id = pr.CategoryId

select ct.name as 'Category', pr.name as 'Product' from Categories ct
left join Products pr
on ct.Id = pr.CategoryId

select ct.name as 'Category', pr.name as 'Product' from Categories ct
right join Products pr
on ct.Id = pr.CategoryId

select ct.name as 'Category', pr.name as 'Product' from Categories ct
full outer join Products pr
on ct.Id = pr.CategoryId

create table Users (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255)
);

create table Roles (
    [Id] int primary key Identity(1,1),
    [Name] nvarchar (255)
);

create table UserRole (
    [Id] int primary key Identity,
    [UsersId] int foreign key references Users(Id),
	[RolesId] int foreign key references Roles(Id)

);

select * from UserRole
select * from Users
Select * from Roles

select usr.name as 'User Name', rol.Name as 'Roles' from Users usr
inner join UserRole userole
on usr.Id = userole.UsersId
inner join Roles rol
on rol.Id = userole.RolesId
