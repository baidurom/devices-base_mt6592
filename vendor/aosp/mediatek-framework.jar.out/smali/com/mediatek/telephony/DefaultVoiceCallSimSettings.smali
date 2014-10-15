.class public Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;
.super Ljava/lang/Object;
.source "DefaultVoiceCallSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSimRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 91
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    const/4 v1, 0x1

    .line 96
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 97
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 98
    const/4 v1, 0x0

    .line 99
    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isVoiceCallDefaultSIM(J)Z
    .locals 2
    .parameter "voiceCallSIM"

    .prologue
    .line 106
    const-wide/16 v0, -0x5

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVoipEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "contentResolver"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    const-string v2, "enable_internet_call_value"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 115
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultVoiceCallSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public static setVoiceCallDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[JI)V
    .locals 8
    .parameter "context"
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "nSimCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v7, 0x1

    .line 60
    const-wide/16 v0, -0x5

    .line 61
    .local v0, defSIM:J
    const-string v4, "voice_call_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {p1, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 63
    .local v2, oldVoiceCallDefaultSIM:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nSimCount = : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 64
    if-le p4, v7, :cond_2

    .line 65
    const-wide/16 v0, -0x1

    .line 66
    invoke-static {v2, v3}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoiceCallDefaultSIM(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const-string v4, "setVoiceCallDefaultSim -- To : -1"

    invoke-static {v4}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 68
    const-string v4, "voice_call_sim_setting"

    const-wide/16 v5, -0x1

    invoke-static {p1, v4, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 81
    :cond_0
    :goto_0
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v2, v3, p3, v4}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isSimRemoved(J[JI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVoiceCallDefaultSim -- To : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 83
    const-string v4, "voice_call_sim_setting"

    invoke-static {p1, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 87
    :cond_1
    return-void

    .line 71
    :cond_2
    if-ne p4, v7, :cond_0

    .line 72
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 73
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoipEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoiceCallDefaultSIM(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVoiceCallDefaultSim -- To : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 76
    const-string v4, "voice_call_sim_setting"

    invoke-static {p1, v4, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method
