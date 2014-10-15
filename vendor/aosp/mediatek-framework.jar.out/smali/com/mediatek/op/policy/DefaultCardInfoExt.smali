.class public Lcom/mediatek/op/policy/DefaultCardInfoExt;
.super Ljava/lang/Object;
.source "DefaultCardInfoExt.java"

# interfaces
.implements Lcom/mediatek/common/policy/ICardInfoExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultKeyguardUtilExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOptrNameByIdx(Landroid/widget/TextView;JLandroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "v"
    .parameter "simIdx"
    .parameter "context"
    .parameter "optrname"

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/op/policy/DefaultCardInfoExt;->getOptrDrawableByIdx(JLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 22
    .local v0, simCardNamePadding:I
    invoke-virtual {p1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    if-nez p5, :cond_0

    .line 24
    const v1, 0x20500a9

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public addOptrNameBySlot(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "v"
    .parameter "slot"
    .parameter "context"
    .parameter "optrname"

    .prologue
    const/4 v3, 0x0

    .line 32
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2, p3}, Lcom/mediatek/op/policy/DefaultCardInfoExt;->getOptrDrawableBySlot(JLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 35
    .local v0, simCardNamePadding:I
    invoke-virtual {p1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 36
    if-nez p4, :cond_0

    .line 37
    const v1, 0x20500a9

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getOptrDrawableByIdx(JLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "simIdx"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 46
    const-string v2, "DefaultKeyguardUtilExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptrDrawableById, xxsimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    long-to-int v2, p1

    int-to-long v2, v2

    invoke-static {p3, v2, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 48
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_1

    .line 49
    const-string v2, "DefaultKeyguardUtilExt"

    const-string v3, "getOptrDrawableBySlotId, return null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-object v1

    .line 52
    .restart local v0       #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrDrawableBySlot(JLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "slot"
    .parameter "context"

    .prologue
    .line 61
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 62
    const-string v1, "DefaultKeyguardUtilExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrDrawableBySlot, xxslot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    long-to-int v1, p1

    invoke-static {p3, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 64
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 65
    const-string v1, "DefaultKeyguardUtilExt"

    const-string v2, "getOptrDrawableBySlotId, return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 71
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
