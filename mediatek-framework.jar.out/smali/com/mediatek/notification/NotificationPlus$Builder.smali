.class public Lcom/mediatek/notification/NotificationPlus$Builder;
.super Ljava/lang/Object;
.source "NotificationPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/notification/NotificationPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNotification:Lcom/mediatek/notification/NotificationPlus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Lcom/mediatek/notification/NotificationPlus;

    invoke-direct {v0, p1}, Lcom/mediatek/notification/NotificationPlus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    .line 197
    return-void
.end method


# virtual methods
.method public create()Lcom/mediatek/notification/NotificationPlus;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    return-object v0
.end method

.method public setCancelable(Z)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "cancelable"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.cancel.enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "message"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.content.text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.name.negative"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.intent.negative"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.name.neutral"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.intent.neutral"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    return-object p0
.end method

.method public setOnCancelListener(Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "pendingIntent"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.cancel.intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "name"
    .parameter "pendingIntent"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.name.positive"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.button.intent.positive"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;
    .locals 2
    .parameter "title"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/notification/NotificationPlus$Builder;->mNotification:Lcom/mediatek/notification/NotificationPlus;

    iget-object v0, v0, Lcom/mediatek/notification/NotificationPlus;->mIntent:Landroid/content/Intent;

    const-string v1, "mediatek.intent.extra.content.title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    return-object p0
.end method
