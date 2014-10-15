.class Lcom/mediatek/notification/NotificationManagerPlus$5;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 308
    iput-object p1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 311
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$300(Lcom/mediatek/notification/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$300(Lcom/mediatek/notification/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    .local v0, remove:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$400(Lcom/mediatek/notification/NotificationManagerPlus;)Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$400(Lcom/mediatek/notification/NotificationManagerPlus;)Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 316
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$300(Lcom/mediatek/notification/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$400(Lcom/mediatek/notification/NotificationManagerPlus;)Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mParams:Lcom/mediatek/notification/NotificationManagerPlus$Parameters;
    invoke-static {v1}, Lcom/mediatek/notification/NotificationManagerPlus;->access$400(Lcom/mediatek/notification/NotificationManagerPlus;)Lcom/mediatek/notification/NotificationManagerPlus$Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/notification/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;

    invoke-interface {v1, p1}, Lcom/mediatek/notification/NotificationManagerPlus$OnLastDismissListener;->onLastDismiss(Landroid/content/DialogInterface;)V

    .line 320
    :cond_1
    const-string v1, "NotificationManagerPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDismiss() size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/notification/NotificationManagerPlus$5;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    #getter for: Lcom/mediatek/notification/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/notification/NotificationManagerPlus;->access$300(Lcom/mediatek/notification/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remove="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v2

    .line 323
    return-void

    .line 322
    .end local v0           #remove:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
