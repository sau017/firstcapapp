namespace harshey.commons;
using { Currency } from '@sap/cds/common';

type Gender : String(1) enum{
    male = 'M';
    female = 'F';
    undisclosed = 'U';
}


type AmountT : Decimal(10,2)@(
    Semantic.amount.currencyCode : 'CURRENCY_code',
    sap.unit : 'CURRENCY_code'
);

aspect Amount : {
    CURRENCY : Currency;
    GROSS_AMOUNT : AmountT @(title : 'Gross Amount');
    NET_AMOUNT : AmountT @(title : 'Net Amount');
    TAX_AMOUNT : AmountT @(title : 'Tax Amount');
}

type Guid : String (32);

type PhoneNumber : String(30)@assert.format : '^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$';
type EmailAddress :String(60)@assert.format : '^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$';