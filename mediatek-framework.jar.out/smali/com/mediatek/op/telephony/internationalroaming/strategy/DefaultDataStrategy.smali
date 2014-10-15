.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;
.source "DefaultDataStrategy.java"

# interfaces
.implements Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "[DefaultDataStrategy]"


# instance fields
.field protected mDualPhoneCdmaImsi:Ljava/lang/String;

.field protected mDualPhoneGsmImsi:Ljava/lang/String;

.field protected mITelephony:Lcom/android/internal/telephony/ITelephony;

.field protected mIsICardImsiReady:Z

.field protected mOpNumeric:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 50
    const-string v0, "00000"

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mDualPhoneCdmaImsi:Ljava/lang/String;

    .line 51
    const-string v0, "00000"

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mDualPhoneGsmImsi:Ljava/lang/String;

    .line 52
    const-string v0, "00000"

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mOpNumeric:Ljava/lang/String;

    .line 61
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mIsICardImsiReady:Z

    .line 63
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "[DefaultDataStrategy]"

    return-object v0
.end method

.method public insertGsmApnForDualModeCard()J
    .locals 2

    .prologue
    .line 86
    const-string v0, "insertGsmApnForDualModeCard..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->logd(Ljava/lang/String;)V

    .line 87
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onRegisterHomeNetwork(Ljava/lang/String;)V
    .locals 2
    .parameter "homePlmn"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegisterHomeNetwork: homePlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->logd(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mOpNumeric:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public onRegisterRoamingNetwork(Ljava/lang/String;)V
    .locals 2
    .parameter "roamingPlmn"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegisterRoamingNetwork: roamingPlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->logd(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mOpNumeric:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public onSimImsiLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    const/4 v3, 0x1

    .line 67
    iput-boolean v3, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mIsICardImsiReady:Z

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mDualPhoneCdmaImsi:Ljava/lang/String;

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 73
    iput-object p2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mDualPhoneGsmImsi:Ljava/lang/String;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->getDualModePhoneCardType()I

    move-result v0

    .line 78
    .local v0, cardType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimImsiReady: mDualPhoneCdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mDualPhoneCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDualPhoneGsmImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->mDualPhoneGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->logd(Ljava/lang/String;)V

    .line 80
    if-ne v0, v3, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->insertGsmApnForDualModeCard()J

    .line 83
    :cond_2
    return-void
.end method
