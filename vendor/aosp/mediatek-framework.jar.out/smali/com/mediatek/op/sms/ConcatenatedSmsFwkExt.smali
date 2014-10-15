.class public Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;
.super Ljava/lang/Object;
.source "ConcatenatedSmsFwkExt.java"

# interfaces
.implements Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;


# static fields
.field private static final CONCATE_PROJECTION:[Ljava/lang/String; = null

.field protected static DELAYED_TIME:I = 0x0

.field private static final OUT_OF_DATE_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_UPLOAD_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ConcatenatedSmsFwkExt"

.field private static final mRawUri:Landroid/net/Uri;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field protected mSimId:I

.field private mTimerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/sms/TimerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "reference_number"

    aput-object v1, v0, v2

    const-string v1, "count"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 84
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    const-string v1, "upload_flag"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->PDU_SEQUENCE_PORT_UPLOAD_PROJECTION:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recv_time"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "reference_number"

    aput-object v1, v0, v4

    const-string v1, "count"

    aput-object v1, v0, v5

    const-string v1, "sim_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->OUT_OF_DATE_PROJECTION:[Ljava/lang/String;

    .line 99
    const v0, 0xea60

    sput v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->DELAYED_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    .line 102
    iput-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    .line 103
    iput-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    .line 196
    new-instance v1, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt$1;

    invoke-direct {v1, p0}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt$1;-><init>(Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;)V

    iput-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! context is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    .line 112
    iget-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    .line 113
    iput p2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.sms.ACTION_CLEAR_OUT_SEGMENTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->checkOutOfDateSegments()V

    return-void
.end method

.method private addTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 377
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call addTimerRecord"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/sms/TimerRecord;

    .line 379
    .local v1, record:Lcom/mediatek/common/sms/TimerRecord;
    if-ne v1, p1, :cond_0

    .line 380
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "duplicated TimerRecord object be found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1           #record:Lcom/mediatek/common/sms/TimerRecord;
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkOutOfDateSegments()V
    .locals 24

    .prologue
    .line 142
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call checkOutOfDateSegments"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v15, 0x0

    .line 146
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "sim_id=?"

    .line 147
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 148
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->OUT_OF_DATE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 150
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "checkOutOfDateSegments cursor open"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz v15, :cond_2

    .line 152
    const-string v2, "recv_time"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 153
    .local v10, columnRecvTime:I
    const-string v2, "address"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 154
    .local v8, columnAddress:I
    const-string v2, "reference_number"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 155
    .local v11, columnRefNum:I
    const-string v2, "count"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, columnCount:I
    const-string v2, "sim_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 158
    .local v12, columnSimId:I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 159
    .local v16, cursorCount:I
    const-string v2, "ConcatenatedSmsFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOutOfDateSegments cursor size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 161
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 162
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 163
    .local v19, recv_time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 165
    .local v13, curr_time:J
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;

    move-result-object v21

    .line 168
    .local v21, tr:Lcom/mediatek/common/sms/TimerRecord;
    if-eqz v21, :cond_0

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->deleteTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 173
    :cond_0
    const-string v2, "ConcatenatedSmsFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currtime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recv_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sub-long v2, v13, v19

    const-wide/32 v22, 0x2932e00

    cmp-long v2, v2, v22

    if-ltz v2, :cond_1

    .line 177
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v7}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->deleteOutOfDateSegments(Ljava/lang/String;III)V

    .line 160
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 184
    .end local v8           #columnAddress:I
    .end local v9           #columnCount:I
    .end local v10           #columnRecvTime:I
    .end local v11           #columnRefNum:I
    .end local v12           #columnSimId:I
    .end local v13           #curr_time:J
    .end local v16           #cursorCount:I
    .end local v18           #i:I
    .end local v19           #recv_time:J
    .end local v21           #tr:Lcom/mediatek/common/sms/TimerRecord;
    :cond_2
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "FAIL! cursor is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_3
    if-eqz v15, :cond_4

    .line 190
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 191
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "checkOutOfDateSegments cursor close"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v17

    .line 187
    .local v17, e:Landroid/database/SQLException;
    :try_start_1
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "FAIL! SQLException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    if-eqz v15, :cond_4

    .line 190
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 191
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "checkOutOfDateSegments cursor close"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    .end local v17           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 190
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 191
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "checkOutOfDateSegments cursor close"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v2
.end method

