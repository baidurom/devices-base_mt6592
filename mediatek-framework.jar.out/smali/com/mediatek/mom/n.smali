.class Lcom/mediatek/mom/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mediatek/mom/n;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/n;->a:Lcom/mediatek/mom/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static a()Lcom/mediatek/mom/n;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/mom/n;->a:Lcom/mediatek/mom/n;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/mediatek/mom/n;

    invoke-direct {v0}, Lcom/mediatek/mom/n;-><init>()V

    sput-object v0, Lcom/mediatek/mom/n;->a:Lcom/mediatek/mom/n;

    .line 73
    :cond_0
    sget-object v0, Lcom/mediatek/mom/n;->a:Lcom/mediatek/mom/n;

    return-object v0
.end method

.method private a(JJ)Ljava/util/List;
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/PermissionHistoryBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    const-wide/16 v7, 0x0

    .line 170
    const-wide/16 v5, 0x0

    .line 171
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 173
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    monitor-enter v10

    .line 174
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 175
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mom/c;

    .line 177
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/mediatek/mom/c;->overlap(JJ)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 178
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-nez v12, :cond_1

    .line 179
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getStartTime()J

    move-result-wide v6

    .line 180
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-nez v5, :cond_0

    move-wide/from16 v4, p3

    :goto_1
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v7, v18

    move-wide/from16 v5, v16

    .line 207
    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v4

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getStartTime()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-lez v12, :cond_2

    .line 189
    new-instance v12, Lcom/mediatek/mom/PermissionHistoryBase;

    invoke-direct {v12, v7, v8, v5, v6}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 191
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getStartTime()J

    move-result-wide v6

    .line 194
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v4

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-lez v12, :cond_6

    .line 198
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v4

    move-wide v6, v7

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    invoke-virtual {v4}, Lcom/mediatek/mom/c;->getStartTime()J

    move-result-wide v12

    cmp-long v4, v12, p1

    if-gez v4, :cond_6

    move-wide/from16 v4, p3

    move-wide/from16 v6, p1

    .line 205
    goto :goto_1

    .line 209
    :cond_4
    const-wide/16 v11, 0x0

    cmp-long v4, v7, v11

    if-eqz v4, :cond_5

    .line 210
    new-instance v4, Lcom/mediatek/mom/PermissionHistoryBase;

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 212
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_5
    monitor-exit v10

    return-object v9

    .line 215
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_6
    move-wide/from16 v16, v5

    move-wide/from16 v4, v16

    move-wide/from16 v18, v7

    move-wide/from16 v6, v18

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/c;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    iget-object v2, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 235
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/c;

    .line 237
    invoke-virtual {v0}, Lcom/mediatek/mom/c;->getEndTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    .line 249
    :goto_0
    monitor-exit v2

    return-object v0

    .line 243
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/mom/c;->c()I

    move-result v4

    if-ne v4, p3, :cond_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(J)J
    .locals 11
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 126
    .line 130
    const-string v2, "PermissionHistoryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInteractionTime() timeBound(ns): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v3, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    monitor-enter v3

    .line 133
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 134
    cmp-long v2, v4, p1

    if-gez v2, :cond_0

    .line 135
    const-string v2, "PermissionHistoryHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timeBound! currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeBound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v3

    .line 163
    :goto_0
    return-wide v0

    .line 139
    :cond_0
    sub-long v6, v4, p1

    .line 141
    const-string v2, "PermissionHistoryHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInteractionTime() currentTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " searchTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/mediatek/mom/n;->a(JJ)Ljava/util/List;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_1

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v1, v0

    .line 146
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionHistoryBase;

    .line 148
    invoke-virtual {v0, v6, v7}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v9

    if-eqz v9, :cond_3

    move-wide v0, p1

    .line 160
    :cond_1
    :goto_2
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    move-wide v0, p1

    .line 163
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 151
    :cond_3
    :try_start_1
    invoke-virtual {v0, v6, v7}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 152
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    add-long v0, v1, v9

    :goto_3
    move-wide v1, v0

    .line 158
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 154
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v9

    sub-long v9, v4, v9

    add-long v0, v1, v9

    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->totalTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    add-long v0, v1, v9

    goto :goto_3

    :cond_6
    move-wide v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v6, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    monitor-enter v6

    .line 80
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mom/n;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/c;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "PermissionHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Avoid adding non-finished permission history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/mom/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v6

    .line 112
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 88
    new-instance v0, Lcom/mediatek/mom/c;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/c;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 90
    iget-object v1, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v1, "PermissionHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addHistory() history: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/mom/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-wide/32 v0, 0xea60

    add-long v1, v3, v0

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 99
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/c;

    .line 101
    invoke-virtual {v0}, Lcom/mediatek/mom/c;->getStartTime()J

    move-result-wide v7

    cmp-long v5, v7, v1

    if-lez v5, :cond_1

    .line 102
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 111
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v1, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 222
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/mom/n;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/c;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    monitor-exit v1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v1, p0, Lcom/mediatek/mom/n;->b:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mom/n;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/c;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/c;->setEndTime(J)V

    .line 120
    const-string v0, "PermissionHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnd() packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
