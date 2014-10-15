.class final Lcom/mediatek/telephony/SimInfoUpdate$1;
.super Landroid/content/BroadcastReceiver;
.source "SimInfoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/SimInfoUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 184
    const-string v6, "[BroadcastReceiver][onReceiver]+"

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BroadcastReceiver][onReceiver][action] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 188
    const-string v6, "android.intent.action.ACTION_SHOW_NEW_SIM_DETECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    const-string v6, "simslot"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 190
    .local v5, slotId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 191
    if-ltz v5, :cond_0

    .line 192
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    aput-boolean v9, v6, v5

    .line 194
    :cond_0
    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->showSimDialog()V
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$200()V

    .line 244
    .end local v5           #slotId:I
    :cond_1
    :goto_0
    const-string v6, "[BroadcastReceiver][onReceiver]-"

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 245
    return-void

    .line 195
    :cond_2
    const-string v6, "action_pin_dismiss"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 196
    const-string v6, "simslot"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 197
    .restart local v5       #slotId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 198
    if-ltz v5, :cond_3

    .line 199
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    aput-boolean v9, v6, v5

    .line 201
    :cond_3
    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->showSimDialog()V
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$200()V

    goto :goto_0

    .line 202
    .end local v5           #slotId:I
    :cond_4
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, simStatus:Ljava/lang/String;
    const-string v6, "simId"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 205
    .restart local v5       #slotId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 206
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 207
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    aput-boolean v9, v6, v5

    .line 209
    :cond_5
    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->showSimDialog()V
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$200()V

    goto :goto_0

    .line 210
    .end local v4           #simStatus:Ljava/lang/String;
    .end local v5           #slotId:I
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$300()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, airplaneMode:I
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$300()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 218
    .local v2, dualSimMode:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BroadcastReceiver][onReceiver] EVENT_INITIALIZATION_FRAMEWORK_DONE airplaneMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dualSimMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 220
    if-ne v1, v9, :cond_9

    .line 221
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    if-nez v6, :cond_8

    .line 222
    const-string v6, "mAllowShowNewSim not allocated"

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 229
    :cond_7
    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->showSimDialog()V
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$200()V

    goto/16 :goto_0

    .line 224
    :cond_8
    const-string v6, "Flight mode on, all mAllowShowNewSim[i] set to true"

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 225
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v6, :cond_7

    .line 226
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    aput-boolean v9, v6, v3

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    .end local v3           #i:I
    :cond_9
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    if-nez v6, :cond_a

    .line 232
    const-string v6, "mAllowShowNewSim not allocated"

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v6, :cond_1

    .line 235
    shl-int v6, v9, v3

    and-int/2addr v6, v2

    if-nez v6, :cond_b

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " radio off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->logd(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoUpdate;->access$000(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$100()[Z

    move-result-object v6

    aput-boolean v9, v6, v3

    .line 238
    #calls: Lcom/mediatek/telephony/SimInfoUpdate;->showSimDialog()V
    invoke-static {}, Lcom/mediatek/telephony/SimInfoUpdate;->access$200()V

    .line 234
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