.method private checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .line 409
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "call checkParamsForMessageOperation"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez p1, :cond_0

    .line 411
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! handler is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return v0

    .line 414
    :cond_0
    if-nez p2, :cond_1

    .line 415
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! record is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    :cond_1
    instance-of v1, p2, Lcom/mediatek/common/sms/TimerRecord;

    if-nez v1, :cond_2

    .line 419
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! param r is not TimerRecord object"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)Z
    .locals 5
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 427
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "call checkTimerRecord"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v2

    .line 432
    :cond_1
    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/sms/TimerRecord;

    .line 433
    .local v1, record:Lcom/mediatek/common/sms/TimerRecord;
    if-ne p1, v1, :cond_2

    .line 434
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deleteOutOfDateSegments(Ljava/lang/String;III)V
    .locals 7
    .parameter "address"
    .parameter "refNum"
    .parameter "count"
    .parameter "simId"

    .prologue
    .line 124
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "call deleteOutOfDateSegments"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    const-string v2, "address=? AND reference_number=? AND count=? AND sim_id=?"

    .line 128
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 134
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, numOfDeleted:I
    const-string v4, "ConcatenatedSmsFwkExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of date segments, ref =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #numOfDeleted:I
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "FAIL! SQLException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 389
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "call deleteTimerRecord"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 392
    :cond_0
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "no record can be removed "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 397
    .local v1, countBeforeRemove:I
    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    iget-object v3, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 400
    .local v0, countAfterRemove:I
    sub-int v2, v1, v0

    .line 401
    .local v2, countRemoved:I
    if-lez v2, :cond_2

    .line 402
    const-string v3, "ConcatenatedSmsFwkExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove record(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_2
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "no record be removed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLastReceiveTimeByTimeRecord(Lcom/mediatek/common/sms/TimerRecord;)J
    .locals 14
    .parameter "record"

    .prologue
    .line 280
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call getLastReceiveTimeByTimeRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-wide/16 v12, 0x0

    .line 284
    .local v12, recv_time:J
    const/4 v6, 0x0

    .line 286
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "address=? AND reference_number=? AND sim_id=?"

    .line 287
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 292
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getLastReceiveTimeByTimeRecord cursor open"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v6, :cond_1

    .line 296
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 298
    .local v7, cursorCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v7, :cond_1

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 300
    const-string v0, "recv_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 301
    .local v8, cursor_time:J
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 304
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor_time replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    move-wide v12, v8

    .line 298
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 312
    .end local v7           #cursorCount:I
    .end local v8           #cursor_time:J
    .end local v11           #i:I
    :cond_1
    if-eqz v6, :cond_2

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getLastReceiveTimeByTimeRecord cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-wide v12

    .line 309
    :catch_0
    move-exception v10

    .line 310
    .local v10, e:Landroid/database/SQLException;
    :try_start_1
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! SQLException"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    if-eqz v6, :cond_2

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getLastReceiveTimeByTimeRecord cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v10           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "getLastReceiveTimeByTimeRecord cursor close"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v0
.end method

.method private registerAlarmManager()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method


# virtual methods
.method public cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "r"

    .prologue
    .line 337
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "call cancelTimer"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z

    move-result v0

    .line 339
    .local v0, isParamsValid:Z
    if-nez v0, :cond_0

    .line 340
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! invalid params"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local p2
    :goto_0
    return-void

    .line 344
    .restart local p2
    :cond_0
    const/16 v1, 0xbb9

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 345
    check-cast p2, Lcom/mediatek/common/sms/TimerRecord;

    .end local p2
    invoke-direct {p0, p2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->deleteTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)V

    goto :goto_0
