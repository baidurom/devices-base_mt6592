.class final Lcom/mediatek/mom/j;
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
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 61
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
    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public triggerListenerFunc()I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/mom/j;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/mom/j;->getFunc()Landroid/os/IBinder;

    move-result-object v4

    .line 70
    const-string v0, "intent"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 71
    if-nez v0, :cond_0

    .line 73
    const-string v0, "MessageInterceptListenerTrigger"

    const-string v2, "get intent null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return v1

    .line 77
    :cond_0
    invoke-static {v0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 78
    const-string v5, "simId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 81
    const-string v6, "MessageInterceptListenerTrigger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "triggerListenerFunc() simId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v5, "MessageInterceptListenerTrigger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MoMS >> MoMA] onNewSMSCheck(), new pdu size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-nez v0, :cond_1

    .line 84
    const-string v0, "MessageInterceptListenerTrigger"

    const-string v5, "triggerListenerFunc() empty msgs"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-static {v4}, Lcom/mediatek/common/mom/IMessageInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMessageInterceptListener;

    move-result-object v0

    .line 90
    :try_start_0
    invoke-interface {v0, v2}, Lcom/mediatek/common/mom/IMessageInterceptListener;->onNewSMSCheck(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    :try_start_1
    const-string v0, "MessageInterceptListenerTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewSMSCheck result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_2
    move v1, v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    move v2, v3

    .line 93
    :goto_3
    const-string v4, "MessageInterceptListenerTrigger"

    const-string v5, "onNewSMSCheck() failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 96
    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    goto :goto_3
.end method
