.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;
.source "DefaultGeneralStrategy.java"

# interfaces
.implements Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "[DefaultGeneralStrategy]"


# direct methods
.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 51
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "dispose..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;->logd(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "[DefaultGeneralStrategy]"

    return-object v0
.end method

.method public isHomeNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "mcc"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeNetwork: mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;->logd(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onDualPhoneRadioAvailable()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "onDualPhoneRadioAvailable..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;->logd(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onDualPhoneRadioOn(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDualPhoneRadioOn: reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;->logd(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onNewSimInserted(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewSimInserted: simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultGeneralStrategy;->logd(Ljava/lang/String;)V

    .line 62
    return-void
.end method
