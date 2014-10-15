.class Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    #getter for: Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->access$200(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    #calls: Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V
    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->access$100(Lcom/mediatek/search/SearchEngineManagerService;)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    #getter for: Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->access$200(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;

    iget-object v2, p0, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver$1;->this$1:Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    iget-object v2, v2, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method
