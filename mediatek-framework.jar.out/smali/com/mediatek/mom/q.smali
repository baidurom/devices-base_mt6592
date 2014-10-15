.class final Lcom/mediatek/mom/q;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public triggerListenerFunc()I
    .locals 7

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/mom/q;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/mediatek/mom/q;->getFunc()Landroid/os/IBinder;

    move-result-object v2

    .line 68
    const-string v3, "notificationPkg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v4, "NotificationListenerTrigger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "triggerListenerFunc() packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notificationID"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "NotificationListenerTrigger"

    const-string v5, "[MoMS >> MoMA] onNotificationBlocked()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v2}, Lcom/mediatek/common/mom/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/INotificationListener;

    move-result-object v2

    .line 77
    :try_start_0
    invoke-interface {v2, v3, v1}, Lcom/mediatek/common/mom/INotificationListener;->onNotificationBlocked(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    const-string v1, "NotificationListenerTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MoMS << MoMA] onNotificationBlocked() returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const-string v2, "NotificationListenerTrigger"

    const-string v3, "onNotificationBlocked() failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
