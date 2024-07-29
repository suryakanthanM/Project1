table 50800 "Vehicle Main Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration No."; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Vin No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Registration Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Model"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "FC- Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Insurance Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Pollution Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Permit Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Registration No.", "Vin No.")
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