.end method

.method public declared-synchronized deleteExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)V
    .locals 7
    .parameter "record"

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "call deleteExistedSegments"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    const-string v2, "address=? AND reference_number=? AND sim_id=?"

    .line 515
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 520
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 521
    .local v1, numOfDeleted:I
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "deleteExistedSegments cursor open"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v4, "ConcatenatedSmsFwkExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " segments, ref =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 527
    .end local v1           #numOfDeleted:I
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->deleteTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Landroid/database/SQLException;
    :try_start_3
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "FAIL! SQLException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 511
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)I
    .locals 13
    .parameter "record"

    .prologue
    const/4 v12, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x2

    .line 531
    monitor-enter p0

    :try_start_0
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "call getUploadFlag"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    const/4 v7, 0x0

    .line 535
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v3, "address=? AND reference_number=? AND sim_id=?"

    .line 536
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 541
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->PDU_SEQUENCE_PORT_UPLOAD_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 543
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getUploadFlag cursor open"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-eqz v7, :cond_4

    .line 545
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const-string v0, "upload_flag"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 547
    .local v6, columnUpload:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 548
    .local v9, uploadFlag:I
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-ne v9, v11, :cond_0

    .line 550
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "find update segment"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    if-eqz v7, :cond_1

    .line 565
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 566
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getUploadFlag cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move v0, v11

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #columnUpload:I
    .end local v9           #uploadFlag:I
    :goto_0
    monitor-exit p0

    return v0

    .line 554
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "all segments are new"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 564
    if-eqz v7, :cond_3

    .line 565
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 566
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getUploadFlag cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    move v0, v12

    goto :goto_0

    .line 557
    :cond_4
    :try_start_5
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 564
    if-eqz v7, :cond_5

    .line 565
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 566
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getUploadFlag cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    move v0, v10

    goto :goto_0

    .line 560
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 561
    .local v8, e:Landroid/database/SQLException;
    :try_start_7
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! SQLException, fail to query upload_flag"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 564
    if-eqz v7, :cond_6

    .line 565
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 566
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "getUploadFlag cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v10

    goto :goto_0

    .line 564
    .end local v8           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 565
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 566
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "getUploadFlag cursor close"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 531
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFirstConcatenatedSegment(Ljava/lang/String;I)Z
    .locals 10
    .parameter "address"
    .parameter "refNumber"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call isFirstConcatenatedSegment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v9, 0x0

    .line 213
    .local v9, result:Z
    const/4 v6, 0x0

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v3, "address=? AND reference_number=? AND sim_id=?"

    .line 216
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 221
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    if-eqz v6, :cond_2

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 225
    .local v8, messageCount:I
    if-nez v8, :cond_0

    .line 226
    const/4 v9, 0x1

    .line 234
    .end local v8           #messageCount:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 235
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstConcatenatedSegment result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    monitor-exit p0

    return v9

    .line 229
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 231
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 232
    .local v7, e:Landroid/database/SQLException;
    :try_start_4
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! SQLException"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    if-eqz v6, :cond_1

    .line 235
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 210
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #e:Landroid/database/SQLException;
    .end local v9           #result:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #result:Z
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 235
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized isLastConcatenatedSegment(Ljava/lang/String;II)Z
    .locals 10
    .parameter "address"
    .parameter "refNumber"
    .parameter "msgCount"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call isLastConcatenatedSegment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const/4 v9, 0x0

    .line 247
    .local v9, result:Z
    const/4 v6, 0x0

    .line 249
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v3, "address=? AND reference_number=? AND sim_id=?"

    .line 250
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 255
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "isLastConcatenatedSegment cursor open"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v6, :cond_2

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 260
    .local v8, messageCount:I
    add-int/lit8 v0, p3, -0x1

    if-ne v8, v0, :cond_0

    .line 261
    const/4 v9, 0x1

    .line 269
    .end local v8           #messageCount:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 270
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "isLastConcatenatedSegment cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLastConcatenatedSegment result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    monitor-exit p0

    return v9

    .line 264
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 266
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 267
    .local v7, e:Landroid/database/SQLException;
    :try_start_4
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! SQLException"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    if-eqz v6, :cond_1

    .line 270
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "isLastConcatenatedSegment cursor close"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 244
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #e:Landroid/database/SQLException;
    .end local v9           #result:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #result:Z
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 270
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "isLastConcatenatedSegment cursor close"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized queryExistedSegments(Lcom/mediatek/common/sms/TimerRecord;)[[B
    .locals 20
    .parameter "record"

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "call queryExistedSegments"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/16 v18, 0x0

    check-cast v18, [[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .local v18, pdus:[[B
    const/4 v10, 0x0

    .line 447
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v4, "address=? AND reference_number=? AND sim_id=? AND count=?"

    .line 448
    .local v4, where:Ljava/lang/String;
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 454
    .local v5, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v3, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 456
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "queryExistedSegments cursor open"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz v10, :cond_4

    .line 458
    move-object/from16 v0, p1

    iget v1, v0, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    new-array v0, v1, [[B

    move-object/from16 v19, v0

    .line 460
    .local v19, tempPdus:[[B
    const-string v1, "sequence"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 462
    .local v9, columnSeqence:I
    const-string v1, "pdu"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 464
    .local v7, columnPdu:I
    const-string v1, "destination_port"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 467
    .local v8, columnPort:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 468
    .local v11, cursorCount:I
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    sub-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " segment(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v11, :cond_3

    .line 470
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 471
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 472
    .local v12, cursorSequence:I
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queried segment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 v1, v12, -0x1

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v19, v1

    .line 475
    add-int/lit8 v1, v12, -0x1

    aget-object v1, v19, v1

    if-nez v1, :cond_0

    .line 476
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miss segment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    invoke-interface {v10, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "segment contain port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "queryExistedSegments cursor close isnot null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v1, 0x0

    check-cast v1, [[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    if-eqz v10, :cond_1

    .line 502
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 503
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "queryExistedSegments cursor close"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v7           #columnPdu:I
    .end local v8           #columnPort:I
    .end local v9           #columnSeqence:I
    .end local v11           #cursorCount:I
    .end local v12           #cursorSequence:I
    .end local v14           #i:I
    .end local v19           #tempPdus:[[B
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v1

    .line 469
    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v7       #columnPdu:I
    .restart local v8       #columnPort:I
    .restart local v9       #columnSeqence:I
    .restart local v11       #cursorCount:I
    .restart local v12       #cursorSequence:I
    .restart local v14       #i:I
    .restart local v19       #tempPdus:[[B
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 486
    .end local v12           #cursorSequence:I
    :cond_3
    :try_start_3
    new-array v0, v11, [[B

    move-object/from16 v18, v0

    .line 487
    const/4 v15, 0x0

    .line 488
    .local v15, index:I
    const/4 v14, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len:I
    move/from16 v16, v15

    .end local v15           #index:I
    .local v16, index:I
    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_5

    .line 489
    aget-object v1, v19, v14

    if-eqz v1, :cond_8

    .line 491
    add-int/lit8 v15, v16, 0x1

    .end local v16           #index:I
    .restart local v15       #index:I
    aget-object v1, v19, v14

    aput-object v1, v18, v16

    .line 488
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v15

    .end local v15           #index:I
    .restart local v16       #index:I
    goto :goto_2

    .line 495
    .end local v7           #columnPdu:I
    .end local v8           #columnPort:I
    .end local v9           #columnSeqence:I
    .end local v11           #cursorCount:I
    .end local v14           #i:I
    .end local v16           #index:I
    .end local v17           #len:I
    .end local v19           #tempPdus:[[B
    :cond_4
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! cursor is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 501
    :cond_5
    if-eqz v10, :cond_6

    .line 502
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 503
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "queryExistedSegments cursor close"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object/from16 v1, v18

    .line 507
    goto :goto_1

    .line 497
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 498
    .local v13, e:Landroid/database/SQLException;
    :try_start_5
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! SQLException"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, 0x0

    check-cast v1, [[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 501
    if-eqz v10, :cond_1

    .line 502
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 503
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "queryExistedSegments cursor close"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 442
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #e:Landroid/database/SQLException;
    .end local v18           #pdus:[[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 501
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v18       #pdus:[[B
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_7

    .line 502
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 503
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "queryExistedSegments cursor close"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v7       #columnPdu:I
    .restart local v8       #columnPort:I
    .restart local v9       #columnSeqence:I
    .restart local v11       #cursorCount:I
    .restart local v14       #i:I
    .restart local v16       #index:I
    .restart local v17       #len:I
    .restart local v19       #tempPdus:[[B
    :cond_8
    move/from16 v15, v16

    .end local v16           #index:I
    .restart local v15       #index:I
    goto :goto_3
.end method

.method public declared-synchronized queryTimerRecord(Ljava/lang/String;II)Lcom/mediatek/common/sms/TimerRecord;
    .locals 5
    .parameter "address"
    .parameter "refNumber"
    .parameter "msgCount"

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call queryTimerRecord"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v2, "ConcatenatedSmsFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find record by ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/sms/TimerRecord;

    .line 366
    .local v1, record:Lcom/mediatek/common/sms/TimerRecord;
    iget-object v2, v1, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Lcom/mediatek/common/sms/TimerRecord;->msgCount:I

    if-ne v2, p3, :cond_0

    .line 367
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "find record"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v1           #record:Lcom/mediatek/common/sms/TimerRecord;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 372
    :cond_1
    :try_start_1
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "don\'t find record"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    const/4 v1, 0x0

    goto :goto_0

    .line 362
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 5
    .parameter "h"
    .parameter "r"

    .prologue
    const/16 v4, 0xbb9

    .line 349
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call refreshTimer"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z

    move-result v0

    .line 351
    .local v0, isParamsValid:Z
    if-nez v0, :cond_0

    .line 352
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "FAIL! invalid params"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 357
    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 358
    .local v1, m:Landroid/os/Message;
    sget v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->DELAYED_TIME:I

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public declared-synchronized setUploadFlag(Lcom/mediatek/common/sms/TimerRecord;)V
    .locals 8
    .parameter "record"

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    const-string v5, "ConcatenatedSmsFwkExt"

    const-string v6, "call setUploadFlag"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :try_start_1
    const-string v3, "address=? AND reference_number=? AND sim_id=? AND upload_flag<>?"

    .line 576
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/mediatek/common/sms/TimerRecord;->address:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p1, Lcom/mediatek/common/sms/TimerRecord;->refNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 582
    .local v4, whereArgs:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 583
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "upload_flag"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    iget-object v5, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 585
    .local v1, updatedCount:I
    const-string v5, "ConcatenatedSmsFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 589
    .end local v1           #updatedCount:I
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Landroid/database/SQLException;
    :try_start_2
    const-string v5, "ConcatenatedSmsFwkExt"

    const-string v6, "FAIL! SQLException, fail to update upload flag"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 572
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"

    .prologue
    .line 324
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call startTimer"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z

    move-result v0

    .line 326
    .local v0, isParamsValid:Z
    if-nez v0, :cond_0

    .line 327
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "FAIL! invalid params"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    :cond_0
    move-object v2, p2

    .line 331
    check-cast v2, Lcom/mediatek/common/sms/TimerRecord;

    invoke-direct {p0, v2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->addTimerRecord(Lcom/mediatek/common/sms/TimerRecord;)V

    .line 332
    const/16 v2, 0xbb9

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, m:Landroid/os/Message;
    sget v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->DELAYED_TIME:I

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
