Attribute VB_Name = "VATFx"
Function VATFx(AmountFx As Variant, RateFx As Variant)

VATFx = AmountFx * (RateFx / 100)

End Function
