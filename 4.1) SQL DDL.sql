use Yao_Li_6210;
--create schema Project;

-- Drop everything
alter table Project.CarRental drop constraint if exists chk_carrental_totalamount;
drop function Project.Chk_CarRental_TtlAmt;
drop table if exists Project.Payment;
drop function if exists Project.CalculateTotalAmount;
drop table if exists Project.CarRental;
drop table if exists Project.CarRentalReview;
drop table if exists Project.Car;
drop table if exists Project.PaymentMethod;
drop table if exists Project.PaymentStatus;
drop table if exists Project.CarStatus;
drop table if exists Project.CarRentalStatus;
drop table if exists Project.Staff;
drop table if exists Project.Customer;
drop table if exists Project.MembershipStatus;
drop table if exists Project.Store;

-- Create a function to compute the payment TotalAmount by adding ActualPaymentAmount and DiscountAmount
create function Project.CalculateTotalAmount (
    @ActualPaymentAmount decimal(10, 2),
    @DiscountAmount decimal(10, 2)
)
returns decimal(10, 2)
with schemabinding
as
begin
    return @ActualPaymentAmount + @DiscountAmount;
end;

-- Create all 12 tables
create table Project.MembershipStatus (
    MembershipStatusID int identity primary key,
    MembershipStatusDescription varchar(255) not null,
    MembershipStartDate date,
    MembershipEndDate date
);

create table Project.Customer (
    CustomerID int identity primary key,
    FirstName varchar(100) not null,
    LastName varchar(100) not null,
    DateOfBirth date not null,
    Email varchar(255),
    PhoneNumber varchar(15),
    DLNumber varchar(50) not null,
    BillingAddress varchar(255) not null,
    MembershipStatusID int not null references Project.MembershipStatus(MembershipStatusID)
);

create table Project.Store (
    StoreID int identity primary key,
    StoreName varchar(255) not null,
    Address varchar(255),
    City varchar(100),
    State varchar(100),
    Zipcode varchar(20),
    PhoneNumber varchar(15)
);

create table Project.Staff (
    StaffID int identity primary key,
    FirstName varchar(100) not null,
    LastName varchar(100) not null,
    Position varchar(100),
    Email varchar(255) not null,
    PhoneNumber varchar(15) not null,
    ManagerID int references Project.Staff(StaffID),
    StoreID int not null references Project.Store(StoreID)
);

create table Project.CarStatus (
    CarStatusID int identity primary key,
    CarStatusDescription varchar(255) not null
);

create table Project.Car (
    CarID int identity primary key,
    Make varchar(100) not null,
    Model varchar(100) not null,
    Year int not null,
    VIN varchar(50) not null,
    PlateNumber varchar(50),
    Mileage int not null,
    DailyRate decimal(10, 2) not null,
    CarStatusID int not null references Project.CarStatus(CarStatusID),
    StoreID int not null references Project.Store(StoreID)
);

create table Project.CarRentalStatus (
    CarRentalStatusID int identity primary key,
    CarRentalStatusDescription varchar(255) not null
);

create table Project.CarRentalReview (
    CarRentalReviewID int identity primary key,
    Rating int not null check (Rating between 1 and 5),
    ReviewText varchar(1000),
    ReviewDate date not null
);

create table Project.CarRental (
    CarRentalID int identity primary key,
    StaffID int not null references Project.Staff(StaffID),
    CarID int not null references Project.Car(CarID),
    StoreID int not null references Project.Store(StoreID),
    CustomerID int not null references Project.Customer(CustomerID),
    RentalStartDate date not null,
    RentalEndDate date,
    TotalAmount decimal(10, 2),
    CarRentalStatusID int not null references Project.CarRentalStatus(CarRentalStatusID),
    CarRentalReviewID int references Project.CarRentalReview(CarRentalReviewID)
);

create table Project.PaymentMethod (
    PaymentMethodID int identity primary key,
    PaymentMethodDescription varchar(255) not null
);

create table Project.PaymentStatus (
    PaymentStatusID int identity primary key,
    PaymentStatusDescription varchar(255) not null
);

create table Project.Payment (
    PaymentID int identity primary key,
    CarRentalID int not null references Project.CarRental(CarRentalID),
    -- Below is a computed column based on a function 
    TotalAmount as (Project.CalculateTotalAmount(ActualPaymentAmount, DiscountAmount)) persisted,
    ActualPaymentAmount decimal(10, 2) not null,
    DiscountAmount decimal(10, 2) not null,
    PaymentDate date,
    PaymentDescription varchar(1000),
    PaymentMethodID int not null references Project.PaymentMethod(PaymentMethodID),
    PaymentStatusID int not null references Project.PaymentStatus(PaymentStatusID)
);


/* 
 * Create table-level constraint.
 * To check if the TotalAmount of the CarRental is exactly the SUM of TotalAmount of each payment of this car rental.
*/
create function Project.Chk_CarRental_TtlAmt()
returns bit
as
begin
	declare @invalid_rental_count int;
	declare @result bit;

	-- Count rentals where the status is 1 and the totals don't match
	-- 1 means 'completed' in CarRentalStatus
    select @invalid_rental_count = count(*)
    from Project.CarRental cr
    join Project.CarRentalStatus crs on cr.CarRentalStatusID = crs.CarRentalStatusID
    where crs.CarRentalStatusDescription = 'Completed' 
    and cr.TotalAmount != (
		select coalesce(sum(p.TotalAmount), 0)
		from Project.Payment p
		where p.CarRentalID = cr.CarRentalID);

    -- If any invalid rentals are found, set the result to 1 (rule violated)
    if @invalid_rental_count > 0
        set @result = 1;
    else
        set @result = 0;

    return @result;
end;

alter table Project.CarRental add constraint chk_carrental_totalamount
check (Project.Chk_CarRental_TtlAmt() = 0);