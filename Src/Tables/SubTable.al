table 50806 FixedAssetSubTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Line No."; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(21; "Vehicle Number"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(22; Period; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(23; Model; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Project Type"; option)
        {
            OptionMembers = " ","O & M",Project;
        }
        field(25; "Client No."; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
            trigger OnValidate()
            var
                Des: Record Customer;
            begin
                if Des.Get("Client No.") then begin
                    Rec."Client Name" := Des.Name;
                end;

            end;
        }
        field(35; "Client Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(26; Remarks; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(27; Cost; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(28; "Total Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Payment Type"; option)
        {
            OptionMembers = " ","Cash","NEFT",UPI,RTGS;
        }
        field(30; "Account Holder Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(31; "Account No/Mobile No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(32; "IFSC Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(33; Category; option)
        {
            OptionMembers = " ",EMI,service,ROW,Renwel,"Local WorkShop",Diesel,Others;
        }
        field(34; Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}