.class Lcom/mediatek/mom/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mediatek/mom/t;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/mediatek/mom/t;->a:Lcom/mediatek/mom/t;

    .line 58
    sput-object v0, Lcom/mediatek/mom/t;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v1, p1, p2, p3}, Lcom/mediatek/mom/s;->a(IILandroid/os/IBinder;Landroid/os/Bundle;I)Lcom/mediatek/mom/ListenerTriggerBase;

    move-result-object v1

    .line 103
    invoke-static {v1, v0}, Lcom/mediatek/mom/t;->a(Lcom/mediatek/mom/ListenerTriggerBase;Z)I

    move-result v0

    :goto_0
    return v0

    .line 99
    :cond_0
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Trigger null listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lcom/mediatek/mom/ListenerTriggerBase;Z)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    .line 109
    sget-object v1, Lcom/mediatek/mom/t;->b:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 110
    const-string v1, "ListenerTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler should be set before triggerListener() isAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return v0

    .line 115
    :cond_0
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "triggerListenerInner(), Start monitoring listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lcom/mediatek/mom/t;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 117
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    sget-object v2, Lcom/mediatek/mom/t;->b:Landroid/os/Handler;

    const-wide/32 v3, 0x88b8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    const-string v2, "ListenerTriggerHelper"

    const-string v3, "triggerListenerInner(), Start a trigger thread and run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Lcom/mediatek/mom/u;

    sget-object v3, Lcom/mediatek/mom/t;->b:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/mediatek/mom/u;-><init>(Lcom/mediatek/mom/ListenerTriggerBase;Landroid/os/Handler;Landroid/os/Message;)V

    .line 125
    if-nez p1, :cond_1

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {v2}, Lcom/mediatek/mom/u;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :try_start_2
    invoke-virtual {p0}, Lcom/mediatek/mom/ListenerTriggerBase;->getResult()I

    move-result v0

    .line 134
    const-string v1, "ListenerTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerListenerInner() Sync End. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_3
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Trigger wait failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :try_start_4
    invoke-virtual {p0}, Lcom/mediatek/mom/ListenerTriggerBase;->getResult()I

    move-result v0

    .line 134
    const-string v1, "ListenerTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerListenerInner() Sync End. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/mediatek/mom/ListenerTriggerBase;->getResult()I

    move-result v1

    .line 134
    const-string v2, "ListenerTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerListenerInner() Sync End. result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/mom/u;->start()V

    .line 140
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "triggerListenerInner() Async End."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static a()Lcom/mediatek/mom/t;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/mom/t;->a:Lcom/mediatek/mom/t;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mediatek/mom/t;

    invoke-direct {v0}, Lcom/mediatek/mom/t;-><init>()V

    sput-object v0, Lcom/mediatek/mom/t;->a:Lcom/mediatek/mom/t;

    .line 72
    :cond_0
    sget-object v0, Lcom/mediatek/mom/t;->a:Lcom/mediatek/mom/t;

    return-object v0
.end method

.method public static a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    if-nez p4, :cond_0

    .line 79
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Triger null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/mom/s;->a(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)Lcom/mediatek/mom/ListenerTriggerBase;

    move-result-object v0

    .line 89
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/mom/t;->a(Lcom/mediatek/mom/ListenerTriggerBase;Z)I

    .line 90
    return-void

    .line 86
    :cond_1
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Trigger null listener function!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    sput-object p0, Lcom/mediatek/mom/t;->b:Landroid/os/Handler;

    .line 66
    return-void
.end method
