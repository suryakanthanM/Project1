page 50809 HeaderCardPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Header Table";
    RefreshOnActivate = true;
    InsertAllowed = true;
    Editable = true;
    DeleteAllowed = true;


    layout
    {
        area(Content)
        {
            group(Vechile)

            {
                field(" Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration No. field.', Comment = '%';
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
                    trigger OnValidate()
                    var
                        VehicleMainTable: Record "Vehicle Main Table";

                    begin
                        if VehicleMainTable.Get(Rec."Registration No.") then begin
                            Rec.Validate("Registration Name", VehicleMainTable."Registration Name");
                            Rec.Validate("Model", VehicleMainTable."Model");
                            Rec.Validate("Registration Date", VehicleMainTable."Registration Date");
                            Rec.Validate("Insurance Expire Date", VehicleMainTable."Insurance Expire Date");
                            Rec.Validate("FC- Expire Date", VehicleMainTable."FC- Expire Date");
                            Rec.Validate("Permit Expire Date", VehicleMainTable."Permit Expire Date");
                            Rec.Validate("Pollution Expire Date", VehicleMainTable."Pollution Expire Date");
                        end;
                    end;
                }
                field("Chasis No."; Rec."Chasis No.")
                {
                    ToolTip = 'Specifies the value of the Vin No. field.', Comment = '%';
                    Caption = ' Chasis No.';
                    // TableRelation = "Vehicle Main Table"."Vin No.";


                }

                field("Registration Name"; Rec."Registration Name")
                {
                    ToolTip = 'Specifies the value of the Vihicle Registration Name field.', Comment = '%';
                }
                field("Model"; Rec."Model")
                {
                    ToolTip = 'Specifies the value of the Vehicle Model field.', Comment = '%';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration Date field.', Comment = '%';
                }
                field("Insurance Expire Date"; Rec."Insurance Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Insurance Expire Date field.', Comment = '%';
                }
                field("FC- Expire Date"; Rec."FC- Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle FC- Expire Date field.', Comment = '%';
                }
                field("Permit Expire Date"; Rec."Permit Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Permit Expire Date field.', Comment = '%';
                }
                field("Pollution Expire Date"; Rec."Pollution Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Pollution Expire Date field.', Comment = '%';
                }

            }
            part(Subpage; Subpage)
            {
                ApplicationArea = All;
                SubPageLink = "Vehicle Number" = field("Registration No.");
            }
        }
    }
}