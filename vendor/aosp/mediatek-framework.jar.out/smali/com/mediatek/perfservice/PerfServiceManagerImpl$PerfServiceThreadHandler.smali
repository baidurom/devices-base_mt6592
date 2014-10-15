.class Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x3

.field private static final MESSAGE_TIMER_SCN_APP_BOOST:I = 0x8

.field private static final MESSAGE_TIMER_SCN_APP_ROTATE:I = 0x5

.field private static final MESSAGE_TIMER_SCN_APP_SWITCH:I = 0x4

.field private static final MESSAGE_TIMER_SCN_SW_CODEC:I = 0x6

.field private static final MESSAGE_TIMER_SCN_SW_CODEC_BOOST:I = 0x7

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0x40

.field private static final MESSAGE_USER_DISABLE:I = 0xd

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0xf

.field private static final MESSAGE_USER_ENABLE:I = 0xb

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0xc

.field private static final MESSAGE_USER_REG:I = 0x9

.field private static final MESSAGE_USER_RESET_ALL:I = 0xe

.field private static final MESSAGE_USER_UNREG:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    .line 216
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method private getScenarioTimer(I)I
    .locals 1
    .parameter "scenario"

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_0

    .line 408
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 393
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 396
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 399
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 402
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 405
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 3
    .parameter "scenario"
    .parameter "timeout"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, msg:Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 346
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    :cond_0
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 3
    .parameter "handle"
    .parameter "timeout"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, msg:Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 358
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 359
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    .local v0, handle:I
    add-int/lit8 v2, v0, 0x40

    .line 376
    .local v2, timer:I
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->removeMessages(I)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v0           #handle:I
    .end local v2           #timer:I
    :cond_0
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 2
    .parameter "scenario"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v0

    .line 351
    .local v0, timer:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->removeMessages(I)V

    .line 353
    :cond_0
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 368
    add-int/lit8 v0, p1, 0x40

    .line 369
    .local v0, timer:I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->removeMessages(I)V

    .line 370
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 222
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 331
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_TIMER_SCN_USER_BASE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 332
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 333
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnDisable(I)I

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 225
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_BOOST_ENABLE"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 226
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in ThermalThreadHandler.handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$600(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_BOOST_DISABLE"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 233
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_BOOST_ENABLE_TIMEOUT"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 240
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostEnable(I)I

    .line 241
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 247
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;

    .line 248
    .local v1, passedObject:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_NOTIFY_APP_STATE"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 249
    #getter for: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mPackName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->access$300(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mClassName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->access$400(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mState:I
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->access$500(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I

    .line 250
    const/4 v1, 0x0

    .line 251
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 257
    .end local v1           #passedObject:Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;
    :pswitch_5
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_TIMER_SCN_APP_SWITCH"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 264
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_TIMER_SCN_APP_ROTATE"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 271
    :pswitch_7
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_TIMER_SCN_SW_CODEC"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 272
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 278
    :pswitch_8
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_TIMER_SCN_SW_CODEC_BOOST"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 285
    :pswitch_9
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_TIMER_SCN_APP_BOOST"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 286
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 292
    :pswitch_a
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_USER_ENABLE"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 293
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnEnable(I)I

    goto/16 :goto_0

    .line 299
    :pswitch_b
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_BOOST_DISABLE"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 300
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 306
    :pswitch_c
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_BOOST_ENABLE_TIMEOUT"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 307
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnEnable(I)I

    .line 308
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 314
    :pswitch_d
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_USER_RESET_ALL"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 316
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 317
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 323
    :pswitch_e
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    const-string v3, "MESSAGE_USER_DISABLE_ALL"

    #calls: Lcom/mediatek/perfservice/PerfServiceManagerImpl;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->access$200(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 325
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManagerImpl;->nativePerfUserScnDisableAll()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
