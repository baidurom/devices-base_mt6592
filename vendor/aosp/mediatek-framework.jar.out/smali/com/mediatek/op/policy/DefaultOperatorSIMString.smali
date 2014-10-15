.class public Lcom/mediatek/op/policy/DefaultOperatorSIMString;
.super Ljava/lang/Object;
.source "DefaultOperatorSIMString.java"

# interfaces
.implements Lcom/mediatek/common/policy/IOperatorSIMString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .parameter "sourceStr"
    .parameter "slotId"
    .parameter "simChangedTag"
    .parameter "context"

    .prologue
    .line 11
    return-object p1
.end method

.method public getOperatorSIMStringForSIMDetection(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .locals 0
    .parameter "sourceStr"
    .parameter "newSimSlot"
    .parameter "newSimNumber"
    .parameter "context"

    .prologue
    .line 16
    return-object p1
.end method
