page 50811 AssetList
{
    ApplicationArea = All;
    Caption = 'Asset List';
    PageType = List;
    SourceTable = FixedAssetSubTable;
    CardPageId = HeaderCardPage;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Vehicle Number"; Rec."Vehicle Number")
                {
                    ToolTip = 'Specifies the value of the Vehicle Number field.', Comment = '%';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.', Comment = '%';
                }
                field(Period; Rec.Period)
                {
                    ToolTip = 'Specifies the value of the Period field.', Comment = '%';
                }
                field("Total Cost"; Rec."Total Cost")
                {
                    ToolTip = 'Specifies the value of the Total Cost field.', Comment = '%';
                }
            }
        }
    }
}
