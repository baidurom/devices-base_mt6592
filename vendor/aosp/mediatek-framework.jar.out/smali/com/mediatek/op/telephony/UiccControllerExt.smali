.class public Lcom/mediatek/op/telephony/UiccControllerExt;
.super Ljava/lang/Object;
.source "UiccControllerExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IUiccControllerExt;


# static fields
.field static final TAG:Ljava/lang/String; = "UiccControllerExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMissingDetail(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const v1, 0x20500ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, strTitle:Ljava/lang/CharSequence;
    return-object v0
.end method

.method public getMissingTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, strTitle:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 56
    const v1, 0x20500e7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const v1, 0x20500e8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
