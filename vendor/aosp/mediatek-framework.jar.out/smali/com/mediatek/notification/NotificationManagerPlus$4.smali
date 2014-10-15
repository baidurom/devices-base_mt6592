.class Lcom/mediatek/notification/NotificationManagerPlus$4;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/notification/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/notification/NotificationManagerPlus;


# direct methods
.method constructor <init>(Lcom/mediatek/notification/NotificationManagerPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/mediatek/notification/NotificationManagerPlus$4;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 295
    const-string v1, "NotificationManagerPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mSend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/notification/NotificationManagerPlus$4;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z
    invoke-static {v3}, Lcom/mediatek/notification/NotificationManagerPlus;->access$100(Lcom/mediatek/notification/NotificationManagerPlus;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$4;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mSend:Z
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$100(Lcom/mediatek/notification/NotificationManagerPlus;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const-string v1, "mediatek.intent.action.FULL_SCRENN_NOTIFY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$4;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$200(Lcom/mediatek/notification/NotificationManagerPlus;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
