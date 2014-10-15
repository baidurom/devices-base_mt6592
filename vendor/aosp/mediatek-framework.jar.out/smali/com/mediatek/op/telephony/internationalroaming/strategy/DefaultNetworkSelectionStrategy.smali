.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;
.source "DefaultNetworkSelectionStrategy.java"

# interfaces
.implements Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "[DefaultNWStrategy]"


# direct methods
.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "dispose..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "[DefaultNWStrategy]"

    return-object v0
.end method

.method public needToBootOnCdma()Z
    .locals 1

    .prologue
    .line 64
    const-string v0, "needToBootOnCdma..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->hasSearchedOnCdma()Z

    move-result v0

    return v0
.end method

.method public needToBootOnGsm()Z
    .locals 1

    .prologue
    .line 57
    const-string v0, "needToBootOnGsm..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onCdmaPlmnChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "plmnString"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCdmaPlmnChanged: plmnString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->resumeRegistration(II)V

    .line 94
    return-void
.end method

.method public onGsmSuspend([Ljava/lang/String;I)V
    .locals 2
    .parameter "plmnString"
    .parameter "suspendedSession"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoService: plmnString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->resumeRegistration(II)V

    .line 87
    return-void
.end method

.method public onNoService(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoService: phoneType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 101
    return-void
.end method

.method public onPostSwitchPhone()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "onPostSwitchPhone..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onPreSwitchPhone()I
    .locals 1

    .prologue
    .line 72
    const-string v0, "onPreSwitchPhone..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultNetworkSelectionStrategy;->logd(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    return v0
.end method
