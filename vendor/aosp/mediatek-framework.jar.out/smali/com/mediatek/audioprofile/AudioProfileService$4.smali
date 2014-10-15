.class Lcom/mediatek/audioprofile/AudioProfileService$4;
.super Landroid/database/ContentObserver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 20
    .parameter "selfChange"

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v19

    monitor-enter v19

    .line 349
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v1

    move/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingtoneChange(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    monitor-exit v19

    .line 401
    :goto_0
    return-void

    .line 353
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v15

    .line 354
    .local v15, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v16

    .line 355
    .local v16, activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ringtone"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 356
    .local v18, uriString:Ljava/lang/String;
    if-nez v18, :cond_3

    const/4 v6, 0x0

    .line 358
    .local v6, systemUri:Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v1, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-eqz v1, :cond_4

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const/16 v17, 0x1

    .line 360
    .local v17, isPassiveChange:Z
    :goto_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService$8;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v15}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 397
    const-string v1, "AudioProfileService"

    const-string v3, "Ringtone changed in silent profile, sync to system if switch to last active profile."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_3
    monitor-exit v19

    goto :goto_0

    .end local v6           #systemUri:Landroid/net/Uri;
    .end local v15           #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v16           #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v17           #isPassiveChange:Z
    .end local v18           #uriString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 356
    .restart local v15       #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v16       #activeState:Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v18       #uriString:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 358
    .restart local v6       #systemUri:Landroid/net/Uri;
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 363
    .restart local v17       #isPassiveChange:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 367
    if-eqz v17, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, generalKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 370
    .local v8, outdoorKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iput-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v3

    invoke-virtual {v1, v8, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iput-object v6, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    invoke-static/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v10

    move-object v12, v6

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    invoke-static/range {v7 .. v12}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 374
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 377
    .end local v2           #generalKey:Ljava/lang/String;
    .end local v8           #outdoorKey:Ljava/lang/String;
    :cond_5
    const-string v1, "AudioProfileService"

    const-string v3, "Ringtone changed by itself, do nothing!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 385
    :cond_6
    :pswitch_1
    if-eqz v17, :cond_7

    .line 386
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 387
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v12

    move-object v14, v6

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    invoke-static/range {v9 .. v14}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 388
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 391
    :cond_7
    const-string v1, "AudioProfileService"

    const-string v3, "Ringtone changed by itself, do nothing!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
