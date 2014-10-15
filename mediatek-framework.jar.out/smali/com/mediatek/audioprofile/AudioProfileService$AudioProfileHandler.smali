.class Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;
.super Landroid/os/Handler;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioProfileHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 3327
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3331
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3332
    .local v1, name:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3333
    .local v3, valueInt:I
    const/4 v4, 0x0

    .line 3334
    .local v4, valueSting:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2700(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    .line 3335
    .local v2, simId:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3336
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3337
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3338
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3340
    :cond_0
    const-string v8, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 3451
    :pswitch_0
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupport handle message: what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :goto_0
    return-void

    .line 3344
    :pswitch_1
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2800(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v8

    if-nez v4, :cond_1

    :goto_1
    invoke-static {v8, v7, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 3349
    :pswitch_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2800(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v7, v5, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2

    .line 3354
    :pswitch_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2800(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x8

    if-nez v4, :cond_3

    :goto_3
    invoke-static {v7, v8, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    .line 3359
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3363
    :pswitch_5
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3367
    :pswitch_6
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3371
    :pswitch_7
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3376
    :pswitch_8
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3380
    :pswitch_9
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3384
    :pswitch_a
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3388
    :pswitch_b
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3389
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3394
    :pswitch_c
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3395
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3400
    :pswitch_d
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3401
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3406
    :pswitch_e
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3410
    :pswitch_f
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3414
    :pswitch_10
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3418
    :pswitch_11
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3422
    :pswitch_12
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3426
    :pswitch_13
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3430
    :pswitch_14
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z
    invoke-static {v6, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->access$802(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 3431
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v6, :cond_4

    move v5, v7

    .line 3434
    .local v5, vibrationStatus:I
    :cond_4
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v11, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3435
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v7, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3436
    const-string v6, "AudioProfileService"

    const-string v7, "CTS test finish, set vibrate again to make function normal!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3440
    .end local v5           #vibrationStatus:I
    :pswitch_15
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2800(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x10

    if-nez v4, :cond_5

    :goto_4
    invoke-static {v7, v8, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    .line 3445
    :pswitch_16
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3446
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2900(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
