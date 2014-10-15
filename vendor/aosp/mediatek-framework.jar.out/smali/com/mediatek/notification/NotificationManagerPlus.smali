.class public Lcom/mediatek/notification/NotificationManagerPlus;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;,
        Lcom/mediatek/notification/NotificationManagerPlus$OnFirstShowListener;,
        Lcom/mediatek/notification/NotificationManagerPlus$ManagerBuilder;,
        Lcom/mediatek/notification/NotificationManagerPlus$Parameters;,
        Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final MSG_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationManagerPlus"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSend:Z


# direct methods
.method private constructor <init>(Lcom/mediatek/notification/NotificationManagerPlus$Parameters;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$1;

    invoke-direct {v0, p0}, Lcom/mediatek/notification/NotificationManagerPlus$1;-><init>(Lcom/mediatek/notification/NotificationManagerPlus;)V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$4;

    invoke-direct {v0, p0}, Lcom/mediatek/notification/NotificationManagerPlus$4;-><init>(Lcom/mediatek/notification/NotificationManagerPlus;)V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$5;

    invoke-direct {v0, p0}, Lcom/mediatek/notification/NotificationManagerPlus$5;-><init>(Lcom/mediatek/notification/NotificationManagerPlus;)V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 326
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$6;

    invoke-direct {v0, p0}, Lcom/mediatek/notification/NotificationManagerPlus$6;-><init>(Lcom/mediatek/notification/NotificationManagerPlus;)V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 345
    iget-object v0, p1, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context not allowed null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    .line 350
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "mediatek.intent.action.FULL_SCRENN_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/notification/NotificationManagerPlus$Parameters;Lcom/mediatek/notification/NotificationManagerPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/notification/NotificationManagerPlus;-><init>(Lcom/mediatek/notification/NotificationManagerPlus$Parameters;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/notification/NotificationManagerPlus;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/notification/NotificationManagerPlus;->resolve(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/notification/NotificationManagerPlus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/notification/NotificationManagerPlus;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/notification/NotificationManagerPlus;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/notification/NotificationManagerPlus;)Lcom/mediatek/notification/NotificationManagerPlus$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    return-object v0
.end method

.method private buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .parameter "pending"

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/notification/NotificationManagerPlus$3;-><init>(Lcom/mediatek/notification/NotificationManagerPlus;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "pending"

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mediatek/notification/NotificationManagerPlus$2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/notification/NotificationManagerPlus$2;-><init>(Lcom/mediatek/notification/NotificationManagerPlus;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 500
    new-instance v0, Lcom/mediatek/notification/NotificationPlus;

    invoke-direct {v0, p0}, Lcom/mediatek/notification/NotificationPlus;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, notification:Lcom/mediatek/notification/NotificationPlus;
    invoke-virtual {v0, p1}, Lcom/mediatek/notification/NotificationPlus;->setId(I)V

    .line 502
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/notification/NotificationPlus;->setType(I)V

    .line 503
    invoke-virtual {v0}, Lcom/mediatek/notification/NotificationPlus;->send()V

    .line 504
    return-void
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 514
    new-instance v0, Lcom/mediatek/notification/NotificationPlus;

    invoke-direct {v0, p0}, Lcom/mediatek/notification/NotificationPlus;-><init>(Landroid/content/Context;)V

    .line 515
    .local v0, notification:Lcom/mediatek/notification/NotificationPlus;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/notification/NotificationPlus;->setType(I)V

    .line 516
    invoke-virtual {v0}, Lcom/mediatek/notification/NotificationPlus;->send()V

    .line 517
    return-void
.end method

.method public static notify(ILcom/mediatek/notification/NotificationPlus;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 486
    invoke-virtual {p1, p0}, Lcom/mediatek/notification/NotificationPlus;->setId(I)V

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/notification/NotificationPlus;->setType(I)V

    .line 488
    invoke-virtual {p1}, Lcom/mediatek/notification/NotificationPlus;->send()V

    .line 489
    return-void
.end method

.method private resolve(Landroid/os/Bundle;)V
    .locals 17
    .parameter "extra"

    .prologue
    .line 100
    const-string v14, "mediatek.intent.extra.package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, packageName:Ljava/lang/String;
    const-string v14, "mediatek.intent.extra.type"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 103
    .local v13, type:I
    const-string v14, "NotificationManagerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") packageName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v14, "mediatek.intent.extra.id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 110
    .local v4, hasId:Z
    const/4 v5, -0x1

    .line 111
    .local v5, id:I
    if-eqz v4, :cond_2

    .line 112
    const-string v14, "mediatek.intent.extra.id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    :cond_2
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 115
    if-eqz v4, :cond_5

    .line 117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v15

    .line 118
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 119
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;

    .line 120
    .local v2, dialog:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v5}, Lcom/mediatek/notification/NotificationManagerPlus;->equals(Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 122
    invoke-virtual {v2}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->cancel()V

    .line 126
    .end local v2           #dialog:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    :cond_4
    monitor-exit v15

    goto :goto_0

    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;>;"
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 129
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 130
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;

    .line 131
    .restart local v2       #dialog:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/mediatek/notification/NotificationManagerPlus;->equals(Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 133
    invoke-virtual {v2}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->cancel()V

    goto :goto_0

    .line 142
    .end local v2           #dialog:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    if-eqz v14, :cond_0

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, find:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    if-nez v4, :cond_8

    .line 148
    const-string v14, "NotificationManagerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") type=notify, but no id!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;>;"
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;

    .line 153
    .local v12, temp:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v5}, Lcom/mediatek/notification/NotificationManagerPlus;->equals(Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 154
    move-object v3, v12

    .line 159
    .end local v12           #temp:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    :cond_a
    new-instance v9, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    invoke-direct {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;-><init>(Landroid/content/Context;)V

    .line 160
    .local v9, newDialog:Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;
    invoke-virtual {v9, v10}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setPackageName(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v9, v5}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setId(I)V

    .line 162
    const-string v14, "mediatek.intent.extra.content.title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    const-string v14, "mediatek.intent.extra.content.text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    if-eqz v14, :cond_10

    .line 166
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 175
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    if-eqz v14, :cond_11

    .line 177
    const/4 v14, -0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 186
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    if-eqz v14, :cond_12

    .line 188
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v15, v15, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 197
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelable:Z

    if-eqz v14, :cond_e

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    if-eqz v14, :cond_13

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 215
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 217
    invoke-virtual {v9}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->show()V

    .line 218
    if-eqz v3, :cond_f

    .line 219
    invoke-virtual {v3}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->dismiss()V

    .line 222
    :cond_f
    const-string v14, "NotificationManagerPlus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resolve("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") find="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    :cond_10
    const-string v14, "mediatek.intent.extra.button.name.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 169
    const-string v14, "mediatek.intent.extra.button.intent.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 171
    .local v11, positive:Landroid/app/PendingIntent;
    const/4 v14, -0x1

    const-string v15, "mediatek.intent.extra.button.name.positive"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/notification/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 179
    .end local v11           #positive:Landroid/app/PendingIntent;
    :cond_11
    const-string v14, "mediatek.intent.extra.button.name.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 180
    const-string v14, "mediatek.intent.extra.button.intent.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 182
    .local v8, neutral:Landroid/app/PendingIntent;
    const/4 v14, -0x3

    const-string v15, "mediatek.intent.extra.button.name.neutral"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/notification/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 190
    .end local v8           #neutral:Landroid/app/PendingIntent;
    :cond_12
    const-string v14, "mediatek.intent.extra.button.name.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 191
    const-string v14, "mediatek.intent.extra.button.intent.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 193
    .local v7, negative:Landroid/app/PendingIntent;
    const/4 v14, -0x2

    const-string v15, "mediatek.intent.extra.button.name.negative"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/notification/NotificationManagerPlus;->buildOnClickListenr(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 203
    .end local v7           #negative:Landroid/app/PendingIntent;
    :cond_13
    const-string v14, "mediatek.intent.extra.cancel.enable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    const-string v15, "mediatek.intent.extra.cancel.enable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 208
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-boolean v14, v14, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mCancelable:Z

    if-eqz v14, :cond_e

    .line 209
    const-string v14, "mediatek.intent.extra.cancel.intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 211
    .local v1, cancel:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/notification/NotificationManagerPlus;->buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/notification/NotificationManagerPlus;->cancelAll(Z)V

    .line 419
    return-void
.end method

.method public cancelAll(Z)V
    .locals 5
    .parameter "ignoreAction"

    .prologue
    .line 431
    const-string v2, "NotificationManagerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v3, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 434
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;

    .line 435
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 442
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 439
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 440
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 442
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/notification/NotificationManagerPlus;->clearAll(Z)V

    .line 452
    return-void
.end method

.method public clearAll(Z)V
    .locals 5
    .parameter "ignoreAction"

    .prologue
    .line 464
    const-string v2, "NotificationManagerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAll("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v3, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;

    .line 468
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 475
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 472
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 473
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 475
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 528
    const-string v0, "NotificationManagerPlus"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    invoke-virtual {p0}, Lcom/mediatek/notification/NotificationManagerPlus;->clearAll()V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    .line 537
    return-void
.end method

.method public equals(Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;Ljava/lang/String;)Z
    .locals 2
    .parameter "cmp"
    .parameter "packageName"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, result:Z
    if-nez p2, :cond_1

    iget-object v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 242
    const/4 v0, 0x1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;Ljava/lang/String;I)Z
    .locals 2
    .parameter "cmp"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, result:Z
    iget v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mId:I

    if-ne p3, v1, :cond_0

    .line 229
    if-nez p2, :cond_1

    iget-object v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 230
    const/4 v0, 0x1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/mediatek/notification/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 376
    const-string v0, "NotificationManagerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mSend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    .line 379
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 364
    const-string v0, "NotificationManagerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume() mSend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z

    .line 367
    return-void
.end method

.method public startListening()V
    .locals 3

    .prologue
    .line 389
    const-string v0, "NotificationManagerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListening() mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    .line 394
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 404
    const-string v0, "NotificationManagerPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListening() mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/notification/NotificationManagerPlus;->mListening:Z

    .line 410
    :cond_0
    return-void
.end method
