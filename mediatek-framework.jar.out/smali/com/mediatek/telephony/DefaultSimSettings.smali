.class public Lcom/mediatek/telephony/DefaultSimSettings;
.super Ljava/lang/Object;
.source "DefaultSimSettings.java"


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

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 71
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public static setAllDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[J[ZIIZ[IZ)V
    .locals 9
    .parameter "context"
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "isSimInserted"
    .parameter "nNewCardCount"
    .parameter "nSimCount"
    .parameter "is3GSwitched"
    .parameter "mInsertSimState"
    .parameter "hasSimRemoved"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;[J[ZIIZ[IZ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {p0, p1, p2, p3, p6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->setVoiceCallDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[JI)V

    .line 60
    const-string v0, "SimInfoUpdate: voice call complete"

    invoke-static {v0}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 61
    invoke-static {p1, p3, p4}, Lcom/mediatek/telephony/DefaultVtSimSettings;->setVtDefaultSim(Landroid/content/ContentResolver;[J[Z)V

    .line 62
    const-string v0, "SimInfoUpdate: vt complete"

    invoke-static {v0}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 63
    invoke-static {p1, p2, p3, p6}, Lcom/mediatek/telephony/DefaultSmsSimSettings;->setSmsTalkDefaultSim(Landroid/content/ContentResolver;Ljava/util/List;[JI)V

    .line 64
    const-string v0, "SimInfoUpdate: sms complete"

    invoke-static {v0}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 65
    invoke-static/range {v0 .. v8}, Lcom/mediatek/telephony/DefaultDataSimSettings;->setDataDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[J[ZII[IZ)V

    .line 67
    const-string v0, "SimInfoUpdate: data complete"

    invoke-static {v0}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 68
    return-void
.end method
