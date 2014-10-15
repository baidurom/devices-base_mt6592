.class public Lcom/mediatek/telephony/DefaultDataSimSettings;
.super Ljava/lang/Object;
.source "DefaultDataSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get3GSimId()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 263
    const-string v2, "gsm.3gswitch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, simId:I
    if-lez v0, :cond_0

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v0, v2, :cond_0

    .line 265
    add-int/lit8 v1, v0, -0x1

    .line 270
    :goto_0
    return v1

    .line 267
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

    invoke-static {v2}, Lcom/mediatek/telephony/DefaultDataSimSettings;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSimRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 246
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 247
    const/4 v1, 0x0

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    const/4 v1, 0x1

    .line 251
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 253
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 254
    const/4 v1, 0x0

    .line 255
    goto :goto_0

    .line 251
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 274
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultDataSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public static setDataDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[J[ZII[IZ)V
    .locals 21
    .parameter "context"
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "isSimInserted"
    .parameter "nNewCardCount"
    .parameter "nSimCount"
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
            ">;[J[ZII[IZ)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/16 v17, 0x0

    .line 78
    .local v17, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_start_0
    const-class v18, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/DefaultDataSimSettings;->get3GSimId()I

    move-result v11

    .line 85
    .local v11, n3gSIMSlot:I
    const-string v18, "gprs_connection_sim_setting"

    const-wide/16 v19, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 86
    .local v12, oldGprsDefaultSIM:J
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 87
    .local v4, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v18, 0x1

    move/from16 v0, p6

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 88
    const-wide/16 v18, -0x5

    cmp-long v18, v12, v18

    if-nez v18, :cond_0

    .line 89
    invoke-interface/range {v17 .. v17}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 90
    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 118
    :cond_0
    :goto_1
    sget v18, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v12, v13, v0, v1}, Lcom/mediatek/telephony/DefaultDataSimSettings;->isSimRemoved(J[JI)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 119
    invoke-interface/range {v17 .. v17}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 120
    if-lez p6, :cond_1

    .line 121
    const-string v18, "default data SIM removed and default data on, switch to 3G SIM"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/telephony/DefaultDataSimSettings;->logd(Ljava/lang/String;)V

    .line 122
    aget-boolean v18, p4, v11

    if-eqz v18, :cond_6

    .line 123
    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 171
    :cond_1
    :goto_2
    const-string v18, "gprs_connection_sim_setting"

    const-wide/16 v19, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 172
    .local v6, gprsDefaultSIM:J
    const-wide/16 v18, -0x5

    cmp-long v18, v6, v18

    if-eqz v18, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-eqz v18, :cond_2

    .line 173
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v16

    .line 174
    .local v16, slot:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 177
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 179
    const-string v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 180
    .local v10, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v10, :cond_2

    .line 182
    :try_start_1
    const-string v18, "default"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v10, v0, v1}, Lcom/android/internal/telephony/ITelephony;->enableApnTypeGemini(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .end local v10           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v16           #slot:I
    :cond_2
    :goto_3
    return-void

    .line 79
    .end local v4           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v6           #gprsDefaultSIM:J
    .end local v11           #n3gSIMSlot:I
    .end local v12           #oldGprsDefaultSIM:J
    :catch_0
    move-exception v5

    .line 80
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v11       #n3gSIMSlot:I
    .restart local v12       #oldGprsDefaultSIM:J
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 94
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, p6

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 95
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v18

    iget-wide v14, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 100
    .local v14, simId:J
    const-wide/16 v18, -0x5

    cmp-long v18, v12, v18

    if-nez v18, :cond_0

    .line 101
    invoke-interface/range {v17 .. v17}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 102
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_1

    .line 104
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    .line 125
    .end local v14           #simId:J
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 128
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_2

    .line 130
    :cond_8
    invoke-interface/range {v17 .. v17}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 131
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-lez v18, :cond_e

    .line 132
    if-lez p5, :cond_a

    .line 133
    const-string v18, "SIM swapped and data on, default switch to 3G SIM"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/telephony/DefaultDataSimSettings;->logd(Ljava/lang/String;)V

    .line 134
    aget-boolean v18, p4, v11

    if-eqz v18, :cond_9

    .line 135
    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 137
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 139
    :cond_a
    const/4 v8, 0x0

    .line 140
    .local v8, hasSIMRepositioned:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_b

    .line 141
    aget v18, p7, v9

    const/16 v19, -0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 142
    const/4 v8, 0x1

    .line 146
    :cond_b
    if-nez p8, :cond_1

    if-eqz v8, :cond_1

    .line 147
    const-string v18, "Some SIM is switched slot, default switch to 3G SIM"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/telephony/DefaultDataSimSettings;->logd(Ljava/lang/String;)V

    .line 148
    aget-boolean v18, p4, v11

    if-eqz v18, :cond_d

    .line 149
    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 140
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 151
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 155
    .end local v8           #hasSIMRepositioned:Z
    .end local v9           #i:I
    :cond_e
    if-lez p5, :cond_1

    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_1

    .line 156
    const-string v18, "All SIM new, data off and default switch data to 3G SIM"

    invoke-static/range {v18 .. v18}, Lcom/mediatek/telephony/DefaultDataSimSettings;->logd(Ljava/lang/String;)V

    .line 157
    aget-boolean v18, p4, v11

    if-eqz v18, :cond_f

    .line 158
    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 160
    :cond_f
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 183
    .restart local v6       #gprsDefaultSIM:J
    .restart local v10       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v16       #slot:I
    :catch_1
    move-exception v5

    .line 184
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 189
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v10           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_10
    const-string v18, "gprsDefaultSIM does not exist in slot then skip."

    invoke-static/range {v18 .. v18}, Lcom/mediatek/telephony/DefaultDataSimSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
