.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultCardStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/StrategyBase;
.source "DefaultCardStrategy.java"

# interfaces
.implements Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "[DefaultCardStrategy]"


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
    .line 77
    const-string v0, "dispose..."

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultCardStrategy;->logd(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "[DefaultCardStrategy]"

    return-object v0
.end method

.method public onSimImsiLoaded(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "dualSimId"
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimImsiLoaded: dualSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cdmaImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultCardStrategy;->logd(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public parseCardType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "cdmaImsi"
    .parameter "gsmImsi"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCardType: cdmaImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultCardStrategy;->logd(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x3

    .line 65
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
