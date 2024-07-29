page 50801 "Vechile Main CardPage"
{
    PageType = Card;
    Caption = 'Vechile Card';
    ApplicationArea = All;
    SourceTable = "Vehicle Main Table";

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration No. field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Vin No."; Rec."Vin No.")
                {
                    ToolTip = 'Specifies the value of the Vin No. field.', Comment = '%';
                    Caption = 'Chasis No.';
                    ApplicationArea = All;
                }
                field("Registration Name"; Rec."Registration Name")
                {
                    ToolTip = 'Specifies the value of the Vihicle Registration Name field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration Date field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Model"; Rec."Model")
                {
                    ToolTip = 'Specifies the value of the Vehicle Model field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("FC- Expire Date"; Rec."FC- Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle FC- Expire Date field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Insurance Expire Date"; Rec."Insurance Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Insurance Expire Date field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Pollution Expire Date"; Rec."Pollution Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Pollution Expire Date field.', Comment = '%';
                    ApplicationArea = All;
                }
                field("Permit Expire Date"; Rec."Permit Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Permit Expire Date field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}