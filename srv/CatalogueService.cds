using { harshey.db.master , harshey.db.transaction } from '../db/data-model';

service CatalogService @(path: 'CatalogueService'){

    entity BusinessPartnerSet as projection on  master.businesspartner;
    entity AddressSet as projection on master.address;
    entity EmployeeSet as projection on master.employees;
    entity POs as projection on transaction.purchaseorder;
    entity POItems as projection on transaction.poitems;
}