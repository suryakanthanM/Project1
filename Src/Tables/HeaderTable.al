table 50807 "Header Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration No."; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vehicle Main Table";
            // trigger OnValidate()
            // var
            //     VehicleMainTable: Record "Vehicle Main Table";
            // begin
            //     if VehicleMainTable.Get(Rec."Registration No.") then begin
            //         Rec.Validate("Registration No.", VehicleMainTable."Registration No.");
            //         Rec.Validate("Registration Name", VehicleMainTable."Registration Name");
            //         // Rec."Model" := VehicleMainTable."Model";
            //         // Rec."Registration Date" := VehicleMainTable."Registration Date";
            //         // Rec."Insurance Expire Date" := VehicleMainTable."Insurance Expire Date";
            //         // Rec."FC- Expire Date" := VehicleMainTable."FC- Expire Date";
            //         // Rec."Permit Expire Date" := VehicleMainTable."Permit Expire Date";
            //         // Rec."Pollution Expire Date" := VehicleMainTable."Pollution Expire Date";
            //     end;
            // end;


        }
        field(2; "Chasis No."; Code[50])
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
        key(Key1; "Registration No.", "Chasis No.")
        {
            Clustered = true;
        }
    }



}