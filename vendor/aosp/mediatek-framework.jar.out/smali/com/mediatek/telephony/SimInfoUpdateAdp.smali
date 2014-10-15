.class public Lcom/mediatek/telephony/SimInfoUpdateAdp;
.super Lcom/mediatek/telephony/SimInfoUpdate;
.source "SimInfoUpdateAdp.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ISimInfoUpdate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SimInfoUpdate;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "constructor"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/SimInfoUpdate;-><init>(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public broadcastSimInsertedStatusAdp(I)V
    .locals 0
    .parameter "nSimInsertStatus"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoUpdate;->broadcastSimInsertedStatus(I)V

    .line 61
    return-void
.end method

.method public disposeReceiverAdp()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->disposeReceiver()V

    .line 65
    return-void
.end method

.method public setDefaultNameForNewSimAdp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "strName"
    .parameter "slot"

    .prologue
    .line 69
    invoke-static {p1, p2, p3}, Lcom/mediatek/telephony/SimInfoUpdate;->setDefaultNameForNewSim(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public updateSimInfoByIccIdAdp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"
    .parameter "is3GSwitched"

    .prologue
    .line 56
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/telephony/SimInfoUpdate;->updateSimInfoByIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    return-void
.end method
