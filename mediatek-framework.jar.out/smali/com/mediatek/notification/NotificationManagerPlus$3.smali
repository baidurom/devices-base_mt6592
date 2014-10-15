.class Lcom/mediatek/notification/NotificationManagerPlus$3;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/notification/NotificationManagerPlus;->buildOnCancelListener(Landroid/app/PendingIntent;)Landroid/content/DialogInterface$OnCancelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/notification/NotificationManagerPlus;

.field final synthetic val$pending:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/mediatek/notification/NotificationManagerPlus;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mediatek/notification/NotificationManagerPlus$3;->this$0:Lcom/mediatek/notification/NotificationManagerPlus;

    iput-object p2, p0, Lcom/mediatek/notification/NotificationManagerPlus$3;->val$pending:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 277
    const-string v1, "NotificationManagerPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancel() pending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/notification/NotificationManagerPlus$3;->val$pending:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$3;->val$pending:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/mediatek/notification/NotificationManagerPlus$3;->val$pending:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method
