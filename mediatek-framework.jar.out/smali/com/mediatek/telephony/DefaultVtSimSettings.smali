.class public Lcom/mediatek/telephony/DefaultVtSimSettings;
.super Ljava/lang/Object;
.source "DefaultVtSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get3GSimId()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    const-string v2, "gsm.3gswitch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, simId:I
    if-lez v0, :cond_0

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v0, v2, :cond_0

    .line 104
    add-int/lit8 v1, v0, -0x1

    .line 109
    :goto_0
    return v1

    .line 106
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get3GSimId() got invalid property value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 113
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultVtSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public static setVtDefaultSim(Landroid/content/ContentResolver;[J[Z)V
    .locals 7
    .parameter "contentResolver"
    .parameter "simIdForSlot"
    .parameter "isSimInserted"

    .prologue
    .line 63
    const-wide/16 v3, -0x5

    .line 64
    .local v3, nVTDefSIM:J
    invoke-static {}, Lcom/mediatek/telephony/DefaultVtSimSettings;->get3GSimId()I

    move-result v2

    .line 67
    .local v2, n3gSIMSlot:I
    const-string v5, "MTK_GEMINI_3G_SWITCH is open"

    invoke-static {v5}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V

    .line 71
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 73
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iTelephony.is3GSwitchManualEnabled() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; iTelephony.is3GSwitchManualChange3GAllowed() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V

    .line 78
    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    const-wide/16 v3, 0x0

    .line 81
    const-string v5, "setVtDefaultSim set mVTDefSIM to 0"

    invoke-static {v5}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVtDefaultSim -- nVTDefSIM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V

    .line 94
    const-string v5, "video_call_sim_setting"

    invoke-static {p0, v5, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 97
    return-void

    .line 82
    :cond_2
    :try_start_1
    aget-boolean v5, p2, v2

    if-eqz v5, :cond_1

    .line 83
    aget-wide v3, p1, v2

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nVTDefSIM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; n3gSIMSlot ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "PHONE"

    const-string v6, "mTelephony exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
