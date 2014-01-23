[when]There's a sale=$sale: Sale()
[then]Register the sale to the salesman=$salesman.getAllSales().add($sale);
