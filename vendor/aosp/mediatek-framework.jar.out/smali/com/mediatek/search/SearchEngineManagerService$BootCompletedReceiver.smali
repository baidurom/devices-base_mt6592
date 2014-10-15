.class final Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/SearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/search/SearchEngineManagerService;


# direct methods
.method private constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 130
    new-instance v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;-><init>(Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;)V

    invoke-virtual {v0}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->start()V

    .line 140
    return-void
.end method
