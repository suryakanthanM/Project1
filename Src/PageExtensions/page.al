// pageextension 50805 "Fixed Assets Pageext" extends "Fixed Asset Card"
// {
//     layout
//     {
//         modify("FA Class Code")
//         {
//             Visible = false;
//         }
//         addafter("FA Class Code")
//         {
//             field("Vehicle Registration No."; Rec."Vehicle Registration No.")
//             {
//                 ApplicationArea = All;
//             }
//         }
//         addafter(Maintenance){

//         }
//     }

//     actions
//     {
//         // Add changes to page actions here
//     }

//     var
//         myInt: Integer;
// }