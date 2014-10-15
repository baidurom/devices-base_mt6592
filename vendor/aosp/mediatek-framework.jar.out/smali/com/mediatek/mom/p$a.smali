.class Lcom/mediatek/mom/p$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mediatek/mom/p;


# direct methods
.method private constructor <init>(Lcom/mediatek/mom/p;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mediatek/mom/p$a;->a:Lcom/mediatek/mom/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mom/p;Lcom/mediatek/mom/p$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p$a;-><init>(Lcom/mediatek/mom/p;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    const-string v0, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mediatek/mom/p$a;->a:Lcom/mediatek/mom/p;

    invoke-static {v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/mom/p;)V

    .line 137
    :cond_0
    return-void
.end method
