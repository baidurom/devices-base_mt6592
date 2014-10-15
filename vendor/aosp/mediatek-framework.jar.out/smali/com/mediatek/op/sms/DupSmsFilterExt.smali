.class Lcom/mediatek/op/sms/DupSmsFilterExt;
.super Ljava/lang/Object;
.source "DupSmsFilterExt.java"

# interfaces
.implements Lcom/mediatek/common/sms/IDupSmsFilterExt;


# static fields
.field protected static final DEFAULT_DUP_SMS_KEEP_PERIOD:J = 0x493e0L

.field protected static final EVENT_CLEAR_SMS_LIST:I = 0x1

.field protected static final KEY_DUP_SMS_KEEP_PERIOD:Ljava/lang/String; = "dev.dup_sms_keep_period"

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSimId:I

.field protected mSmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "DupSmsFilterExt"

    sput-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mContext:Landroid/content/Context;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    .line 67
    iput-object v1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "call constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-nez p1, :cond_0

    .line 72
    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mContext:Landroid/content/Context;

    .line 77
    iput p2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private isTestIccCard()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 130
    const/4 v0, -0x1

    .line 131
    .local v0, ret:I
    iget v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    if-nez v2, :cond_1

    .line 132
    const-string v2, "gsm.sim.ril.testsim"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    :cond_0
    :goto_0
    sget-object v2, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isTestIccCard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-ne v0, v1, :cond_4

    :goto_1
    return v1

    .line 133
    :cond_1
    iget v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    if-ne v2, v1, :cond_2

    .line 134
    const-string v2, "gsm.sim.ril.testsim.2"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 135
    :cond_2
    iget v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 136
    const-string v2, "gsm.sim.ril.testsim.3"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 137
    :cond_3
    iget v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 138
    const-string v2, "gsm.sim.ril.testsim.4"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 141
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized removeExpiredItem()V
    .locals 8

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v5, "call removeExpiredItem"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v4, "dev.dup_sms_keep_period"

    const-wide/32 v5, 0x493e0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 119
    .local v0, delayedPeriod:J
    iget-object v4, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 120
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #delayedPeriod:J
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 126
    .restart local v0       #delayedPeriod:J
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmsMap has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " items after removeExpiredItem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public containDupSms([B)Z
    .locals 7
    .parameter "pdu"

    .prologue
    const/4 v3, 0x0

    .line 83
    sget-object v2, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v4, "call containDupSms"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/mediatek/op/sms/DupSmsFilterExt;->isTestIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 101
    :goto_0
    return v2

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/op/sms/DupSmsFilterExt;->removeExpiredItem()V

    .line 91
    iget-object v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, p1, v2}, Lcom/mediatek/op/sms/DupSmsFilterExt;->isDupSms([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 98
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    :cond_2
    iget-object v4, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v4

    move v2, v3

    .line 101
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected isDupSms([B[B)Z
    .locals 2
    .parameter "newPdu"
    .parameter "oldPdu"

    .prologue
    .line 105
    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "call isDupSms"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "find a duplicated sms"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
